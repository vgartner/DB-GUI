CREATE OR ALTER PROCEDURE UI$BLOCK_REF_INS (
    I_ID INTEGER,
    I_BLOCK VARCHAR(30),
    I_REFS_TO VARCHAR(30))
AS
 BEGIN
  INSERT INTO UI$BLOCK_REF (ID,BLOCK,REFS_TO)
  VALUES  (:I_ID,:I_BLOCK,:I_REFS_TO);
END