program ToanTuQuanHe;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

var a, b: Integer;
begin
   Write('Nhap gia tri cho a: ');
   ReadLn(a);

   Write('Nhap gia tri cho b: ');
   ReadLn(b);

   if a > b then
      WriteLn('a > b')
   else if a = b then
      WriteLn('a = b')
   else
      WriteLn('a < b');

   if (a <> b) then
      WriteLn('a <> b');

   if (a >= b) then
      WriteLn('a >= b');

   if (a <= b) then
      WriteLn('a <= b');

   ReadLn;
end.

