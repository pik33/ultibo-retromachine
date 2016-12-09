program Project1;

{$mode objfpc}{$H+}

uses
  GlobalConfig,
  GlobalConst,
  GlobalTypes,
  Platform,
  Threads,
  Framebuffer,
  BCM2837,
  SysUtils,
  Classes,
  FileSystem,  {Include the file system core and interfaces}
  FATFS,       {Include the FAT file system driver}
  MMC,         {Include the MMC/SD core to access our SD card}
  BCM2710,
  Ultibo,
  Keyboard,    {Keyboard uses USB so that will be included automatically}
  Mouse,
  DWCOTG,
  retromalina,
  Unit6502,
  umain;

label p999, p013, p136;

type TBasicLine=array[0..255] of byte;

var s,currentdir,currentdir2:string;
    sr:tsearchrec;
    filenames:array[0..1000,0..1] of string;
    l,i,j,ilf,ild:integer;
    sel:integer=0;
    selstart:integer=0;
    buf:array[0..25] of  byte;
    fn:string;
    fs:integer;
    cia:integer;
    song:word=0;
    songs:word=0;
    init:word;
    atitle,author,copyright:string[32];
    workdir:string;
    pause1a:boolean=true;

    keyboardstatus:array[0..255]of byte;
    currentline:TBasicLine;
    clpointer:byte=0;
    key:byte=0;
    gcx,gcy:integer;
    gc:integer=156;

// ---- procedures

procedure sidopen (var fh:integer);

var i:integer;
    speed:cardinal;
    version,offset,load,startsong,flags:word;
    dump:word;
    il,b:byte;

begin

reset6502;
atitle:='                                ';
author:='                                ';
copyright:='                                ';
fileread(fh,version,2); version:=(version shl 8) or (version shr 8);
fileread(fh,offset,2); offset:=(offset shl 8) or (offset shr 8);
fileread(fh,load,2); load:=(load shl 8) or (load shr 8);
fileread(fh,init,2); init:=(init shl 8) or (init shr 8);
fileread(fh,play,2);  play:=(play shl 8) or (play shr 8);
fileread(fh,songs,2); songs:=(songs shl 8) or (songs shr 8);
fileread(fh,startsong,2); startsong:=(startsong shl 8) or (startsong shr 8);
fileread(fh,speed,4);
speed:=speed shr 24+((speed shr 8) and $0000FF00) + ((speed shl 8) and $00FF0000) + (speed shl 24);
fileread(fh,atitle[1],32);
fileread(fh,author[1],32);
fileread(fh,copyright[1],32);
if version>1 then begin
  fileread(fh,flags,2); flags:=(flags shl 8) or (flags shr 8);
  fileread(fh,dump,2);
  fileread(fh,dump,2);
  b:=0; if load=0 then begin b:=1; fileread(fh,load,2); end;
  end;
for i:=1 to 32 do if byte(atitle[i])=$F1 then atitle[i]:=char(26);
for i:=1 to 32 do if byte(author[i])=$F1 then author[i]:=char(26);
box(18,132,800,600,178);
outtextxyz(18,132,'type: PSID',188,2,2);
outtextxyz(18,164,'version: '+inttostr(version),188,2,2);
outtextxyz(18,196,'offset: ' +inttohex(offset,4),188,2,2);
outtextxyz(18,228,'load: '+inttohex(load,4),188-144*b,2,2);
outtextxyz(18,260,'init: '+inttohex(init,4),188,2,2);
outtextxyz(18,292,'play: '+inttohex(play,4),188,2,2);
outtextxyz(18,324,'songs: '+inttostr(songs),188,2,2);
outtextxyz(18,356,'startsong: '+inttostr(startsong),188,2,2);
outtextxyz(18,388,'speed: '+inttohex(speed,8),188,2,2);
outtextxyz(18,420,'title: '+atitle,188,2,2);
outtextxyz(18,452,'author: '+author,188,2,2);
outtextxyz(18,484,'copyright: '+copyright,188,2,2);
outtextxyz(18,516,'flags: '+inttohex(flags,4),188,2,2);
song:=startsong-1;

//reset6502;
for i:=0 to 65535 do write6502(i,0);
repeat
  il:=fileread(fh,b,1);
  write6502(load,b);
  load+=1;
until il<>1;
fileseek(fh,0,fsfrombeginning);
CleanDataCacheRange($2000000,65536);
i:=lpeek($2060000);
repeat until lpeek($2060000)>(i+4);
jsr6502(song,init);
cia:=read6502($dc04)+256*read6502($dc05);
outtextxyz(18,578,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),188,2,2);
end;


procedure sort;

// A simple bubble sort for filenames

var i,j:integer;
    s,s2:string;

begin
repeat
  j:=0;
  for i:=0 to ilf-2 do
    begin
    if lowercase(filenames[i,0])>lowercase(filenames[i+1,0]) then
      begin
      s:=filenames[i,0]; s2:=filenames[i,1];
      filenames[i,0]:=filenames[i+1,0];
      filenames[i,1]:=filenames[i+1,1];
      filenames[i+1,0]:=s; filenames[i+1,1]:=s2;
      j:=1;
      end;
    end;
