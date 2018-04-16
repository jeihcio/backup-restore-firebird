unit UntBackupRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Combo, Text, Buttons, ExtCtrls, ComCtrls, IBServices;

type
  TFrmBackupRestore = class(TForm)
    pnlPnlBanco: TPanel;
    lbl3: TLabel;
    shp2: TShape;
    PnlPrincipal: TPageControl;
    Backup: TTabSheet;
    Restore: TTabSheet;
    lbl2: TLabel;
    btnSpbBanco: TSpeedButton;
    TxtBanco: TText;
    btnBackup: TBitBtn;
    grpConfigBackup: TGroupBox;
    chkRecoLixo: TCheckBox;
    chkIgnoChec: TCheckBox;
    chkIgnoLimb: TCheckBox;
    chkTransp: TCheckBox;
    chkDetalhes: TCheckBox;
    btnRestaurar: TBitBtn;
    btnSpbArquivo: TSpeedButton;
    txtArqui: TText;
    lbl1: TLabel;
    grpConfigRestore: TGroupBox;
    chkSemShadow: TCheckBox;
    chkDesativarIndices: TCheckBox;
    chkSemValidar: TCheckBox;
    chkUmaTabela: TCheckBox;
    chkSubstituir: TCheckBox;
    chkDetalhes1: TCheckBox;
    MmBackup: TMemo;
    MmRestore: TMemo;
    OpdBase1: TOpenDialog;
    OpdBase2: TOpenDialog;
    dlgSaveSDArquBack: TSaveDialog;
    IBBackupService1: TIBBackupService;
    pnlToolTip: TPanel;
    lblDescr: TLabel;
    IBRestoreService1: TIBRestoreService;
    opdBase3: TOpenDialog;
    IBConfigService1: TIBConfigService;
    procedure FormCreate(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
    procedure PnlPrincipalChange(Sender: TObject);
    procedure btnSpbBancoClick(Sender: TObject);
    procedure btnSpbArquivoClick(Sender: TObject);
    procedure chkRecoLixoMouseMove(Sender: TObject; ShIft: TShIftState; X,
      Y: Integer);
    procedure grpConfigBackupMouseMove(Sender: TObject; ShIft: TShIftState;
      X, Y: Integer);
    procedure chkTranspMouseMove(Sender: TObject; ShIft: TShIftState; X,
      Y: Integer);
    procedure chkIgnoChecMouseMove(Sender: TObject; ShIft: TShIftState; X,
      Y: Integer);
    procedure chkIgnoLimbMouseMove(Sender: TObject; ShIft: TShIftState; X,
      Y: Integer);
    procedure chkDetalhesMouseMove(Sender: TObject; ShIft: TShIftState; X,
      Y: Integer);
    procedure grpConfigRestoreMouseMove(Sender: TObject;
      ShIft: TShIftState; X, Y: Integer);
    procedure chkDesativarIndicesMouseMove(Sender: TObject;
      ShIft: TShIftState; X, Y: Integer);
    procedure chkSemShadowMouseMove(Sender: TObject; ShIft: TShIftState;
      X, Y: Integer);
    procedure chkSemValidarMouseMove(Sender: TObject; ShIft: TShIftState;
      X, Y: Integer);
    procedure chkUmaTabelaMouseMove(Sender: TObject; ShIft: TShIftState;
      X, Y: Integer);
    procedure chkSubstituirMouseMove(Sender: TObject; ShIft: TShIftState;
      X, Y: Integer);
    procedure chkDetalhes1MouseMove(Sender: TObject; ShIft: TShIftState;
      X, Y: Integer);
    procedure PnlPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MmBackupMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlPnlBancoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MmRestoreMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure pBackup();
    Procedure pRestore();
    Procedure pHabilita(BolHab: Boolean);
    Procedure pOptions(cOpt : String);
    Procedure pMostrarOpt(cOpt: String);
    Procedure pToolTip(nCampo: Integer; boolMostra: Boolean = True);
    Function  fValida(StrCpo: String): Boolean ;
    Function  fRepost(BoolResp : Boolean) : String;
    Function  Espacos(IntQtd: Integer): String;
  end;

var
  FrmBackupRestore: TFrmBackupRestore;

  implementation

{$R *.dfm}

procedure TFrmBackupRestore.FormCreate(Sender: TObject);
begin

   PnlPrincipal.ActivePageIndex := 0;

   FrmBackupRestore.Height := 237;
   FrmBackupRestore.Left := (Screen.DesktopWidth - FrmBackupRestore.Width) DIV 2;
   FrmBackupRestore.Top  := (Screen.DesktopHeight - 554) DIV 2;

end;

procedure TFrmBackupRestore.btnBackupClick(Sender: TObject);
begin

   If Not fValida('1') Then
      Exit;

   pBackup();

end;

procedure TFrmBackupRestore.btnRestaurarClick(Sender: TObject);
begin

   If Not fValida('2') Then
      Exit;

   pRestore();

end;

procedure TFrmBackupRestore.PnlPrincipalChange(Sender: TObject);
begin

   If PnlPrincipal.ActivePageIndex = 0 Then
      Begin

         If MmBackup.Visible Then
            FrmBackupRestore.Height := 554
         Else
            FrmBackupRestore.Height := 237;

      End

   Else If PnlPrincipal.ActivePageIndex = 1 Then
      Begin

         If MmRestore.Visible Then
            FrmBackupRestore.Height := 554
         Else
            FrmBackupRestore.Height := 237;

      End;

end;

procedure TFrmBackupRestore.btnSpbBancoClick(Sender: TObject);
begin

   OpdBase1.InitialDir := ExtractFilePath( TxtBanco.Text ) ;

   If OpdBase1.Execute Then
      Begin

         If Trim( OpdBase1.FileName ) <> '' Then
            Begin

               TxtBanco.Text := OpdBase1.FileName;
               fValida('1');

            End;

      End;
   
end;

procedure TFrmBackupRestore.btnSpbArquivoClick(Sender: TObject);
begin

   OpdBase2.InitialDir := ExtractFilePath( TxtArqui.Text ) ;

   If OpdBase2.Execute Then
      Begin

         If Trim( OpdBase2.FileName ) <> '' Then
            Begin

               TxtArqui.Text := OpdBase2.FileName;
               fValida('2');

            End;

      End;

end;

function TFrmBackupRestore.fValida(StrCpo: String): Boolean;
begin

   fValida := False;

   If ( StrCpo = '1' ) Or ( StrCpo = 'GERAL' ) Then
      Begin

         If ( Trim(TxtBanco.Text) = '' ) Then
            Begin

               MessageDlg('Caminho do Banco de Dados é Obrigatório !', mtWarning, [mbOk], 0);
               TxtBanco.SetFocus;
               Exit;

            End
         Else If Not FileExists( TxtBanco.Text ) Then
            Begin

               Application.MessageBox('Arquivo de Banco de Dados Inexistente!','Base',Mb_OK+MB_IconError);
               TxtBanco.Text := '';
               TxtBanco.SetFocus;
               Exit;

            End;

         If (AnsiUpperCase(ExtractFileExt(txtBanco.Text)) <> '.GDB') And
            (AnsiUpperCase(ExtractFileExt(txtBanco.Text)) <> '.FDB') Then
            Begin

               Application.MessageBox('Extenção do Arquivo de Banco de Dados Incorreto!','Base',Mb_OK+MB_IconError);
               TxtBanco.Text := '';
               Exit;

            End;

      End;

   If ( StrCpo = '2' ) Or ( StrCpo = 'GERAL' ) Then
      Begin
      
         If ( Trim(txtArqui.Text) = '' ) Then
            Begin

               MessageDlg('Caminho do Arquivo Para a Restauração é Obrigatório !', mtWarning, [mbOk], 0);
               txtArqui.SetFocus;
               Exit;

            End
         Else If Not FileExists( txtArqui.Text ) Then
            Begin

               Application.MessageBox('Arquivo de Restauração Inexistente!','Base',Mb_OK+MB_IconError);
               txtArqui.Text := '';
               txtArqui.SetFocus;
               Exit;

            End;

         If AnsiUpperCase(ExtractFileExt(txtArqui.Text)) <> '.FBK' Then
            Begin

               Application.MessageBox('Extenção do Arquivo de Restauração Incorreta!','Base',Mb_OK+MB_IconError);
               txtArqui.Text := '';
               Exit;

            End;

      End;

   fValida := True;

end;

procedure TFrmBackupRestore.pBackup;
begin    

   pHabilita(False);

   Try

      { Localizar o local onde o backup vai ser salvo }
      If Not dlgSaveSDArquBack.Execute Then
         Begin

            pHabilita(True);
            MmBackup.Visible := False;
            FrmBackupRestore.Height := 237;
            Exit;

         End;

      Screen.Cursor := crHourGlass ;
      MmBackup.Visible := True;
      FrmBackupRestore.Height := 554;

      MmBackup.Clear;
      MmBackup.Lines.Add('Preparando para gerar o backup...');
      MmBackup.Lines.Add('');

      With IBBackupService1 Do
         Begin

            { Configurações do componente para backup - Algumas configurações já estão no próprio componente }
            DatabaseName := TxtBanco.Text;
            BackupFile.Clear;
            BackupFile.Add(dlgSaveSDArquBack.FileName);

            { Configuração das opções de backup}
            pOptions('Backup');

            { Detalhamento da execução }
            Verbose := chkDetalhes.Checked;

            { Exibe no memo as opções que o usuário marcou}
            pMostrarOpt('Backup');

            { Ativar o IBBackupService1 }
            Active := True;

            MmBackup.Lines.Add('');
            MmBackup.Lines.Add('INICIANDO PROCESSO!');
            Application.ProcessMessages;
            MmBackup.Lines.Add('');

            Try

              { Inicia o Processo }
              ServiceStart;

              { Detalhe do processamento }
              While Not Eof Do
                 MmBackup.Lines.Add(GetNextLine);

            Finally
            End;

            Active := False;
            MmBackup.Lines.Add('');
            MmBackup.Lines.Add('FIM DO PROCESSO!');

         End;

      MmBackup.Lines.Add('');
      MmBackup.Lines.Add('');
      MmBackup.Lines.Add('Backup concluído!');
      ShowMessage('Backup concluído!');

   Except

      On E: Exception Do
         Begin

            MmBackup.Lines.Add('Ocorreu um erro inesperado! O backup não foi concluído.');
            MmBackup.Lines.Add('Informações da exceção:');
            MmBackup.Lines.Add('  '+E.Message);

            ShowMessage('Error ao gerar o backup!');

         End;

   End;

   pHabilita(True);
   Screen.Cursor := crDefault ;
   PnlPrincipal.ActivePageIndex := 0;

end;

procedure TFrmBackupRestore.pRestore;
var cSenha : string;
    cNomeArq: string;
begin

   pHabilita(False);

   MmRestore.Visible := True;
   FrmBackupRestore.Height := 554;

   Try

      { Localizar o banco de dados para o restore }
      If Not OpdBase3.Execute Then
         Begin

            pHabilita(True);
            MmRestore.Visible := False;
            FrmBackupRestore.Height := 237;
            Exit;

         End;

      If chkSubstituir.Checked Then
         Begin

            cSenha := InputBox('Senha','Você marcou a opção para substituir a sua base antiga! Esse processo irá ' +
                               'apagar totalmente seu banco de dados anterior e substituir pelo o novo!          ' +
                               #13#10 + 'Se deseja continuar digite: SIM','');

            If AnsiUpperCase(cSenha) <> 'SIM' then
               Begin

                   Showmessage('Senha Incorreta!');
                   pHabilita(True);
                   MmRestore.Visible := False;
                   FrmBackupRestore.Height := 237;
                   exit;

               End;  

            cNomeArq := OpdBase3.FileName;

         End
      Else
         cNomeArq := ExtractFileDir(TxtBanco.Text) + '\DADOS.GDB';

      FrmBackupRestore.Height := 237;
      MmRestore.Visible := False;

      Screen.Cursor := crHourGlass ;
      MmRestore.Visible := True;
      FrmBackupRestore.Height := 554;

      MmRestore.Clear;
      MmRestore.Lines.Add('Preparando para restaurar o backup...');
      MmRestore.Lines.Add('');

      With IBRestoreService1 Do
         Begin

            { Configurações do componente para Restore - Algumas configurações já estão no próprio componente }
            DatabaseName.Clear;
            DatabaseName.Add(cNomeArq);
            BackupFile.Clear;
            BackupFile.Add(TxtArqui.Text);
            Params.Add('default character set UTF8');

            { Configuração das opções de backup}
            pOptions('Restore');

            { Detalhamento da execução }
            Verbose := chkDetalhes1.Checked;

            { Exibe no memo as opções que o usuário marcou}
            pMostrarOpt('Restore');

            { Ativar o IBBackupService1 }
            Active := True;

            MmRestore.Lines.Add('');
            MmRestore.Lines.Add('INICIANDO PROCESSO!');
            Application.ProcessMessages;
            MmRestore.Lines.Add(''); 

            Try
                        
              { Inicia o Processo }
              ServiceStart;

              { Detalhe do processamento }
              While Not Eof Do
                 MmRestore.Lines.Add(GetNextLine);

            Finally
            End;

            Active := False;
            MmRestore.Lines.Add('');
            MmRestore.Lines.Add('FIM DO PROCESSO!');

         End;

      MmRestore.Lines.Add('');
      MmRestore.Lines.Add('');
      MmRestore.Lines.Add('Restore concluído!');
      ShowMessage('Restore concluído!');

   Except

      On E: Exception Do
         Begin

            MmRestore.Lines.Add('Ocorreu um erro inesperado! O restore não foi concluído.');
            MmRestore.Lines.Add('Informações da exceção:');
            MmRestore.Lines.Add('  '+E.Message);

            ShowMessage('Error ao gerar o restore!');

         End;

   end;

   pHabilita(True);
   Screen.Cursor := crDefault ;
   PnlPrincipal.ActivePageIndex := 1;

end;

procedure TFrmBackupRestore.pHabilita(BolHab: Boolean);
begin

   TxtBanco.Enabled         := BolHab ;
   btnSpbBanco.Enabled      := BolHab ;
   btnBackup.Enabled        := BolHab ;
   grpConfigBackup.Enabled  := BolHab ;

   txtArqui.Enabled         := BolHab ;
   btnSpbArquivo.Enabled    := BolHab ;
   btnRestaurar.Enabled     := BolHab ;
   grpConfigRestore.Enabled := BolHab ;

end;

procedure TFrmBackupRestore.pOptions(cOpt : String);
begin

   If cOpt = 'Backup' Then
      Begin

         With IBBackupService1 Do
            Begin

               Options := [];

               If Not chkRecoLixo.Checked Then
                 Options := Options + [NoGarbageCollection];

               If Not chkTransp.Checked Then
                 Options := Options + [NonTransportable];

               If chkIgnoChec.Checked Then
                 Options := Options + [IgnoreChecksums];

               If chkIgnoLimb.Checked Then
                 Options := Options + [IgnoreLimbo];

            End;

      End
   Else
      Begin

         With IBRestoreService1 Do
            Begin

               Options := [];
               Options := [CreateNewDB];

               If chkDesativarIndices.Checked Then
                 Options := Options + [DeactivateIndexes];

               If chkSemShadow.Checked Then
                 Options := Options + [NoShadow];

               If chkSemValidar.Checked Then
                 Options := Options + [NoValidityCheck];

               If chkUmaTabela.Checked Then
                 Options := Options + [OneRelationAtATime];

               If chkSubstituir.Checked Then
                 Options := Options + [Replace];

            End; 

      End;

end;

procedure TFrmBackupRestore.pMostrarOpt(cOpt: String);
begin

   If cOpt = 'Backup' Then
      Begin

         MmBackup.Lines.Add('---------------------------------------------------------------');
         MmBackup.Lines.Add('| Recolher Lixo: '                  + Espacos(44) + fRepost(chkRecoLixo.Checked) + ' |') ;
         MmBackup.Lines.Add('| Formato Transportável: '          + Espacos(27) + fRepost(chkTransp.Checked)   + ' |') ;
         MmBackup.Lines.Add('| Ignorar Erros de Checksum: '      + Espacos(20) + fRepost(chkIgnoChec.Checked) + ' |') ;
         MmBackup.Lines.Add('| Ignorar Transações em Limbo: '    + Espacos(15) + fRepost(chkIgnoLimb.Checked) + ' |') ;
         MmBackup.Lines.Add('| Detalhamento: '                   + Espacos(42) + fRepost(chkDetalhes.Checked) + ' |') ;
         MmBackup.Lines.Add('---------------------------------------------------------------');

      End
   Else
      Begin

         MmRestore.Lines.Add('---------------------------------------------------------------');
         MmRestore.Lines.Add('| Desativar indices: '             + Espacos(36) + fRepost(chkDesativarIndices.Checked) + ' |');
         MmRestore.Lines.Add('| Restaurar arquivo espelho: '     + Espacos(20) + fRepost(Not chkSemShadow.Checked)    + ' |');
         MmRestore.Lines.Add('| Validar regras de integridade: ' + Espacos(15) + fRepost(Not chkSemValidar.Checked)   + ' |');
         MmRestore.Lines.Add('| Restaurar uma tabela por vez: '  + Espacos(15) + fRepost(chkUmaTabela.Checked)        + ' |');
         MmRestore.Lines.Add('---------------------------------------------------------------');

      End;

end;

function TFrmBackupRestore.fRepost(BoolResp: Boolean): String;
begin

   If BoolResp = True Then
      Result := 'Sim'

   Else
      Result := 'Não' ;
      
end;

Function TFrmBackupRestore.Espacos(IntQtd: Integer): String;
Begin

   Espacos := StringOfChar(' ', IntQtd);

End;

procedure TFrmBackupRestore.pToolTip(nCampo: Integer; boolMostra: Boolean);
var pt: TPoint;
    cDescr : string ;
begin

   If boolMostra Then
      pnlToolTip.Visible := True
   Else
      Begin
         pnlToolTip.Visible := False;
         Exit;
      End;

   { Pegar a posição do Mause }
   GetCursorPos(pt);  

   If nCampo In [5, 10, 11] Then
      pnlToolTip.Left := pt.X - FrmBackupRestore.Left - 190

   Else
      pnlToolTip.Left := pt.X - FrmBackupRestore.Left - 25;

   pnlToolTip.Top := pt.Y - FrmBackupRestore.Top - 105;

   Case nCampo Of

      { Backup }
      1:  cDescr := 'Ativar o Garbage Collection';
      2:  cDescr := 'Permiti que você transporte o banco'  + #13#10 + 'de dados para um outro computador' + #13#10 + 'que use um sistema operacional ' + #13#10 +'diferente';
      3:  cDescr := 'Uma Checksum é uma análise' + #13#10 + ' de página por página dos dados'  + #13#10 + 'para verificar sua integridade';
      4:  cDescr := 'Ignora todos os registros das versões criadas' +#13#10 +  'por todo o Transactions in Limbo, encontra' + #13#10 +
                    'a versão mais recente de commit' + #13#10 + 'de um registro, e faz backup dessa versão';
      5:  cDescr := 'Informa ao usuário ' + #13#10 + 'o detalhe do processamento! ';

      { Restore }
      6:  cDescr := 'Reconstrói índices';
      7:  cDescr := 'SEM INFORMAÇÃO';
      8:  cDescr := 'SEM INFORMAÇÃO';
      9:  cDescr := 'SEM INFORMAÇÃO';
      10: cDescr := 'Substitui o arquivo de' + #13#10 +  'banco de dados pelo o restaurado';
      11: cDescr := 'Informa ao usuário ' + #13#10 + 'o detalhe do processamento! ';

   End  ;

   lblDescr.Caption := cDescr ;

   lblDescr.Left := (pnlToolTip.Width - lblDescr.Width) Div 2;
   lblDescr.Top  := (pnlToolTip.Height - lblDescr.Height) Div 2;  

end;

procedure TFrmBackupRestore.chkRecoLixoMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(1);
end;

procedure TFrmBackupRestore.grpConfigBackupMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(0, False);
end;

procedure TFrmBackupRestore.chkTranspMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(2);
end;

procedure TFrmBackupRestore.chkIgnoChecMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(3);
end;

procedure TFrmBackupRestore.chkIgnoLimbMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(4);
end;

procedure TFrmBackupRestore.chkDetalhesMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(5);
end;

procedure TFrmBackupRestore.grpConfigRestoreMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
    pToolTip(0, False);
end;

procedure TFrmBackupRestore.chkDesativarIndicesMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(6);
end;

procedure TFrmBackupRestore.chkSemShadowMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(7);
end;

procedure TFrmBackupRestore.chkSemValidarMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(8);
end;

procedure TFrmBackupRestore.chkUmaTabelaMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(9);
end;

procedure TFrmBackupRestore.chkSubstituirMouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
    pToolTip(10);
end;

procedure TFrmBackupRestore.chkDetalhes1MouseMove(Sender: TObject;
  ShIft: TShIftState; X, Y: Integer);
begin
   pToolTip(11);
end;

procedure TFrmBackupRestore.PnlPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pToolTip(0, False);
end;

procedure TFrmBackupRestore.MmBackupMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pToolTip(0, False);
end;

procedure TFrmBackupRestore.pnlPnlBancoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pToolTip(0, False);
end;

procedure TFrmBackupRestore.MmRestoreMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pToolTip(0, False);
end;

end.

