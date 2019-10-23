unit uQuentinhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls;

type
  TfrmQuentinhas = class(TForm)
    Label1: TLabel;
    gpNovoPedido: TGroupBox;
    pnlTop: TPanel;
    Label2: TLabel;
    cbFuncionario: TComboBox;
    dtpDataQ: TDateTimePicker;
    Label3: TLabel;
    edtValor: TEdit;
    Label4: TLabel;
    memoDescricao: TMemo;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnSair: TButton;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   class procedure ExibirQuentinhas(pOwnwer: Tform);
  end;

var
  frmQuentinhas: TfrmQuentinhas;

implementation

{$R *.dfm}

uses uTabGlobal;

{ TfrmQuentinhas }

class procedure TfrmQuentinhas.ExibirQuentinhas(pOwnwer: Tform);
var
  frmQuentinhas : TfrmQuentinhas;
begin


  try
    frmQuentinhas := TfrmQuentinhas.Create(pOwnwer);
    frmQuentinhas.ShowModal;
  finally
    if assigned(frmQuentinhas) then
    FreeAndNil(frmQuentinhas);
  end;


end;

procedure TfrmQuentinhas.FormCreate(Sender: TObject);
begin
  memoDescricao.Text := '';
end;

end.