until j=0;
end;


procedure dirlist(dir:string);

begin
currentdir2:=dir;
setcurrentdir(currentdir2);
currentdir2:=getcurrentdir;
if copy(currentdir2,length(currentdir2),1)<>'\' then currentdir2:=currentdir2+'\';
box2(897,67,1782,115,36);
box2(897,118,1782,1008,34);
s:=currentdir2;
if length(s)>55 then s:=copy(s,1,55);
l:=length(s);
outtextxyz(1344-8*l,75,s,44,2,2);
ilf:=0;
currentdir:=currentdir2+'*';
if findfirst(currentdir,fadirectory,sr)=0 then
  repeat
  if (sr.attr and faDirectory) = faDirectory then
    begin
    filenames[ilf,0]:=sr.name;
    filenames[ilf,1]:='[DIR]';
    ilf+=1;
    end;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.sid';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.dmp';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);
sort;

box(920,132,840,32,36);
if ilf<26 then ild:=ilf-1 else ild:=26;
for i:=0 to ild do
  begin
  if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
  if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
  if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
  for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
  if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
  if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
  end;
sel:=0; selstart:=0;
box2(897,67,1782,115,36);
s:=currentdir2;
if length(s)>55 then s:=copy(s,1,55);
l:=length(s);
outtextxyz(1344-8*l,75,s,44,2,2);
end;

procedure setcursor(tx,ty:integer);

begin
 lpoke($20600a0,(ty shl 16)+tx);
end;

procedure crlf;

begin
 dpoke($20600a0, 2);
 if dpeek ($20600a2)<34 then dpoke($20600a2, dpeek($20600a2)+1) else scrollup;
end;

procedure print(line:string);

var i:integer;

begin
for i:=1 to length(line) do
  begin
  box(16*dpeek($20600a0),32*dpeek($20600a2),16,32,147);
  putcharz(16*dpeek($20600a0),32*dpeek($20600a2),line[i],156,2,2);
  dpoke($20600a0,dpeek($20600a0)+1);
  if dpeek($20600a0)>111 then
    begin
    dpoke($20600a0,0);
    dpoke($20600a2,dpeek($20600a2)+1);
    if dpeek($20600a2)>34 then
      begin
      scrollup;
      dpoke($20600a2,34);
      end;
    end;
  end;
end;

procedure print(line:TBasicLine);

var i:integer;

begin
i:=0;
repeat
  begin
  box(16*dpeek($20600a0),32*dpeek($20600a2),16,32,147);
  putcharz(16*dpeek($20600a0),32*dpeek($20600a2),chr(line[i]),156,2,2);
  dpoke($20600a0,dpeek($20600a0)+1);
  if dpeek($20600a0)>111 then
    begin
    dpoke($20600a0,0);
    dpoke($20600a2,dpeek($20600a2)+1);
    if dpeek($20600a2)>34 then
      begin
      scrollup;
      dpoke($20600a2,34);
      end;
    end;
  i+=1;
  end;
until (line[i]=0) or (i>255);
end;


procedure plot(arg1,arg2:string);

var arg1i, arg2i:integer;

begin

try
  arg1i:=strtoint(arg1);
  arg2i:=strtoint(arg2);
  if (arg1i>=0) and (arg1i<1792) and (arg2i>=0) and (arg2i<1120) then
    begin
    gcx:=arg1i;
    gcy:=arg2i;
    putpixel(arg1i, arg2i, gc);
    end;
except
  print('ERROR - plot arguments have to be integer. Use plot x,y');
end;
end;

procedure drawto(arg1,arg2:string);

var arg1i, arg2i:integer;

begin

try
  arg1i:=strtoint(arg1);
  arg2i:=strtoint(arg2);
  if (arg1i>=0) and (arg1i<1792) and (arg2i>=0) and (arg2i<1120) then
    begin
    line2 (gcx,gcy, arg1i, arg2i, gc);
    gcx:=arg1i;
    gcy:=arg2i;
    end;
except
  print('ERROR - drawto arguments have to be integer. Use drawto x,y');
end;
end;


procedure bcircle(arg1,arg2,arg3,arg4:string);

var arg1i, arg2i, arg3i, arg4i:integer;

begin
arg4i:=gc;

try
  arg1i:=strtoint(arg1);
  arg3i:=strtoint(arg3);
  arg2i:=strtoint(arg2);
  if arg4<>'' then arg4i:=strtoint(arg4);
  if (arg1i>=0) and (arg1i<1792) and (arg2i>=0) and (arg2i<1120) then
    begin
    fcircle (arg1i, arg2i, arg3i, arg4i);
    end;
except
  print('ERROR - circle arguments have to be integer. Use circle x,y,r[,color] ');

end;
end;

procedure interpret(line:TBasicLine; len:integer);

label p999, p998, p997;

var i:integer;
    command, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8: string;


begin
command:='';
arg1:='';
arg2:='';
arg3:='';
arg4:='';
arg5:='';
arg6:='';
arg7:='';
arg8:='';
i:=0;
while line[i]=32 do i+=1;
if (line[i]>=48) and (line[i]<57) then
  begin
  print('ERROR - programming mode not available yet');
  goto p999;
  end;

