CREATE OR ALTER PROCEDURE UI$FORM_PANEL_UPD (
    I_ID INTEGER,
    I_FORM VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_PARENT INTEGER,
    I_ALIGN VARCHAR(30),
    I_INDEX_ON_PARENT INTEGER)
AS
BEGIN
  UPDATE UI$FORM_PANEL T
  SET T.CAPTION=:I_CAPTION,T.PARENT=:I_PARENT,T.ALIGN=:I_ALIGN,T.INDEX_ON_PARENT=:I_INDEX_ON_PARENT
  WHERE T.ID=:I_ID AND 1=1;
END