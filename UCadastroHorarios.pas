unit UCadastroHorarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, System.Masks, System.TimeSpan,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, IBX.IBCustomDataSet,
  Vcl.Samples.Calendar;

type
  TfrmPrincipal = class(TForm)
    lblData: TLabel;
    edtData: TDBEdit;
    lblManhaEntrada: TLabel;
    edtManhaEntrada: TDBEdit;
    lblManhaSaida: TLabel;
    edtManhaSaida: TDBEdit;
    lblTardeEntrada: TLabel;
    edtTardeEntrada: TDBEdit;
    lblTardeSaida: TLabel;
    edtTardeSaida: TDBEdit;
    DBGrid1: TDBGrid;
    btnNovo: TButton;
    btnGravar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    lblObservacao: TLabel;
    dtSet: TIBDataSet;
    dtSetDATA: TDateField;
    dtSetMANHA_ENTRADA: TTimeField;
    dtSetMANHA_SAIDA: TTimeField;
    dtSetTARDE_ENTRADA: TTimeField;
    dtSetTARDE_SAIDA: TTimeField;
    dtSetTOTAL_DIARIO: TTimeField;
    dtSetOBSERVACAO: TIBStringField;
    dtSource: TDataSource;
    DBMemo1: TDBMemo;
    lblHoje: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  totalMa: TTime;
  totalTa: TTime;
  totalDi: Ttime;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
  begin
    dtSet.Cancel;
  end;

procedure TfrmPrincipal.btnExcluirClick(Sender: TObject);
  begin
    dtSet.Delete;
    UDM.DataModule1.TRSConectaBanco.Commit;
    dtSet.Active := False;
    dtSet.Active := True;
  end;

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
  var manhaEntrada: Ttime;
      manhaSaida:   TTime;
      tardeEntrada: Ttime;
      tardeSaida:   Ttime;
      data:         TDate;

  begin
    data         := StrToDate(edtData.text);
    manhaEntrada := StrToTime(edtManhaEntrada.text);
    manhaSaida   := StrToTime(edtManhaSaida.Text);
    tardeEntrada := StrToTime(edtTardeEntrada.Text);
    tardeSaida   := StrToTime(edtTardeSaida.Text);
    totalMa := manhaSaida-manhaEntrada;
    totalTa := tardeSaida-tardeEntrada;
    totalDi := totalMa+TotalTa;
    //edtTotalDiario.Text := TimeToStr(totalDi);
    dtsetTOTAL_DIARIO.Text := TimeToStr(totalDi);

    //dtSet.Post;
    dtSet.Append;
    UDM.DataModule1.TRSConectaBanco.Commit;
    dtSet.Active := False;
    dtSet.Active := True;
  end;

procedure TfrmPrincipal.btnNovoClick(Sender: TObject);
  begin
   dtSet.Insert;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  var hoje: TDateTime;
  begin
    hoje := Date();
    lblHoje.Caption := formatdatetime('dddd"," d "de" mmmm "de" yyyy',hoje);
  end;

end.


































