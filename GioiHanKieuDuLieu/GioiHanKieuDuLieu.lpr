program GioiHanKieuDuLieu;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

begin
  WriteLn('Gia tri nho nhat cua kieu Byte la: ', Low(Byte), ' va gia tri lon nhat la: ', High(Byte), ' Dung luong chiem RAM la: ', SizeOf(Byte));
  WriteLn('Gia tri nho nhat cua kieu Int64 la: ', Low(Int64), ' va gia tri lon nhat la: ', High(Int64), ' Dung luong chiem RAM la: ', SizeOf(Int64));
  ReadLn;
end.

