unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, posUtils, posControls, posButtons, posStuffs,
  mnXMLRttiProfile, posForms,
  posTypes, ExtCtrls, posPanels, posLists, posGrids;

type
  TForm1 = class(TForm)
    Stuffs: TposStuffs;
    POSGrid1: TposGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  aStuff: TposButtonStuff;
  i: Integer;
  aItems: TposStuffItems;
begin
  aItems := TposStuffItems.Create(Stuffs);
  Stuffs.Columns := 2;

  aStuff := TposButtonStuff.Create;
  aStuff.Caption := 'Ok';
  aItems.Add(aStuff);

  aStuff := TposButtonStuff.Create;
  aStuff.Caption := 'Cancel';
  aStuff.Size := 150;
  aItems.Add(aStuff);

  aStuff := TposButtonStuff.Create;
  aStuff.Caption := 'Save';
  aItems.Add(aStuff);

  aStuff := TposButtonStuff.Create;
  aStuff.Caption := 'Ignore';
  aItems.Add(aStuff);

  aStuff := TposButtonStuff.Create;
  aStuff.Caption := 'Set';
  aItems.Add(aStuff);

  aStuff := TposButtonStuff.Create;
  aStuff.Caption := 'Get';
  aItems.Add(aStuff);

  for i := 0 to 20 do
  begin
    aStuff := TposButtonStuff.Create;
    aStuff.Caption := 'ITEM ' + IntToStr(i);
    aItems.Add(aStuff);
  end;
  Stuffs.Items := aItems;
end;

end.

