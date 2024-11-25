unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
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

ListBox1.Items.Add('BE��KTA�');
ListBox1.Items.Add('GAZ�ANTEP FK');
ListBox1.Items.Add('GALATASARAY');
ListBox1.Items.Add('FENERBAHCE');
ListBox1.Items.Add('TRABZONSPOR');
ListBox1.Items.Add('ESK��EH�RSPOR');
ListBox1.Items.Add('KOCAEL�SPOR');
ListBox1.Items.Add('BA�AK�EH�R FK');
ListBox1.Items.Add('ORDUSPOR');
ListBox1.Items.Add('SAMSUNSPOR');

end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
if (ListBox1.Items.Count<1)then
Button1.Enabled:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (ListBox1.ItemIndex<0) then  // :=-1 de yazsak ayn� �ey demektir.
ShowMessage('EKLENECEK VER� SE��LMED�. L�TFEN SE��N�Z...')
else
begin
ListBox2.Items.Add(ListBox1.Items.Strings[ListBox1.itemindex]);
ListBox1.Items.Delete(ListBox1.ItemIndex);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to ListBox1.Items.Count -1 do begin
ListBox2.Items.Add(ListBox1.Items[i]);
end;
ListBox1.Items.Clear;
Button2.Enabled:=false;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
Label1.Caption:='Se�ilen : ' + IntToStr(ListBox1.ItemIndex+1)+'/'+IntToStr(ListBox1.Items.Count);
end;

end.
