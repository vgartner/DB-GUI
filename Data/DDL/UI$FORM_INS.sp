CREATE OR ALTER PROCEDURE UI$FORM_INS (
    I_ID VARCHAR(30),
    I_MAIN_PROCEDURE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  INSERT INTO UI$FORM (ID,MAIN_PROCEDURE)
    VALUES (:I_ID,:I_MAIN_PROCEDURE);
  INSERT INTO UI$BLOCK (ID, NAME, CUSTOM_CLASS, IS_MODAL)
    VALUES (:I_ID, :I_NAME, :I_CUSTOM_CLASS, :I_IS_MODAL);
END