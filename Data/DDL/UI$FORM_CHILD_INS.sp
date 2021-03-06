CREATE OR ALTER PROCEDURE UI$FORM_CHILD_INS (
    I_ID INTEGER,
    I_PANEL INTEGER,
    I_BLOCK VARCHAR(30),
    I_CAPTION D_NAME,
    I_ORDER_NUM SMALLINT,
    I_PARAM_GROUP_ALIGN VARCHAR(30),
    I_PARAM_ALIGN VARCHAR(30),
    I_VISIBLE SMALLINT)
AS
  DECLARE VARIABLE L_FORM D_IDENT;
BEGIN
  SELECT P.FORM
    FROM UI$FORM_PANEL P
    WHERE P.ID = :I_PANEL
    INTO :L_FORM;

  INSERT INTO UI$FORM_CHILD (ID,FORM,PANEL,BLOCK,ORDER_NUM,PARAM_GROUP_ALIGN,PARAM_ALIGN,VISIBLE, CAPTION)
    VALUES (:I_ID,:L_FORM,:I_PANEL,:I_BLOCK,:I_ORDER_NUM,:I_PARAM_GROUP_ALIGN,:I_PARAM_ALIGN,:I_VISIBLE, :I_CAPTION);
END