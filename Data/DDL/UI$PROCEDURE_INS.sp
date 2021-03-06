CREATE OR ALTER PROCEDURE UI$PROCEDURE_INS (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_PROCEDURE_NAME VARCHAR(30),
    I_IS_GRID_FOR_TABLE VARCHAR(30),
    I_IS_MODAL SMALLINT,
    I_FORCE_SAVE SMALLINT,
    I_GRID_STYLE VARCHAR(30))
AS
BEGIN
  INSERT INTO UI$BLOCK (ID,BLOCK_TYPE, NAME, CUSTOM_CLASS, IS_MODAL)
  VALUES  (:I_ID,'procedure',:I_NAME, :I_CUSTOM_CLASS, :I_IS_MODAL);

  INSERT INTO UI$PROCEDURE (ID,PROCEDURE_NAME,IS_GRID_FOR_TABLE, FORCE_SAVE, GRID_STYLE)
  VALUES  (:I_ID,:I_PROCEDURE_NAME,:I_IS_GRID_FOR_TABLE, :I_FORCE_SAVE, :I_GRID_STYLE);
END