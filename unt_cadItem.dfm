object frmCadItem: TfrmCadItem
  Left = 0
  Top = 0
  Caption = 'frmCadItem'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Name: TLabel
    Left = 24
    Top = 58
    Width = 43
    Height = 21
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 23
    Top = 106
    Width = 67
    Height = 21
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object txtNomeItem: TEdit
    Left = 96
    Top = 56
    Width = 241
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 56
    Top = 184
    Width = 99
    Height = 25
    Caption = 'Cadastrar Item'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtDesricaoItem: TEdit
    Left = 96
    Top = 104
    Width = 241
    Height = 23
    TabOrder = 2
  end
  object conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=dbestoque;Data Source=DESKTOP-BAG7VMC\S' +
      'QLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 496
    Top = 280
  end
  object qryCadItem: TADOQuery
    Connection = conexao
    Parameters = <
      item
        Name = 'nome_item'
        Size = -1
        Value = Null
      end
      item
        Name = 'desricao_item'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @nome_item varchar(200)  = :nome_item, '
      '@descricao_item varchar(200)= :desricao_item ,'
      '@cod_item INT ;'
      ''
      'INSERT INTO dbestoque.dbo.tab_item'
      '(nome_item,descricao_item)'
      'values ('
      '@nome_item, @descricao_item'
      ')'
      ''
      ''
      ''
      
        'SELECT TOP 1 @cod_item  = tp.cod_item FROM dbestoque.dbo.tab_pre' +
        'co as tp'
      'ORDER BY tp.cod_item DESC'
      ''
      ''
      'SELECT @cod_item AS cod_item')
    Left = 408
    Top = 280
  end
end
