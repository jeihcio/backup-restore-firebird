program BackupRestore;

uses
  Forms,
  UntBackupRestore in 'UntBackupRestore.pas' {FrmBackupRestore};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Backup/Restore';
  Application.CreateForm(TFrmBackupRestore, FrmBackupRestore);
  Application.Run;
end.
