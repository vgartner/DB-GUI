CREATE OR ALTER PROCEDURE UI$REFRESH_MODE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
 BEGIN
  FOR
    SELECT T.ID,T.NAME
    FROM UI$REFRESH_MODE T     
    WHERE
      (T.ID = :I_ID OR :I_ID IS NULL) AND
      1=1
    INTO :ID,:NAME
  DO SUSPEND;
END