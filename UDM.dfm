object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 275
  Width = 340
  object ConectaBanco: TIBDatabase
    Connected = True
    DatabaseName = 'E:\Projects\PONTOMANUAL'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = TRSConectaBanco
    ServerType = 'IBServer'
    Left = 64
    Top = 64
  end
  object TRSConectaBanco: TIBTransaction
    DefaultDatabase = ConectaBanco
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 160
    Top = 64
  end
end
