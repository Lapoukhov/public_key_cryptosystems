unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Math;

type
  TForm2 = class(TForm)
    labelP: TLabel;
    editP: TEdit;
    editQ: TEdit;
    editB: TEdit;
    panelParametry: TPanel;
    labelQ: TLabel;
    labelB: TLabel;
    bitbtnP: TBitBtn;
    bitbtnQ: TBitBtn;
    bitbtnB: TBitBtn;
    labelParametry: TLabel;
    OpenDialog: TOpenDialog;
    labelPlainText: TLabel;
    memoPlainText: TMemo;
    bitbtnDownload: TBitBtn;
    bitbtnReset: TBitBtn;
    memoCipherText: TMemo;
    labelCipherText: TLabel;
    bitbtnCipherText: TBitBtn;
    bitbtnDecipherText: TBitBtn;
    labelDecipherText: TLabel;
    memoDecipherText: TMemo;
    procedure bitbtnDecipherTextClick(Sender: TObject);
    procedure bitbtnCipherTextClick(Sender: TObject);
    procedure bitbtnResetClick(Sender: TObject);
    procedure bitbtnDownloadClick(Sender: TObject);
    procedure bitbtnBClick(Sender: TObject);
    procedure bitbtnQClick(Sender: TObject);
    procedure bitbtnPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  P,Q,B,N,LengthArr,Size,x1,y1,y0: integer;
  PlainText,CipherText,DecipherText: string;
  ArrP: array of byte;
  ArrC: array of integer;

implementation

{$R *.dfm}

procedure SaveToFile(fName,text:string);
var f:textfile;
begin
  assignfile(f,fName);
  rewrite(f);
  write(f,text);
  closefile(f);
end;

function Prost (n: integer): boolean;
var  r: integer;
begin
  if n<2 then result:=false
  else
  begin
    r := 2;
    result:=true;
    while (r*r<=n)and result do
      if n mod r = 0 then
        result:=false
      else inc(r);
  end;
end;

procedure TForm2.bitbtnBClick(Sender: TObject);
begin
  if editB.Text <>'' then
  begin
    N:=P*Q;
    if N > 255 then
    begin
      B:=StrToInt(editB.Text);
      if B >= N then
      begin
        ShowMessage('ОШИБКА: значение B должно быть меньше N=P*Q !');
        editB.Text:='';
        B:=0;
      end
      else
        if B <= 0 then
        begin
          ShowMessage('ОШИБКА: значение B меньше 0 !');
          editB.Text:='';
          B:=0;
        end;
    end
    else
      begin
        ShowMessage('ОШИБКА: значение N=P*Q должно быть больше 255 !');
        editB.Text:='';
        editP.Text:='';
        editQ.Text:='';
        B:=0;
        P:=0;
        Q:=0;
      end;
  end
  else
    ShowMessage('ОШИБКА: пустое поле !');
end;

procedure TForm2.bitbtnPClick(Sender: TObject);
begin
  if editP.Text <> '' then
    begin
    P:=StrToInt(editP.Text);
    if not(Prost(P)) then
    begin
      ShowMessage('ОШИБКА: введенное число не является простым!');
      editP.Text:='';
      P:=0;
    end;
    if P<>0 then
      if P mod 4 <> 3 then
      begin
        ShowMessage('ОШИБКА: остаток от деления на 4 не равен 3!');
        editP.Text:='';
        P:=0;
      end;
  end
  else
    ShowMessage('ОШИБКА: пустое поле !');
end;

procedure TForm2.bitbtnQClick(Sender: TObject);
begin
  if editQ.Text <> '' then
  begin
    Q:=StrToInt(editQ.Text);
    if not(Prost(Q)) then
    begin
      ShowMessage('ОШИБКА: введенное число не является простым!');
      editQ.Text:='';
      Q:=0;
    end;
    if Q<>0 then
      if Q mod 4 <> 3 then
      begin
        ShowMessage('ОШИБКА: остаток от деления на 4 не равен 3!');
        editQ.Text:='';
        Q:=0;
      end;
  end
  else
    ShowMessage('ОШИБКА: пустое поле !');
end;

procedure TForm2.bitbtnDownloadClick(Sender: TObject);
var F: file of byte;
    B: byte;
begin
  if OpenDialog.Execute then
  begin
    memoPlainText.Text:='';
    PlainText:='';
    AssignFile(F,OpenDialog.FileName);
    Reset(F);
    LengthArr:=0;
    Size:=Filesize(F);
    SetLength(ArrP,Size);
    While Not Eof(F) Do
    begin
      Read(F, B);
      PlainText:=PlainText+IntToStr(B);
      ArrP[LengthArr]:=B;
      inc(LengthArr);
    end;
    CloseFile(F);
    memoPlainText.Lines[0]:=PlainText;
    SaveToFile('PlainText.txt',PlainText);
  end;
