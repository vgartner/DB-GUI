CREATE OR ALTER PROCEDURE UI$ACTION_STYLE_DEL (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100))
AS
 BEGIN
  DELETE FROM UI$ACTION_STYLE T
  WHERE T.ID=:I_ID AND 1=1;
END