program Project1;

{$mode objfpc}{$H+}

uses
//  RaspberryPi3,
  GlobalConfig,
  GlobalConst,
  GlobalTypes,
  Platform,
  Threads,
  Console,
  Framebuffer,
  BCM2837,
  SysUtils,
  Classes,
  FileSystem,  {Include the file system core and interfaces}
  FATFS,       {Include the FAT file system driver}
  MMC,         {Include the MMC/SD core to access our SD card}
  BCM2710,

  Ultibo;
//  { Add additional units here };


const  PM_RSTC = $3f10001c;
const  PM_WDOG = $3f100024;
const  PM_PASSWORD = $5a000000;
const  PM_RSTC_WRCFG_FULL_RESET = $00000020;

var
 WindowHandle:TWindowHandle;
 SearchRec:TSearchRec;

procedure put32(address, value:integer);

begin
    asm
    ldr r0,address
    ldr r1,value
    str r1,[r0]
    end;
end;

procedure reboot;

begin
put32(PM_WDOG, PM_PASSWORD or 1);
put32(PM_RSTC, PM_PASSWORD or PM_RSTC_WRCFG_FULL_RESET);
end;

begin
WindowHandle:=ConsoleWindowCreate(ConsoleDeviceGetDefault,CONSOLE_POSITION_FULL,True);
ConsoleWindowWriteLn(WindowHandle,'Hello Ultibo!');

ConsoleWindowWriteLn(WindowHandle,'Waiting for drive C:\');
while not DirectoryExists('C:\') do
 begin
  Sleep(1000);
 end;
ConsoleWindowWriteLn(WindowHandle,'C:\ drive is ready');
ConsoleWindowWriteLn(WindowHandle,'');
ConsoleWindowWriteLn(WindowHandle,'Contents of drive C:\');
if FindFirst('C:\*.*',faAnyFile,SearchRec) = 0 then
 begin
  repeat
  ConsoleWindowWriteLn(WindowHandle,'Filename is ' + SearchRec.Name + ' - Size is ' + IntToStr(SearchRec.Size) + ' - Time is ' + DateTimeToStr(FileDateToDateTime(SearchRec.Time)));
  until FindNext(SearchRec) <> 0;
 end;
FindClose(SearchRec);
ConsoleWindowWriteLn(WindowHandle,'');
ConsoleWindowWriteLn(WindowHandle,'Will reboot in 5 seconds!');
ThreadSleep(5 * 1000);
DeleteFile('C:\kernel7.img');
//RenameFile('C:\kernel7_l.img','C:\kernel7.img');
CopyFile('C:\backup\kernel7.img','C:\kernel7.img',false);
reboot;
end.