end;

procedure TForm2.bitbtnCipherTextClick(Sender: TObject);
var i,j,ci: integer;
begin
  CipherText:='';
  SetLength(ArrC,Size);
  for i:= 0 to LengthArr-1 do
  begin
    ci:=ArrP[i]*(ArrP[i]+B) mod N;
    ArrC[i]:=ci;
  end;
  CipherText:='';
  for i:= 0 to LengthArr-1 do
    CipherText:=CipherText+IntToStr(ArrC[i])+' ';
  memoCipherText.Lines[0]:=CipherText;
end;

function FastEXP (Number, Stepen, modN: integer): integer;
var
   x: integer;
begin
   x := 1;
   while stepen <> 0 do
   begin
      while (stepen mod 2) = 0 do
      begin
         stepen := stepen div 2;
         number := (number * number) mod modN;
      end;
      stepen := stepen - 1;
      x := (x * number) mod modN;
   end;
   result := x;
end;

procedure euclid;
var
  d0,d1,x0, t, d2, x2, y2 : Integer;
begin
  d0 := p;
  d1 := q;
  x0 := 1;
  x1 := 0;
  y0 := 0;
  y1 := 1;
  while d1>1 do
  begin
    t := d0 div d1;
    d2 := d0 mod d1;
    x2 := x0-t*x1;
    y2 :=y0-t*y1;
    d0 :=d1; d1:=d2;
    x0:=x1; x1:=x2;
    y0 := y1; y1 := y2;
  end;
end;

function addMod (N,modn: integer) : integer;
begin
   result := N mod modN;
   if N < 0 then
      result := modN + result;
end;

procedure TForm2.bitbtnDecipherTextClick(Sender: TObject);
var i,j,D,di,mp,mq,ap,aq,d1,d2,d3,d4: integer;
    ArrD_1,ArrD_2,ArrD_3,ArrD_4: array of integer;
    var f:file of byte;
begin
  DecipherText:='';
  SetLength(ArrD_1,Size);
  SetLength(ArrD_2,Size);
  SetLength(ArrD_3,Size);
  SetLength(ArrD_4,Size);
  assignfile(f,'DecipherText.txt');
  reset(f);
  for i:= 0 to LengthArr-1 do
  begin
    D:=((B*B)+(4*ArrC[i])) mod N;

    mp := FastEXP(D,(P+1) div 4,P);
    mq := FastEXP(D,(Q+1) div 4,Q);
    euclid;
    ap := x1*p;
    aq := y1*q;

    d1 := addmod(aQ*mp + aP*mq,n);
    d2 := n-d1;
    d3 := addmod(aQ*mp - aP*mq,n);
    d4 := n-d3;

    if ((d1-b) mod 2 =0) then
      ArrD_1[i] := ((d1-b) div 2) mod n
    else
      ArrD_1[i] := ((d1-b+n) div 2) mod n;

    if ((d2-b) mod 2 =0) then
      ArrD_2[i] := ((d2-b) div 2) mod n
    else
      ArrD_2[i] := ((d2-b+n) div 2) mod n;

    if ((d3-b) mod 2 =0) then
      ArrD_3[i] := ((d3-b) div 2) mod n
    else
      ArrD_3[i] := ((d3-b+n) div 2) mod n;

    if ((d4-b) mod 2 =0) then
      ArrD_4[i] := ((d4-b) div 2) mod n
    else
      ArrD_4[i] := ((d4-b+n) div 2) mod n;

    if ArrD_1[i] < 0 then
      ArrD_1[i] := ArrD_1[i] + n;
    if ArrD_2[i] < 0 then
      ArrD_2[i] := ArrD_2[i] + n;
    if ArrD_3[i] < 0 then
      ArrD_3[i] := ArrD_3[i] + n;
    if ArrD_4[i] < 0 then
      ArrD_4[i] := ArrD_4[i] + n;

    DecipherText:=DecipherText+IntToStr(ArrD_1[i])+' '+IntToStr(ArrD_2[i])+' '+IntToStr(ArrD_3[i])+' '+IntToStr(ArrD_4[i])+' | ';
    write(f,ArrD_1[i]);
    write(f,ArrD_2[i]);
    write(f,ArrD_3[i]);
    write(f,ArrD_4[i]);
  end;
  closefile(f);
  memoDecipherText.Lines[0]:=DecipherText;
end;

procedure TForm2.bitbtnResetClick(Sender: TObject);
begin
  PlainText:='';
  memoPlainText.Text:='';
  CipherText:='';
  memoCipherText.Text:='';
  DecipherText:='';
  memoDecipherText.Text:='';
  N:=0;
  P:=0; editP.Text:='';
  Q:=0; editQ.Text:='';
  B:=0; editB.Text:='';
end;

end.
