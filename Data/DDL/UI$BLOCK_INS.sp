CREATE OR ALTER PROCEDURE UI$BLOCK_INS (
    I_ID VARCHAR(30),
    I_BLOCK_TYPE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
 BEGIN
  INSERT INTO UI$BLOCK (ID,BLOCK_TYPE,NAME,CUSTOM_CLASS,IS_MODAL)
  VALUES  (:I_ID,:I_BLOCK_TYPE,:I_NAME,:I_CUSTOM_CLASS,:I_IS_MODAL);
END