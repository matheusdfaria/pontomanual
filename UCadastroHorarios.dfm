object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Horarios'
  ClientHeight = 558
  ClientWidth = 634
  Color = clMenuBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblData: TLabel
    Left = 26
    Top = 5
    Width = 23
    Height = 13
    Caption = 'Data'
    Color = clWindowFrame
    FocusControl = edtData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblManhaEntrada: TLabel
    Left = 26
    Top = 51
    Width = 38
    Height = 13
    Caption = 'Entrada'
    FocusControl = edtManhaEntrada
  end
  object lblManhaSaida: TLabel
    Left = 96
    Top = 51
    Width = 26
    Height = 13
    Caption = 'Saida'
    FocusControl = edtManhaSaida
  end
  object lblTardeEntrada: TLabel
    Left = 168
    Top = 51
    Width = 38
    Height = 13
    Caption = 'Entrada'
    FocusControl = edtTardeEntrada
  end
  object lblTardeSaida: TLabel
    Left = 236
    Top = 51
    Width = 26
    Height = 13
    Caption = 'Saida'
    FocusControl = edtTardeSaida
  end
  object lblObservacao: TLabel
    Left = 26
    Top = 97
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    Color = clCream
    ParentColor = False
  end
  object lblHoje: TLabel
    Left = 464
    Top = 8
    Width = 145
    Height = 13
    Caption = 'lblHoje'
  end
  object edtData: TDBEdit
    Left = 26
    Top = 24
    Width = 66
    Height = 21
    DataField = 'DATA'
    DataSource = dtSource
    MaxLength = 10
    TabOrder = 0
  end
  object edtManhaEntrada: TDBEdit
    Left = 26
    Top = 70
    Width = 54
    Height = 21
    DataField = 'MANHA_ENTRADA'
    DataSource = dtSource
    MaxLength = 8
    TabOrder = 1
  end
  object edtManhaSaida: TDBEdit
    Left = 96
    Top = 70
    Width = 54
    Height = 21
    DataField = 'MANHA_SAIDA'
    DataSource = dtSource
    MaxLength = 8
    TabOrder = 2
  end
  object edtTardeEntrada: TDBEdit
    Left = 168
    Top = 70
    Width = 54
    Height = 21
    DataField = 'TARDE_ENTRADA'
    DataSource = dtSource
    MaxLength = 8
    TabOrder = 3
  end
  object edtTardeSaida: TDBEdit
    Left = 236
    Top = 70
    Width = 54
    Height = 21
    DataField = 'TARDE_SAIDA'
    DataSource = dtSource
    MaxLength = 8
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 26
    Top = 232
    Width = 583
    Height = 304
    DataSource = dtSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MANHA_ENTRADA'
        Title.Caption = 'Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MANHA_SAIDA'
        Title.Caption = 'Saida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARDE_ENTRADA'
        Title.Caption = 'Entrada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARDE_SAIDA'
        Title.Caption = 'Saida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_DIARIO'
        Title.Caption = 'Total Diario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVACAO'
        Title.Caption = 'Observa'#231#227'o'
        Width = 160
        Visible = True
      end>
  end
  object btnNovo: TButton
    Left = 26
    Top = 189
    Width = 54
    Height = 27
    Caption = 'Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnNovoClick
  end
  object btnGravar: TButton
    Left = 96
    Top = 189
    Width = 54
    Height = 27
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btnGravarClick
  end
  object btnCancelar: TButton
    Left = 168
    Top = 189
    Width = 54
    Height = 27
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = btnCancelarClick
  end
  object btnExcluir: TButton
    Left = 236
    Top = 189
    Width = 54
    Height = 27
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = btnExcluirClick
  end
  object DBMemo1: TDBMemo
    Left = 26
    Top = 116
    Width = 264
    Height = 59
    DataField = 'OBSERVACAO'
    DataSource = dtSource
    TabOrder = 10
  end
  object dtSet: TIBDataSet
    Database = DataModule1.ConectaBanco
    Transaction = DataModule1.TRSConectaBanco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from HORARIOS'
      'where'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into HORARIOS'
      
        '  (DATA, MANHA_ENTRADA, MANHA_SAIDA, TARDE_ENTRADA, TARDE_SAIDA,' +
        ' TOTAL_DIARIO, '
      '   OBSERVACAO)'
      'values'
      
        '  (:DATA, :MANHA_ENTRADA, :MANHA_SAIDA, :TARDE_ENTRADA, :TARDE_S' +
        'AIDA, :TOTAL_DIARIO, '
      '   :OBSERVACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  DATA,'
      '  MANHA_ENTRADA,'
      '  MANHA_SAIDA,'
      '  TARDE_ENTRADA,'
      '  TARDE_SAIDA,'
      '  TOTAL_DIARIO,'
      '  OBSERVACAO'
      'from HORARIOS'
      'where'
      '  DATA = :DATA')
    SelectSQL.Strings = (
      'select * from HORARIOS order by data'
      '')
    ModifySQL.Strings = (
      'update HORARIOS'
      'set'
      '  DATA = :DATA,'
      '  MANHA_ENTRADA = :MANHA_ENTRADA,'
      '  MANHA_SAIDA = :MANHA_SAIDA,'
      '  TARDE_ENTRADA = :TARDE_ENTRADA,'
      '  TARDE_SAIDA = :TARDE_SAIDA,'
      '  TOTAL_DIARIO = :TOTAL_DIARIO,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  DATA = :OLD_DATA')
    ParamCheck = True
    UniDirectional = False
    Left = 136
    object dtSetDATA: TDateField
      FieldName = 'DATA'
      Origin = '"HORARIOS"."DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object dtSetMANHA_ENTRADA: TTimeField
      FieldName = 'MANHA_ENTRADA'
      Origin = '"HORARIOS"."MANHA_ENTRADA"'
      EditMask = '!90:00:00;1;_'
    end
    object dtSetMANHA_SAIDA: TTimeField
      FieldName = 'MANHA_SAIDA'
      Origin = '"HORARIOS"."MANHA_SAIDA"'
      EditMask = '!90:00:00;1;_'
    end
    object dtSetTARDE_ENTRADA: TTimeField
      FieldName = 'TARDE_ENTRADA'
      Origin = '"HORARIOS"."TARDE_ENTRADA"'
      EditMask = '!90:00:00;1;_'
    end
    object dtSetTARDE_SAIDA: TTimeField
      FieldName = 'TARDE_SAIDA'
      Origin = '"HORARIOS"."TARDE_SAIDA"'
      EditMask = '!90:00:00;1;_'
    end
    object dtSetTOTAL_DIARIO: TTimeField
      FieldName = 'TOTAL_DIARIO'
      Origin = '"HORARIOS"."TOTAL_DIARIO"'
      EditMask = '!90:00:00;1;_'
    end
    object dtSetOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"HORARIOS"."OBSERVACAO"'
      Size = 80
    end
  end
  object dtSource: TDataSource
    DataSet = dtSet
    Left = 168
  end
end
