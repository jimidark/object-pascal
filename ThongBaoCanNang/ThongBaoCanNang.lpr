program ThongBaoCanNang;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils
  { you can add units after this };

var ChieuCao: Double;
    CanNang: Double;
    CanNangLyTuong: Double;
begin
  Write('Chieu cao cua ban hien tai la bao nhieu? (m): ');
  ReadLn(ChieuCao);

  Write('Can nang cua ban hien tai la bao nhieu? (kg): ');
  ReadLn(CanNang);

  if (ChieuCao >= 1.4) then
     CanNangLyTuong:= (ChieuCao - 1) * 100
  else
    CanNangLyTuong:= ChieuCao * 20;

  if (ChieuCao < 0.4) or (ChieuCao > 2.5) or (CanNang < 3) or (CanNang > 200) then
       begin
         WriteLn('Gia tri khong hop le');
         WriteLn('Xin nhap vao gia tri ChieuCao va CanNang hop ly');
       end
  else
      if (CanNangLyTuong = CanNang) then
         WriteLn('Can nang cua ban hop ly. Ko can chinh sua gi them')
      else
        if (CanNang < CanNangLyTuong) then
           WriteLn('Ban nen tang ', Format('%.2f', [CanNangLyTuong - CanNang]), ' kgs')
        else
          WriteLn('Ban nen giam ', Format('%.2f', [CanNang - CanNangLyTuong]), ' kgs');
  ReadLn;
end.

