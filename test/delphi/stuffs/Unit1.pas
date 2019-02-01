unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, posUtils, posControls, posButtons, posStuffs,
  mnXMLRttiProfile, posTypes, ExtCtrls, posPanels, posLists, posGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Stuffs: TposStuffs;
    Shape1: TShape;
    ListBox1: TListBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure StuffsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    ACounter:Integer;
    procedure ClickNow;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type
  TMyButtonStuff =class(TposButtonStuff)
  public
    procedure Click; override;
  end;
  
procedure TForm1.Button1Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure TForm1.ClickNow;
begin
  ListBox1.Items.Add(IntToStr(ACounter));
  Inc(ACounter);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  aStuff: TMyButtonStuff;
  i: Integer;
  aItems: TposStuffItems;
begin
  aItems := TposStuffItems.Create(Stuffs);

  aStuff := TMyButtonStuff.Create;
  aStuff.Caption := 'Ok';
  aItems.Add(aStuff);

  aStuff := TMyButtonStuff.Create;
  aStuff.Caption := 'Cancel';
  aStuff.Size := 150;
  aItems.Add(aStuff);

  aStuff := TMyButtonStuff.Create;
  aStuff.Caption := 'Save';
  aItems.Add(aStuff);

  aStuff := TMyButtonStuff.Create;
  aStuff.Caption := 'Ignore';
  aItems.Add(aStuff);

  aStuff := TMyButtonStuff.Create;
  aStuff.Caption := 'Set';
  aItems.Add(aStuff);

  aStuff := TMyButtonStuff.Create;
  aStuff.Caption := 'Get';
  aItems.Add(aStuff);

  for i := 0 to 20 do
  begin
    aStuff := TMyButtonStuff.Create;
    aStuff.Caption := 'ITEM ' + IntToStr(i);
    aItems.Add(aStuff);
  end;
  Stuffs.Items := aItems;
end;

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.StuffsClick(Sender: TObject);
begin
  //
end;

{ TMyButtonStuff }

procedure TMyButtonStuff.Click;
begin
  inherited;
  Form1.ClickNow;
end;

end.

