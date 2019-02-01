unit Unit1; 

interface

{$IFDEF FPC}
{$mode delphi}
{$ENDIF}

uses
  Windows, Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, posButtons, posTypes,
  posGrids, posKeyboards, posStuffs, StdCtrls, Menus, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    POSButton1: TPOSButton;
    POSGrid1: TPOSGrid;
    POSKeyboard1: TPOSKeyboard;
    Stuffs: TposStuffs;
    procedure FormCreate(Sender: TObject);
    procedure POSButton1Click(Sender: TObject);
    procedure POSButton2Click(Sender: TObject);
    procedure POSGrid1Click(Sender: TObject);
  private
  public
    ACounter:Integer;
    procedure ClickNow;
    procedure Paint; override;
  end;

var
  Form1: TForm1; 

implementation

type

  { TMyButtonStuff }

  TMyButtonStuff =class(TposButtonStuff)
  public
    //function Draw(vCanvas: TCanvas; vRect: TRect; vColor: TColor; vStates: TposDrawStates): Boolean; override;
    procedure Click; override;
  end;


{$R *.lfm}

{ TForm1 }

procedure TForm1.POSGrid1Click(Sender: TObject);
begin

end;

procedure TForm1.Paint;
var
  Si:TSize;
begin
  inherited Paint;
end;

procedure TForm1.POSButton2Click(Sender: TObject);
begin

end;

procedure TForm1.POSButton1Click(Sender: TObject);
begin
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
  aStuff.Color := clGreen;
  aStuff.Size := 150;
  aItems.Add(aStuff);

  {aStuff := TMyButtonStuff.Create;
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
  end;}

  Stuffs.Items := aItems;
end;

procedure TForm1.ClickNow;
begin
  //ListBox1.Items.Add(IntToStr(ACounter));
  Inc(ACounter);
end;
{
function TMyButtonStuff.Draw(vCanvas: TCanvas; vRect: TRect; vColor: TColor; vStates: TposDrawStates): Boolean;
begin
  Result := True;
  vCanvas.Brush.Color := clGreen;
  vCanvas.Rectangle(vRect)
end;
}
procedure TMyButtonStuff.Click;
begin
  inherited;
  Form1.ClickNow;
end;

end.

