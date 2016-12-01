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
  retromalina;
//  umain;


var
il,a,c,i,j:integer;

// sprite positions and deltas for animation
s1x,s1y,s2x,s2y,s3x,s3y,s4x,s4y,s5x,s5y,s6x,s6y,s7x,s7y,s8x,s8y:integer;
s1dx,s1dy,s2dx,s2dy,s3dx,s3dy,s4dx,s4dy,s5dx,s5dy,s6dx,s6dy,s7dx,s7dy,s8dx,s8dy:integer;

times:array[0..59] of int64;
aa,tt,fps,a64, b64:int64;
fh:integer;
buf:array[0..4095] of smallint;
ch:tkeyboardreport;
// ------------------------- init sprite shapes and positions -------------



procedure initsprites;

var i,j,k:integer;

begin
  lpoke($2060040,$00080080); // position
  lpoke($2060044,$00040004); // zoom
  lpoke($2060048,$00100100);
  lpoke($206004c,$00040004);
  lpoke($2060050,$00180180);
  lpoke($2060054,$00040004);
  lpoke($2060058,$00200200);
  lpoke($206005c,$00040004);
  lpoke($2060060,$00280280);
  lpoke($2060064,$00040004);
  lpoke($2060068,$00300300);
  lpoke($206006c,$00040004);
  lpoke($2060070,$00380380);
  lpoke($2060074,$00040004);
  lpoke($2060078,$00400400);
  lpoke($206007c,$00020002);

  // set sprite shapes

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2052000+4*i+128*j,k)  else  lpoke($2052000+4*i+128*j,0);
      end;

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      k:=k shl 8;
      if (i<11) or (i>21) or (j<11) or (j>21) then lpoke($2053000+4*i+128*j,k)  else  lpoke($2053000+4*i+128*j,0);
      end;

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      k:=k shl 16;
      if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2054000+4*i+128*j,k)  else  lpoke($2054000+4*i+128*j,0);
      end;

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      k:=k+k shl 8;
      if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2055000+4*i+128*j,k)  else  lpoke($2055000+4*i+128*j,0);
      end;

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      k:=k+k shl 16;
      if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2056000+4*i+128*j,k)  else  lpoke($2056000+4*i+128*j,0);
      end;

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      k:=k shl 8 + k shl 16;
      if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2057000+4*i+128*j,k)  else  lpoke($2057000+4*i+128*j,0);
      end;

  for i:=0 to 31 do
    for j:=0 to 31 do  begin
      if j<16 then k:=j*16 else k:=(31-j)*16 ;
      if k=0 then k:=8;
      k:=k + k shl 8 + k shl 16;
      if (i<11) or (i>21) or (j<11) or (j>21) then  lpoke($2058000+4*i+128*j,k)  else  lpoke($2058000+4*i+128*j,0);
      end;

s1x:=64;s2x:=64;s3x:=64;s4x:=64;s5x:=64;s6x:=64;s7x:=64;s8x:=64;
s1y:=40;s2y:=40;s3y:=40;s4y:=40;s5y:=40;s6y:=40;s7y:=40;s8y:=40;
s1dx:=1 ;s2dx:=2 ;s3dx:=3 ;s4dx:=4 ;s5dx:=5 ;s6dx:=6 ;s7dx:=7 ;s8dx:=8 ;
s1dy:=1 ;s2dy:=2 ;s3dy:=3 ;s4dy:=4 ;s5dy:=5 ;s6dy:=6 ;s7dy:=7 ;s8dy:=8 ;

end;

// ------------------------- start
begin

