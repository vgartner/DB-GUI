CREATE OR ALTER PROCEDURE UI$FORM_CHILD_CR (
    I_ID INTEGER,
    I_FORM D_IDENT,
    I_PANEL INTEGER = null)
RETURNS (
    ID INTEGER,
    PANEL INTEGER,
    L_PANEL_CAPTION VARCHAR(100),
    "BLOCK" VARCHAR(30),
    CAPTION D_NAME,
    ORDER_NUM SMALLINT,
    PARAM_GROUP_ALIGN VARCHAR(30),
    PARAM_ALIGN VARCHAR(30),
    VISIBLE SMALLINT,
    L_BLOCK_NAME VARCHAR(100),
    L_PARAM_GROUP_ALIGN_NAME VARCHAR(100),
    L_PARAM_ALIGN_NAME VARCHAR(100))
AS
BEGIN
  FOR
    SELECT T.ID,T.PANEL,L_1.CAPTION L_PANEL_CAPTION, T.BLOCK,T.ORDER_NUM,T.PARAM_GROUP_ALIGN,T.PARAM_ALIGN,T.VISIBLE,L_2.NAME AS L_BLOCK_NAME,L_3.NAME AS L_PARAM_GROUP_ALIGN_NAME,L_4.NAME AS L_PARAM_ALIGN_NAME, T.caption
    FROM UI$FORM_CHILD T
    JOIN UI$FORM_PANEL L_1 ON L_1.id = T.PANEL AND L_1.FORM = T.FORM
    LEFT JOIN UI$BLOCK L_2 ON L_2.ID = T.BLOCK
    LEFT JOIN UI$PARAM_ALIGN L_3 ON L_3.ID = T.PARAM_GROUP_ALIGN
    LEFT JOIN UI$PARAM_ALIGN L_4 ON L_4.ID = T.PARAM_ALIGN
    WHERE
      (T.ID = :I_ID OR :I_ID IS NULL) AND
      (:I_FORM IS NULL OR T.FORM = :I_FORM) AND
      (:I_PANEL IS NULL OR T.PANEL = :I_PANEL) AND
      1=1
    INTO :ID,:PANEL,:L_PANEL_CAPTION,:BLOCK,:ORDER_NUM,:PARAM_GROUP_ALIGN,:PARAM_ALIGN,:VISIBLE,:L_BLOCK_NAME,:L_PARAM_GROUP_ALIGN_NAME,:L_PARAM_ALIGN_NAME, :CAPTION
  DO SUSPEND;
END