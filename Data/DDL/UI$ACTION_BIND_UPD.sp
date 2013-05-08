CREATE OR ALTER PROCEDURE UI$ACTION_BIND_UPD (
    I_BLOCK VARCHAR(30),
    I_ACTION VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30))
AS
  DECLARE VARIABLE L_CNT INTEGER;
BEGIN
  SELECT COUNT(*)
    FROM UI$BLOCK_ACTION A
    JOIN UI$BLOCK_PARAM DP ON
      DP."BLOCK" = A.LINKS_TO AND
      DP.PARAM = :I_DESTINATION_PARAM AND
      DP.PARAM_DIRECTION IN ('IN', 'IN_OUT') AND
      1=1
    WHERE
      A."BLOCK" = :I_BLOCK AND
      A.ID = :I_ACTION AND
      1=1
    INTO L_CNT;
  IF (L_CNT = 0) THEN
    EXCEPTION E_TO_DESTINATION_PARAM_FOUND;

  MERGE INTO UI$ACTION_BIND T
    USING (SELECT NULL V FROM RDB$DATABASE)
    ON (T.BLOCK=:I_BLOCK AND T.ACTION=:I_ACTION AND T.DESTINATION_PARAM=:I_DESTINATION_PARAM)
    WHEN MATCHED THEN UPDATE SET T.PARAM=:I_PARAM
    WHEN NOT MATCHED THEN INSERT (BLOCK, ACTION, PARAM, DESTINATION_PARAM)
      VALUES (:I_BLOCK, :I_ACTION, :I_PARAM, :I_DESTINATION_PARAM);
END