while (line[i]>32) and (line[i]<125) do
  begin
  command+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;
  command:=lowercase(command);

while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg1+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0) and (line[i]<>44) then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg2+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0) and (line[i]<>44) then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg3+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0) and (line[i]<>44) then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg4+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0) and (line[i]<>44) then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg5+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0)and (line[i]<>44)then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg6+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0) and (line[i]<>44)then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg7+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

while line[i]=32 do i+=1;
if (line[i]<>44) and (line[i]<>0) and (line[i]<>44) then goto p998 else i+=1;
while line[i]=32 do i+=1;

while (line[i]>32) and (line[i]<125) and (line[i]<>44) do
  begin
  arg8+=chr(line[i]);
  i+=1;
  // todo i has to be <256
  end;

if command='cls' then begin cls(147); lpoke($20600a0,0); goto p999; end;
if (command='plot') or (command='pl.') then begin plot(arg1,arg2); goto p999; end;
if (command='drawto') or (command='dr.') then begin drawto(arg1,arg2); goto p999; end;
if (command='sound') or (command='so.') then begin print('Command: sound'); goto p999; end;
if (command='circle') or (command='ci.') then begin bcircle(arg1,arg2,arg3,arg4); goto p999; end;
goto p997;

p998:
print('ERROR - use "," to separate arguments');
goto p999;

p997:
print('ERROR - unknown command: "');
print(line);
print('"');

p999:
crlf;
end;


begin
initmachine;

fs:=1;

lpoke($206000c,$002040);
lpoke($2060008,0);
lpoke($2060020,1792);
lpoke($2060024,1120);
setataripallette(0);

main1;
pwmbeep;
{
cls(147);
outtextxyz(32,32,'A simple graphic primitives demo',156,2,2);
sleep(1000);
outtextxyz(32,64,'100000 random boxes',156,2,2);
sleep(2000);
for i:=1 to 100000 do box2(random(1792),random(1120),random(1792),random(1120),random(256));
sleep(2000);
cls(147);
outtextxyz(32,64,'10000 random filled circles',156,2,2);
sleep(2000);
for i:=1 to 10000 do fcircle(random(1792),random(1120),random(512),random(256));
sleep(2000);
cls(147);
outtextxyz(32,64,'100000 random circles',156,2,2);
sleep(2000);
for i:=1 to 100000 do circle(random(1792),random(1120),random(512),random(256));
sleep(2000);
cls(147);
outtextxyz(32,64,'1000000 random lines',156,2,2);
sleep(2000);
for i:=1 to 1000000 do line2(random(1792),random(1120),random(1792),random(1120),random(256));
sleep(2000);
}

cls(147);





outtextxyz(32,32,'*** The Retromachine BASIC v.0.01.20161204',156,2,2);
outtextxyz(32,64,'*** 754974720 BASIC bytes free',156,2,2);
outtextxyz(32,128,'READY',156,2,2);
setcursor(2,6);

ThreadSetCPU(ThreadGetCurrent,CPU_ID_0);
threadsleep(1);

for i:=0 to 255 do keyboardstatus[i]:=0;
startreportbuffer;

repeat
  poke($2060028,0);
  main2;
  key:=peek($2060028);
  if key=0 then goto p999;
  if key=141 then goto p013;
  if key=136 then goto p136;
  if key<3 then goto p999;
  if key>124 then goto p999;

  box(16*dpeek($20600a0),32*dpeek($20600a2),16,32,147);
  putcharz(16*dpeek($20600a0),32*dpeek($20600a2),chr(key),156,2,2);

  currentline[clpointer]:=key; //peek($2060028);
  if clpointer<255 then clpointer+=1;

  dpoke($20600a0,dpeek($20600a0)+1);
  if dpeek($20600a0)>111 then
    begin
    dpoke($20600a0,0);
    dpoke($20600a2,dpeek($20600a2)+1);
    if dpeek($20600a2)>34 then
      begin
      scrollup;
      dpoke($20600a2,34);
      end;
    end;
  goto p999;


p136:  //backspace

  if clpointer>0 then clpointer-=1;
  currentline[clpointer]:=0;
  if dpeek($20600a0)>0 then dpoke($20600a0,dpeek($20600a0)-1)

  else
    begin
    if dpeek($20600a2)>0 then
      begin
      dpoke($20600a0,111);
      dpoke($20600a2,dpeek($20600a2)-1);
      end
    else
      begin
      //scrolldown;
      dpoke($20600a2,0);
      dpoke($20600a0,0);
      end;
    end;
  box(16*dpeek($20600a0),32*dpeek($20600a2),16,32,147);

goto p999;


p013: // enter

 crlf;
 interpret(currentline,clpointer);
 crlf;
 print('READY');
 crlf;
 for i:=0 to 255 do currentline[i]:=0;
 clpointer:=0;
 crlf;


p999:

until (peek($2060028)=155);
sleep(10);
stopmachine;
systemrestart(0);
end.

