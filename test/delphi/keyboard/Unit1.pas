unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, posControls, posButtons, posEdits, posGrids, posLists, posStuffs,
  posKeyboards, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    posKeyboard1: TposKeyboard;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure posKeyboard1ButtonPress(Sender: TObject; Value: String);
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
begin
 posKeyboard1.ChooseLanguageByName('Arabic');
end;

procedure TForm1.posKeyboard1ButtonPress(Sender: TObject; Value: String);
begin
  Label1.Caption := Label1.Caption + Value; 
end;

end.

