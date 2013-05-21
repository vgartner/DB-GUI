CREATE OR ALTER PROCEDURE UI$FORM_PANEL_INS (
    I_ID INTEGER,
    I_FORM VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_PARENT INTEGER,
    I_ALIGN VARCHAR(30),
    I_INDEX_ON_PARENT INTEGER)
AS
 BEGIN
  INSERT INTO UI$FORM_PANEL (ID,FORM,CAPTION,PARENT,ALIGN,INDEX_ON_PARENT)
  VALUES  (:I_ID,:I_FORM,:I_CAPTION,:I_PARENT,:I_ALIGN,:I_INDEX_ON_PARENT);
END