while not DirectoryExists('C:\') do
  begin
  Sleep(100);
  end;

DeleteFile('C:\kernel7.img');
RenameFile('C:\kernel7_l.img','C:\kernel7.img');

sleep(100);

initmachine;

lpoke ($2060008,0);
lpoke ($2060020,1792);
lpoke ($2060024,1120);

setataripallette(0);
setataripallette(1);
setataripallette(2);
setataripallette(3);
cls(147);

initsprites;

outtextxyz(128,16,'The Ultibo Retromachine v. 0.03 --- 2016.11.19',156,4,2);
outtextxyz(64,128,'We have Atari ST - like font', 156,2,2);
outtextxyz(64,192,'The font can be scaled',232,8,4);

for i:=0 to 15 do
  for j:=0 to 15 do
    box(64+32*j,320+32*i,32,32,16*i+j);


outtextxyz(64,860,'We have Atari 8-bit - like pallette...', 168,2,2);
outtextxyz(64,900,'... and 8 scalable 32x32 pixel sprites.', 184,2,2);

lpoke($206000c,$002040);   // border
sethidecolor(250,0,$FF);
sethidecolor(44,0,$FF);
sethidecolor(190,0,$FF);
sethidecolor(188,0,$FF);


i:=0;
lpoke($2060000,0);
b64:=clockgettotal;

// set the PWM sound machine

pwmbeep;

sleep(1);
aa:=0;
fh:=fileopen('c:\1.wav',$40);
startreportbuffer;
repeat

a:=lpeek($2060000);
  repeat until lpeek($2060000)>a;
a64:=tim;
  s1x:=s1x+s1dx;
  if s1x>1920-192 then s1dx:=-1;
  if s1x<64 then s1dx:=1;
  s1y:=s1y+s1dy;
  if s1y>1200-168 then s1dy:=-1;
  if s1y<40 then s1dy:=1;
  lpoke($2060040,s1x+65536*s1y);

  s2x:=s2x+s2dx;
  if s2x>1920-192 then s2dx:=-2;
  if s2x<64 then s2dx:=2;
  s2y:=s2y+s2dy;
  if s2y>1200-168 then s2dy:=-2;
  if s2y<40 then s2dy:=2;
  lpoke($2060048,s2x+65536*s2y);

  s3x:=s3x+s3dx;
  if s3x>1920-192 then s3dx:=-3;
  if s3x<64 then s3dx:=3;
  s3y:=s3y+s3dy;
  if s3y>1200-168 then s3dy:=-3;
  if s3y<40 then s3dy:=3;
  lpoke($2060050,s3x+65536*s3y);

  s4x:=s4x+s4dx;
  if s4x>1920-192 then s4dx:=-4;
  if s4x<64 then s4dx:=4;
  s4y:=s4y+s4dy;
  if s4y>1200-168 then s4dy:=-4;
  if s4y<40 then s4dy:=4;
  lpoke($2060058,s4x+65536*s4y);

  s5x:=s5x+s5dx;
  if s5x>1920-192 then s5dx:=-5;
  if s5x<64 then s5dx:=5;
  s5y:=s5y+s5dy;
  if s5y>1200-168 then s5dy:=-5;
  if s5y<40 then s5dy:=5;
  lpoke($2060060,s5x+65536*s5y);

  s6x:=s6x+s6dx;
  if s6x>1920-192 then s6dx:=-6;
  if s6x<64 then s6dx:=6;
  s6y:=s6y+s6dy;
  if s6y>1200-168 then s6dy:=-6;
  if s6y<40 then s6dy:=6;
  lpoke($2060068,s6x+65536*s6y);

  s7x:=s7x+s7dx;
  if s7x>1920-192 then s7dx:=-7;
  if s7x<64 then s7dx:=7;
  s7y:=s7y+s7dy;
  if s7y>1200-168 then s7dy:=-7;
  if s7y<40 then s7dy:=7;
  lpoke($2060070,s7x+65536*s7y);

  s8x:=s8x+s8dx;
  if s8x>1920-64 then s8dx:=-8;
  if s8x<64 then s8dx:=8;
  s8y:=s8y+s8dy;
  if s8y>1200-40 then s8dy:=-8;
  if s8y<40 then s8dy:=8;
  lpoke($2060078,s8x+65536*s8y);

    if (peek($206002b) and 1)>0 then
    begin
    box(64,960,1000,32,147);
    if (peek($206002b) and 2)=0 then outtextxyz(64,960,'Pressed key '+char(peek($2060028))+', key code '+inttohex(lpeek($2060028),8),152,2,2)
    else outtextxyz(64,960,'Pressed special key '+inttostr(peek($2060028))+', key code '+inttohex(lpeek($2060028),8),152,2,2);
    poke($206002b,0);
    end;
    fps:=(100000000*aa) div (clockgettotal-b64);

    box(600,600,950,32,147) ;
    a:= lpeek($3F007600) ;
    if (a and 2)<>0
       then begin
       il:=fileread(fh,buf[0],3840);
       if il<>3840 then begin fileseek(fh,44,0);  fileread(fh,buf[0],3840); end;
       if lpeek($3f00761c)=$c4000000 then
         begin
          for i:=0 to 1919 do slpoke($0205a000+4*i, (buf[i]));
          noiseshaper ( $0205a000);
              CleanDataCacheRange($0205a000,$8000);
    CleanDataCacheRange($02070000,$60000);
         end
       else
         begin
         for i:=0 to 1919 do slpoke($0205c000+4*i,(buf[i])) ;
         noiseshaper ( $0205c000);
         CleanDataCacheRange($0205a000,$8000);
        CleanDataCacheRange($02070000,$60000);
         end;
       lpoke($3F007600,3);    inc(aa);    end;


  for i:=59 downto 1 do times[i]:=times[i-1];
  times[0]:=a64;
  a64:=0;
  for i:=0 to 59 do a64+=times[i];
  a64:=a64 div 60;
  fps:=lpeek($2060000);
  fps:=100000000*fps;
  fps:=fps div (clockgettotal-b64);
  tt:=clockgettotal;
  box(600,320,1000,512,147);
  tt:=clockgettotal-tt;
  outtextxyz(1028,320,inttostr(lpeek($2060000)),26,2,2);
  outtextxyz(600,320,'Frames generated: ', 26,2,2);
  outtextxyz(1028,360,inttostr(a64),42,2,2);
  outtextxyz(600,360,'us per frame: ',42,2,2);
  outtextxyz(600,400,'fps: ',58,2,2);
  outtextxyz(1028,400,floattostr(fps/100),58,2,2);
  outtextxyz(600,440,'us for 1000x512 pixel box:',74,2,2);
  outtextxyz(1028,440,inttostr(tt),74,2,2);
  outtextxyz(600,480,'CPU temperature: ',90,2,2);
  outtextxyz(600,520, 'Audio file handle: ',108,2,2);
  outtextxyz(1028,520,inttostr(fh),108,2,2);
  outtextxyz(600,560, 'DMA control block: ',122,2,2);
  outtextxyz(1028,560, inttohex(lpeek($3f00761c),8),122,2,2);
  outtextxyz(600,600, 'Bytes loaded from file:',138,2,2);
  outtextxyz(1028,600, inttostr(il),138,2,2);



  a:= TemperatureGetCurrent(0) div 1000;
  if a<75 then c:=184
  else if a<80 then c:=232
  else if a<85 then c:=24
  else c:=40;
  outtextxyz(1028,480,inttostr(a)+'C',c,2,2);
  CleanDataCacheRange($3000000,2000000);

  outtextxyz(64,1040,'Press left CTRL to reboot.',15,2,2);



    ch:=getkeyboardreport;

  until ch[0]=1;
//until (peek($2060028)=27); //or (lpeek($60000)>1200);

//cls(143);

systemrestart(0);
end.


