unit Avk.Gui.OracleDirectConnect;

interface

uses
  uADCompClient,
  Avk.Gui.Connection, Avk.Gui.DirectConnect, Avk.Gui.Descriptions;

type
  TOracleDirectTransaction = class (TDirectTransaction)
  private
    FQuery: TADQuery;
    procedure PrepareQuery(
      const AProcedure: TProcedureDescription;
      const AParamValues: TParamValues
    );
  public
    constructor Create(AConnection: TADConnection); override;
    destructor Destroy; override;

    procedure MakeSavepoint(const AName: string); override;
    procedure RollbackToSavepoint(const AName: string); override;

    procedure Commit; override;
    procedure Rollback; override;
    procedure CommitRetaining; override;
    procedure RollbackRetaining; override;

    procedure QueryData(
      const AProcedure: TProcedureDescription;
      const AParamValues: TParamValues;
      const AData: TADMemTable;
      const ACacheData: boolean = false
    ); override;
    procedure ExecuteProcedure(
      const AProcedure: TProcedureDescription; const AParamValues: TParamValues
    ); override;
  end;

  TOracleDirectConnection = class (TDirectConnection)
  protected
    procedure BeforeConnect; override;
    function GetDirectTransactionClass: TDirectTransactionClass; override;
  end;

const
  OracleConnectMode: string = 'oracle_connect_mode';

implementation

uses
  SysUtils,
  Avk.Core.Utils;

{ TOracleDirectConnection }

procedure TOracleDirectConnection.BeforeConnect;
begin
  inherited;
  GetConnection.DriverName := 'ORA';
end;

function TOracleDirectConnection.GetDirectTransactionClass: TDirectTransactionClass;
begin
  Result := TOracleDirectTransaction;
end;

{ TOracleDirectTransaction }

procedure TOracleDirectTransaction.Commit;
begin
  inherited;
  ExecSQL('commit');
  if GetTransaction.Active then
    GetTransaction.Commit;
end;

procedure TOracleDirectTransaction.CommitRetaining;
begin
  inherited;
  ExecSQL('commit');
  if GetTransaction.Active then
    GetTransaction.CommitRetaining;
end;

constructor TOracleDirectTransaction.Create;
begin
  inherited;
  FQuery := TADQuery.Create(nil);
  FQuery.Transaction := GetTransaction;
  FQuery.Connection := GetTransaction.Connection;
end;

destructor TOracleDirectTransaction.Destroy;
begin
  FQuery.Free;
  inherited;
end;

procedure TOracleDirectTransaction.ExecuteProcedure(
  const AProcedure: TProcedureDescription; const AParamValues: TParamValues);
begin
  inherited;
  Assert(not AProcedure.IsDataSet);
  PrepareQuery(AProcedure, AParamValues);
  FQuery.Execute();
  FillParamsFromQuery(FQuery, AProcedure, AParamValues);
end;

procedure TOracleDirectTransaction.MakeSavepoint(const AName: string);
begin
  inherited;
  ExecSQL('savepoint ' + AName);
end;

procedure TOracleDirectTransaction.PrepareQuery(
  const AProcedure: TProcedureDescription; const AParamValues: TParamValues);
var
  QueryText: string;
  QueryParams: string;
  PD: TParamDescription;
begin
  QueryText :=
    'begin ' +
    DelimitedConcat(
      AProcedure.ProcedureOwner,
      DelimitedConcat(AProcedure.PackageName, AProcedure.ProcedureName, '.'),
      '.'
    );

  QueryParams := '';
  for PD in AProcedure.SortedParams do
    if PD.ParamDirection in [pdIn, pdInOut, pdOut, pdCursor] then
    begin
      QueryParams := DelimitedConcat(
        QueryParams,
        Format('%s => :%s', [PD.Name, PD.Name]),
        ','
      );
    end;
  if QueryParams = '' then
    QueryText := QueryText + QueryParams
  else
    QueryText := QueryText + '(' + QueryParams + ')';
  QueryText := QueryText + '; end;';

  FQuery.SQL.Text := QueryText;
  FillQueryParams(FQuery, AProcedure, AParamValues);
end;

procedure TOracleDirectTransaction.QueryData(
  const AProcedure: TProcedureDescription;
  const AParamValues: TParamValues;
  const AData: TADMemTable;
  const ACacheData: boolean
);
begin
  inherited;
  Assert(AProcedure.IsDataSet);
  PrepareQuery(AProcedure, AParamValues);
  FQuery.Open;
  try
    AData.CloneCursor(FQuery, true);
    FillDataSetFields(AData, AProcedure);
  finally
    FQuery.Close;
  end;
end;

procedure TOracleDirectTransaction.Rollback;
begin
  inherited;
  if Assigned(FCmd.Connection) then
    ExecSQL('rollback');
  if GetTransaction.Active then
    GetTransaction.Rollback;
end;

procedure TOracleDirectTransaction.RollbackRetaining;
begin
  inherited;
  ExecSQL('rollback');
  if GetTransaction.Active then
    GetTransaction.RollbackRetaining;
end;

procedure TOracleDirectTransaction.RollbackToSavepoint(const AName: string);
begin
  inherited;
  ExecSQL('rollback to ' + AName);
end;

initialization
  TConnectionFactory.RegisterConnectionImplementation(
    OracleConnectMode, TOracleDirectConnection
  );

end.
