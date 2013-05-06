/******************************************************************************/
/***         Generated by IBExpert 2012.12.16.1 06.05.2013 8:35:19          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES UTF8;

CREATE DATABASE 'C:\Projects\GUI\Data\GUI.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8 COLLATION UTF8;



/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN D_BOOLEAN AS
SMALLINT
CHECK (value in (0,1));

CREATE DOMAIN D_IDENT AS
VARCHAR(30);

CREATE DOMAIN D_NAME AS
VARCHAR(100);



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE SEQUENCE GEN_UI$BLOCK_FIELD_LINKS_ID;
ALTER SEQUENCE GEN_UI$BLOCK_FIELD_LINKS_ID RESTART WITH 0;

CREATE SEQUENCE GEN_UI$BLOCK_FIELD_LINK_ID;
ALTER SEQUENCE GEN_UI$BLOCK_FIELD_LINK_ID RESTART WITH 0;

CREATE SEQUENCE GEN_UI$BLOCK_PARAM_LINK_ID;
ALTER SEQUENCE GEN_UI$BLOCK_PARAM_LINK_ID RESTART WITH 0;

CREATE SEQUENCE GEN_UI$BLOCK_PARAM_REF_ID;
ALTER SEQUENCE GEN_UI$BLOCK_PARAM_REF_ID RESTART WITH 373;

CREATE SEQUENCE GEN_UI$BLOCK_REF_ID;
ALTER SEQUENCE GEN_UI$BLOCK_REF_ID RESTART WITH 232;

CREATE SEQUENCE GEN_UI$FORM_CHILD_ID;
ALTER SEQUENCE GEN_UI$FORM_CHILD_ID RESTART WITH 478;

CREATE SEQUENCE GEN_UI$FORM_CHILD_PARAM_ID;
ALTER SEQUENCE GEN_UI$FORM_CHILD_PARAM_ID RESTART WITH 62;

CREATE SEQUENCE GEN_UI$FORM_PANEL_ID;
ALTER SEQUENCE GEN_UI$FORM_PANEL_ID RESTART WITH 305;

CREATE SEQUENCE GEN_UI$FORM_PANEL_ITEM_ID;
ALTER SEQUENCE GEN_UI$FORM_PANEL_ITEM_ID RESTART WITH 0;

CREATE SEQUENCE GEN_UI$MENU_ITEM_ID;
ALTER SEQUENCE GEN_UI$MENU_ITEM_ID RESTART WITH 14;

CREATE SEQUENCE IBE$VERSION_HISTORY_ID_GEN;
ALTER SEQUENCE IBE$VERSION_HISTORY_ID_GEN RESTART WITH 642;



SET TERM ^ ; 



/******************************************************************************/
/***                           Stored Procedures                            ***/
/******************************************************************************/

CREATE OR ALTER PROCEDURE CR_UI$MENU
RETURNS (
    ID INTEGER,
    NAME D_NAME,
    ITEM_TYPE D_IDENT,
    PARENT INTEGER,
    "BLOCK" D_IDENT,
    ORDER_NUM SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE CR_UI$MENU_ITEM_TYPE (
    I_ID VARCHAR(30) = null)
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_BIND_CR (
    I_ACTION VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_BLOCK VARCHAR(30))
RETURNS (
    "BLOCK" VARCHAR(30),
    "ACTION" VARCHAR(30),
    PARAM VARCHAR(30),
    DESTINATION_PARAM VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_BIND_CR_D (
    I_BLOCK VARCHAR(30),
    I_ACTION VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30))
RETURNS (
    "BLOCK" VARCHAR(30),
    "ACTION" VARCHAR(30),
    PARAM VARCHAR(30),
    DESTINATION_PARAM VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_BIND_DEL (
    I_BLOCK VARCHAR(30),
    I_ACTION VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_BIND_UPD (
    I_BLOCK VARCHAR(30),
    I_ACTION VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_STYLE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_STYLE_CR_D (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_STYLE_DEL (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_STYLE_INS (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$ACTION_STYLE_UPD (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$ADD_TO_MENU (
    I_MENU_ITEM_PARENT INTEGER,
    I_MENU_ITEM_ORDER_NUM SMALLINT,
    I_BLOCK D_IDENT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_ACTION_CR (
    I_ID VARCHAR(30),
    I_BLOCK VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    "BLOCK" VARCHAR(30),
    CAPTION VARCHAR(100),
    LINKS_TO VARCHAR(30),
    ACTION_STYLE VARCHAR(30),
    IMAGE_INDEX INTEGER,
    ORDER_NUM SMALLINT,
    REFRESH_MODE VARCHAR(30),
    L_BLOCK_NAME VARCHAR(100),
    L_LINKS_TO_NAME VARCHAR(100),
    L_ACTION_STYLE_NAME VARCHAR(100),
    L_REFRESH_MODE_NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_ACTION_CR_D (
    I_ID VARCHAR(30),
    I_BLOCK VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    "BLOCK" VARCHAR(30),
    CAPTION VARCHAR(100),
    LINKS_TO VARCHAR(30),
    ACTION_STYLE VARCHAR(30),
    IMAGE_INDEX INTEGER,
    ORDER_NUM SMALLINT,
    REFRESH_MODE VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_ACTION_DEL (
    I_ID VARCHAR(30),
    I_BLOCK VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_LINKS_TO VARCHAR(30),
    I_ACTION_STYLE VARCHAR(30),
    I_IMAGE_INDEX INTEGER,
    I_ORDER_NUM SMALLINT,
    I_REFRESH_MODE VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_ACTION_INS (
    I_ID VARCHAR(30),
    I_BLOCK VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_LINKS_TO VARCHAR(30),
    I_ACTION_STYLE VARCHAR(30),
    I_IMAGE_INDEX INTEGER,
    I_ORDER_NUM SMALLINT,
    I_REFRESH_MODE VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_ACTION_UPD (
    I_ID VARCHAR(30),
    I_BLOCK VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_LINKS_TO VARCHAR(30),
    I_ACTION_STYLE VARCHAR(30),
    I_IMAGE_INDEX INTEGER,
    I_ORDER_NUM SMALLINT,
    I_REFRESH_MODE VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    BLOCK_TYPE VARCHAR(30),
    NAME VARCHAR(100),
    CUSTOM_CLASS VARCHAR(100),
    IS_MODAL SMALLINT,
    L_BLOCK_TYPE_NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_CR_D (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    BLOCK_TYPE VARCHAR(30),
    NAME VARCHAR(100),
    CUSTOM_CLASS VARCHAR(100),
    IS_MODAL SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_DEL (
    I_ID VARCHAR(30),
    I_BLOCK_TYPE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_INS (
    I_ID VARCHAR(30),
    I_BLOCK_TYPE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_PARAM_CR (
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30))
RETURNS (
    "BLOCK" VARCHAR(30),
    PARAM VARCHAR(30),
    PARAM_DIRECTION VARCHAR(30),
    DATA_TYPE VARCHAR(30),
    ORDER_NUM SMALLINT,
    GROUP_NAME VARCHAR(100),
    CAPTION VARCHAR(100),
    ENABLER_PARAM VARCHAR(30),
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM VARCHAR(30),
    INDEX_IN_KEY SMALLINT,
    INDEX_IN_PARENT SMALLINT,
    INDEX_IN_NAME SMALLINT,
    VISIBLE SMALLINT,
    REQUIRED SMALLINT,
    READ_ONLY SMALLINT,
    L_BLOCK_NAME VARCHAR(100),
    L_PARAM_DIRECTION_NAME VARCHAR(100),
    L_DATA_TYPE_NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_PARAM_CR_D (
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30))
RETURNS (
    "BLOCK" VARCHAR(30),
    PARAM VARCHAR(30),
    PARAM_DIRECTION VARCHAR(30),
    DATA_TYPE VARCHAR(30),
    ORDER_NUM SMALLINT,
    CALL_ORDER_NUM SMALLINT,
    GROUP_NAME VARCHAR(100),
    CAPTION VARCHAR(100),
    ENABLER_PARAM VARCHAR(30),
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM VARCHAR(30),
    INDEX_IN_KEY SMALLINT,
    INDEX_IN_PARENT SMALLINT,
    INDEX_IN_NAME SMALLINT,
    VISIBLE SMALLINT,
    REQUIRED SMALLINT,
    READ_ONLY SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_PARAM_DEL (
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_PARAM_DIRECTION VARCHAR(30),
    I_DATA_TYPE VARCHAR(30),
    I_ORDER_NUM SMALLINT,
    I_GROUP_NAME VARCHAR(100),
    I_CAPTION VARCHAR(100),
    I_ENABLER_PARAM VARCHAR(30),
    I_SOURCE_BLOCK INTEGER,
    I_SOURCE_PARAM VARCHAR(30),
    I_INDEX_IN_KEY SMALLINT,
    I_INDEX_IN_PARENT SMALLINT,
    I_INDEX_IN_NAME SMALLINT,
    I_VISIBLE SMALLINT,
    I_REQUIRED SMALLINT,
    I_READ_ONLY SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_PARAM_INS (
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_PARAM_DIRECTION VARCHAR(30),
    I_DATA_TYPE VARCHAR(30),
    I_ORDER_NUM SMALLINT,
    I_CALL_ORDER_NUM SMALLINT,
    I_GROUP_NAME VARCHAR(100),
    I_CAPTION VARCHAR(100),
    I_ENABLER_PARAM VARCHAR(30),
    I_SOURCE_CHILD INTEGER,
    I_SOURCE_PARAM VARCHAR(30),
    I_INDEX_IN_KEY SMALLINT,
    I_INDEX_IN_PARENT SMALLINT,
    I_INDEX_IN_NAME SMALLINT,
    I_VISIBLE SMALLINT,
    I_REQUIRED SMALLINT,
    I_READ_ONLY SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_PARAM_UPD (
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_PARAM_DIRECTION VARCHAR(30),
    I_DATA_TYPE VARCHAR(30),
    I_ORDER_NUM SMALLINT,
    I_CALL_ORDER_NUM SMALLINT,
    I_GROUP_NAME VARCHAR(100),
    I_CAPTION VARCHAR(100),
    I_ENABLER_PARAM VARCHAR(30),
    I_SOURCE_CHILD INTEGER,
    I_SOURCE_PARAM VARCHAR(30),
    I_INDEX_IN_KEY SMALLINT,
    I_INDEX_IN_PARENT SMALLINT,
    I_INDEX_IN_NAME SMALLINT,
    I_VISIBLE SMALLINT,
    I_REQUIRED SMALLINT,
    I_READ_ONLY SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_BIND_CR (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30))
RETURNS (
    REF INTEGER,
    "BLOCK" VARCHAR(30),
    DESTINATION_PARAM VARCHAR(30),
    SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_BIND_CR_D (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30))
RETURNS (
    REF INTEGER,
    "BLOCK" VARCHAR(30),
    DESTINATION_PARAM VARCHAR(30),
    SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_BIND_DEL (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30),
    I_SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_BIND_INS (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30),
    I_SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_BIND_UPD (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_DESTINATION_PARAM VARCHAR(30),
    I_SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_CR (
    I_ID INTEGER,
    I_BLOCK VARCHAR(30))
RETURNS (
    ID INTEGER,
    "BLOCK" VARCHAR(30),
    REFS_TO VARCHAR(30),
    L_BLOCK_NAME VARCHAR(100),
    L_REFS_TO_NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_CR_D (
    I_ID INTEGER,
    I_BLOCK VARCHAR(30))
RETURNS (
    ID INTEGER,
    "BLOCK" VARCHAR(30),
    REFS_TO VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_DEL (
    I_ID INTEGER,
    I_BLOCK VARCHAR(30),
    I_REFS_TO VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_INS (
    I_ID INTEGER,
    I_BLOCK VARCHAR(30),
    I_REFS_TO VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_PARAM_CR (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30))
RETURNS (
    REF INTEGER,
    "BLOCK" VARCHAR(30),
    PARAM VARCHAR(30),
    ORDER_NUM SMALLINT,
    IS_MAIN_PARAM SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_PARAM_CR_D (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30))
RETURNS (
    REF INTEGER,
    "BLOCK" VARCHAR(30),
    PARAM VARCHAR(30),
    ORDER_NUM SMALLINT,
    IS_MAIN_PARAM SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_PARAM_DEL (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_ORDER_NUM SMALLINT,
    I_IS_MAIN_PARAM SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_PARAM_UPD (
    I_REF INTEGER,
    I_BLOCK VARCHAR(30),
    I_PARAM VARCHAR(30),
    I_ORDER_NUM SMALLINT,
    I_IS_MAIN_PARAM SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_REF_UPD (
    I_ID INTEGER,
    I_BLOCK VARCHAR(30),
    I_REFS_TO VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_TYPE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$BLOCK_UPD (
    I_ID VARCHAR(30),
    I_BLOCK_TYPE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$CR_ACTION_BIND
RETURNS (
    "BLOCK" D_IDENT,
    "ACTION" D_IDENT,
    PARAM D_IDENT,
    DESTINATION_PARAM D_IDENT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_BLOCK
RETURNS (
    ID D_IDENT,
    BLOCK_TYPE D_IDENT,
    NAME D_NAME,
    CUSTOM_CLASS D_NAME,
    IS_MODAL D_BOOLEAN)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_BLOCK_ACTION
RETURNS (
    ID D_IDENT,
    "BLOCK" D_IDENT,
    CAPTION D_NAME,
    LINKS_TO D_IDENT,
    ACTION_STYLE D_IDENT,
    IMAGE_INDEX INTEGER,
    REFRESH_MODE D_IDENT,
    ORDER_NUM SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_BLOCK_PARAM
RETURNS (
    "BLOCK" D_IDENT,
    PARAM D_IDENT,
    PARAM_DIRECTION D_IDENT,
    DATA_TYPE D_IDENT,
    GROUP_NAME D_NAME,
    ENABLER_PARAM D_IDENT,
    CAPTION D_NAME,
    VISIBLE D_BOOLEAN,
    REQUIRED D_BOOLEAN,
    READ_ONLY D_BOOLEAN,
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM D_IDENT,
    INDEX_IN_KEY SMALLINT,
    INDEX_IN_PARENT SMALLINT,
    INDEX_IN_NAME SMALLINT,
    ORDER_NUM SMALLINT,
    CALL_ORDER_NUM SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_BLOCK_REF_BIND
RETURNS (
    REF INTEGER,
    DESTINATION_PARAM D_IDENT,
    SOURCE_PARAM D_IDENT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_BLOCK_REF_PARAM
RETURNS (
    REF INTEGER,
    "BLOCK" D_IDENT,
    REFS_TO D_IDENT,
    PARAM D_IDENT,
    ORDER_NUM SMALLINT,
    IS_MAIN_PARAM D_BOOLEAN)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_FORM
RETURNS (
    ID D_IDENT,
    MAIN_PROCEDURE D_IDENT,
    HEADER_VISIBLE D_BOOLEAN)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_FORM_CHILD
RETURNS (
    ID INTEGER,
    FORM D_IDENT,
    "BLOCK" D_IDENT,
    CAPTION D_NAME,
    PANEL INTEGER,
    ORDER_NUM SMALLINT,
    PARAM_GROUP_ALIGN D_IDENT,
    PARAM_ALIGN D_IDENT,
    VISIBLE D_BOOLEAN)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_FORM_CHILD_PARAM
RETURNS (
    FORM_CHILD INTEGER,
    PARAM D_IDENT,
    VISIBLE D_BOOLEAN,
    READ_ONLY D_BOOLEAN,
    REQUIRED D_BOOLEAN,
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM D_IDENT,
    AUTO_REFRESH D_BOOLEAN)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_FORM_CHILD_REF_BIND
RETURNS (
    FORM_CHILD INTEGER,
    REF INTEGER,
    DESTINATION_PARAM D_IDENT,
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM D_IDENT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_FORM_PANEL
RETURNS (
    ID INTEGER,
    FORM D_IDENT,
    CAPTION D_NAME,
    PARENT INTEGER,
    ALIGN D_IDENT,
    INDEX_ON_PARENT SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$CR_PROCEDURE
RETURNS (
    ID D_IDENT,
    PROCEDURE_NAME D_IDENT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$DATA_TYPE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





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
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_CR_D (
    I_ID INTEGER)
RETURNS (
    ID INTEGER,
    PANEL INTEGER,
    "BLOCK" VARCHAR(30),
    CAPTION VARCHAR(100),
    ORDER_NUM SMALLINT,
    PARAM_GROUP_ALIGN VARCHAR(30),
    PARAM_ALIGN VARCHAR(30),
    VISIBLE SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_DEL (
    I_ID INTEGER,
    I_PANEL INTEGER,
    I_BLOCK VARCHAR(30),
    I_ORDER_NUM SMALLINT,
    I_PARAM_GROUP_ALIGN VARCHAR(30),
    I_PARAM_ALIGN VARCHAR(30),
    I_VISIBLE SMALLINT)
AS
BEGIN
  EXIT;
END^





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
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_PARAM_CR (
    I_FORM_CHILD INTEGER,
    I_PARAM VARCHAR(30))
RETURNS (
    FORM_CHILD INTEGER,
    PARAM VARCHAR(30),
    VISIBLE SMALLINT,
    REQUIRED SMALLINT,
    READ_ONLY SMALLINT,
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM VARCHAR(30),
    AUTO_REFRESH SMALLINT,
    L_FORM_CHILD_ID INTEGER,
    L_SOURCE_BLOCK_ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_PARAM_CR_D (
    I_FORM_CHILD INTEGER,
    I_PARAM VARCHAR(30))
RETURNS (
    FORM_CHILD INTEGER,
    PARAM VARCHAR(30),
    VISIBLE SMALLINT,
    REQUIRED SMALLINT,
    READ_ONLY SMALLINT,
    SOURCE_CHILD INTEGER,
    SOURCE_PARAM VARCHAR(30),
    AUTO_REFRESH SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_PARAM_DEL (
    I_FORM_CHILD INTEGER,
    I_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_PARAM_UPD (
    I_FORM_CHILD INTEGER,
    I_PARAM VARCHAR(30),
    I_VISIBLE SMALLINT,
    I_REQUIRED SMALLINT,
    I_READ_ONLY SMALLINT,
    I_SOURCE_CHILD INTEGER,
    I_SOURCE_PARAM VARCHAR(30),
    I_AUTO_REFRESH SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_REF_BIND_CR (
    I_FORM_CHILD INTEGER,
    I_REF INTEGER,
    I_DESTINATION_PARAM VARCHAR(30))
RETURNS (
    FORM_CHILD INTEGER,
    FORM VARCHAR(30),
    "BLOCK" VARCHAR(30),
    REF INTEGER,
    DESTINATION_PARAM VARCHAR(30),
    SOURCE_CHILD INTEGER,
    SOURCE_BLOCK VARCHAR(30),
    SOURCE_PARAM VARCHAR(30),
    L_1_FORM_CHILD_ID INTEGER,
    L_1_FORM_ID INTEGER,
    L_1_BLOCK_ID INTEGER,
    L_3_SOURCE_CHILD_ID INTEGER,
    L_3_FORM_ID INTEGER,
    L_3_SOURCE_BLOCK_ID INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_REF_BIND_CR_D (
    I_FORM_CHILD INTEGER,
    I_REF INTEGER,
    I_DESTINATION_PARAM VARCHAR(30))
RETURNS (
    FORM_CHILD INTEGER,
    FORM VARCHAR(30),
    "BLOCK" VARCHAR(30),
    REF INTEGER,
    DESTINATION_PARAM VARCHAR(30),
    SOURCE_CHILD INTEGER,
    SOURCE_BLOCK VARCHAR(30),
    SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_REF_BIND_DEL (
    I_FORM_CHILD INTEGER,
    I_FORM VARCHAR(30),
    I_BLOCK VARCHAR(30),
    I_REF INTEGER,
    I_DESTINATION_PARAM VARCHAR(30),
    I_SOURCE_CHILD INTEGER,
    I_SOURCE_BLOCK VARCHAR(30),
    I_SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_REF_BIND_INS (
    I_FORM_CHILD INTEGER,
    I_FORM VARCHAR(30),
    I_BLOCK VARCHAR(30),
    I_REF INTEGER,
    I_DESTINATION_PARAM VARCHAR(30),
    I_SOURCE_CHILD INTEGER,
    I_SOURCE_BLOCK VARCHAR(30),
    I_SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_REF_BIND_UPD (
    I_FORM_CHILD INTEGER,
    I_FORM VARCHAR(30),
    I_BLOCK VARCHAR(30),
    I_REF INTEGER,
    I_DESTINATION_PARAM VARCHAR(30),
    I_SOURCE_CHILD INTEGER,
    I_SOURCE_BLOCK VARCHAR(30),
    I_SOURCE_PARAM VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CHILD_UPD (
    I_ID INTEGER,
    I_PANEL INTEGER,
    I_BLOCK VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_ORDER_NUM SMALLINT,
    I_PARAM_GROUP_ALIGN VARCHAR(30),
    I_PARAM_ALIGN VARCHAR(30),
    I_VISIBLE SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100),
    MAIN_PROCEDURE VARCHAR(30),
    MAIN_PROCEDURE_NAME VARCHAR(100),
    CUSTOM_CLASS VARCHAR(100),
    IS_MODAL SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_CR_D (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100),
    MAIN_PROCEDURE VARCHAR(30),
    CUSTOM_CLASS VARCHAR(100),
    IS_MODAL SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_DEL (
    I_ID VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_INS (
    I_ID VARCHAR(30),
    I_MAIN_PROCEDURE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_PANEL_CR (
    I_ID INTEGER,
    I_FORM D_IDENT)
RETURNS (
    ID INTEGER,
    FORM VARCHAR(30),
    CAPTION VARCHAR(100),
    PARENT INTEGER,
    ALIGN VARCHAR(30),
    INDEX_ON_PARENT INTEGER,
    L_ALIGN_NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_PANEL_CR_D (
    I_ID INTEGER)
RETURNS (
    ID INTEGER,
    FORM VARCHAR(30),
    CAPTION VARCHAR(100),
    PARENT INTEGER,
    ALIGN VARCHAR(30),
    INDEX_ON_PARENT INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$FORM_PANEL_DEL (
    I_ID INTEGER,
    I_FORM VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_PARENT INTEGER,
    I_ALIGN VARCHAR(30),
    I_INDEX_ON_PARENT INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_PANEL_INS (
    I_ID INTEGER,
    I_FORM VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_PARENT INTEGER,
    I_ALIGN VARCHAR(30),
    I_INDEX_ON_PARENT INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_PANEL_UPD (
    I_ID INTEGER,
    I_FORM VARCHAR(30),
    I_CAPTION VARCHAR(100),
    I_PARENT INTEGER,
    I_ALIGN VARCHAR(30),
    I_INDEX_ON_PARENT INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$FORM_UPD (
    I_ID VARCHAR(30),
    I_MAIN_PROCEDURE VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$GENERATE_BLOCK_BY_PROCEDURE (
    I_PROCEDURE_NAME D_IDENT,
    I_GENERATE_FORM D_BOOLEAN = 0,
    I_MENU_ITEM_PARENT INTEGER = null,
    I_MENU_ITEM_ORDER_NUM SMALLINT = null)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$GENERATE_EDITOR_FORM (
    I_TABLE_NAME D_IDENT,
    I_ACTION D_IDENT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$GENERATE_FORM_BY_PROCEDURE (
    I_PROCEDURE_NAME D_IDENT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$GENERATE_FORM_BY_TABLE (
    I_TABLE_NAME D_IDENT,
    I_GENERATE_FORM D_BOOLEAN = 0,
    I_GENERATE_EDITORS D_BOOLEAN = 1,
    I_MENU_ITEM_PARENT INTEGER = null,
    I_MENU_ITEM_ORDER_NUM SMALLINT = null)
RETURNS (
    O_SCRIPT VARCHAR(8000))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$GENERATE_TABLE_EDITORS (
    I_TABLE_NAME D_IDENT,
    I_INCLUDE_TERM D_BOOLEAN = 1)
RETURNS (
    O_SCRIPT VARCHAR(8000))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$GET_FIELD_TYPE_NAME (
    I_FIELD_NAME VARCHAR(30))
RETURNS (
    TYPE_NAME D_NAME)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$GET_TABLE_FIELDS (
    I_TABLE_NAME D_IDENT)
RETURNS (
    FIELD_NAME D_IDENT,
    FIELD_TYPE D_NAME,
    FIELD_DESCRIPTION VARCHAR(1000),
    FIELD_TYPE_FB INTEGER,
    FIELD_TYPE_NAME D_IDENT,
    INDEX_ON_KEY INTEGER,
    ORDER_NUM SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$GET_TABLE_FIELDS_STR (
    I_TABLE_NAME D_IDENT,
    I_FIELD_PREFIX VARCHAR(10),
    I_ADD_DATA_TYPE D_BOOLEAN,
    I_KEY_ONLY D_BOOLEAN = 0)
RETURNS (
    O_FIELDS VARCHAR(1000))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$GET_TABLE_LINKS (
    I_TABLE_NAME D_IDENT)
RETURNS (
    FK_NAME D_IDENT,
    LINKS_TO_TABLE D_IDENT,
    LINKS_TO_PROCEDURE D_IDENT,
    FIELD_NAME D_IDENT,
    LINKS_TO_FIELD D_IDENT,
    FIELD_POSITION SMALLINT,
    LINK_INDEX SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$GRID_STYLE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$MENU_ITEM_CR (
    I_ID INTEGER = null,
    I_PARENT INTEGER = null,
    I_FND D_NAME = null)
RETURNS (
    ID INTEGER,
    NAME VARCHAR(100),
    ITEM_TYPE VARCHAR(30),
    PARENT INTEGER,
    "BLOCK" VARCHAR(30),
    ORDER_NUM INTEGER,
    L_PARENT_NAME VARCHAR(100),
    L_ITEM_TYPE_NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$MENU_ITEM_CR_D (
    I_ID INTEGER)
RETURNS (
    ID INTEGER,
    NAME VARCHAR(100),
    ITEM_TYPE VARCHAR(30),
    PARENT INTEGER,
    "BLOCK" VARCHAR(30),
    ORDER_NUM INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$MENU_ITEM_DEL (
    I_ID INTEGER,
    I_NAME VARCHAR(100),
    I_ITEM_TYPE VARCHAR(30),
    I_PARENT INTEGER,
    I_BLOCK VARCHAR(30),
    I_ORDER_NUM INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$MENU_ITEM_INS (
    I_ID INTEGER,
    I_NAME VARCHAR(100),
    I_ITEM_TYPE VARCHAR(30),
    I_PARENT INTEGER,
    I_BLOCK VARCHAR(30),
    I_ORDER_NUM INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$MENU_ITEM_UPD (
    I_ID INTEGER,
    I_NAME VARCHAR(100),
    I_ITEM_TYPE VARCHAR(30),
    I_PARENT INTEGER,
    I_BLOCK VARCHAR(30),
    I_ORDER_NUM INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$PANEL_ALIGN_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$PARAM_ALIGN_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$PARAM_DIRECTION_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$PROCEDURE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100),
    CUSTOM_CLASS VARCHAR(100),
    PROCEDURE_NAME VARCHAR(30),
    IS_GRID_FOR_TABLE VARCHAR(30),
    IS_MODAL SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$PROCEDURE_CR_D (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100),
    CUSTOM_CLASS VARCHAR(100),
    PROCEDURE_NAME VARCHAR(30),
    IS_GRID_FOR_TABLE VARCHAR(30),
    IS_MODAL SMALLINT)
AS
BEGIN
  SUSPEND;
END^





CREATE OR ALTER PROCEDURE UI$PROCEDURE_DEL (
    I_ID VARCHAR(30))
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$PROCEDURE_INS (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_PROCEDURE_NAME VARCHAR(30),
    I_IS_GRID_FOR_TABLE VARCHAR(30),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$PROCEDURE_UPD (
    I_ID VARCHAR(30),
    I_NAME VARCHAR(100),
    I_CUSTOM_CLASS VARCHAR(100),
    I_PROCEDURE_NAME VARCHAR(30),
    I_IS_GRID_FOR_TABLE VARCHAR(30),
    I_IS_MODAL SMALLINT)
AS
BEGIN
  EXIT;
END^





CREATE OR ALTER PROCEDURE UI$REFRESH_MODE_CR (
    I_ID VARCHAR(30))
RETURNS (
    ID VARCHAR(30),
    NAME VARCHAR(100))
AS
BEGIN
  SUSPEND;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE IBE$PARAMS_HISTORY (
    IBE$PH_PROCEDURE_NAME  VARCHAR(67) CHARACTER SET UNICODE_FSS NOT NULL,
    IBE$PH_PARAMS          BLOB SUB_TYPE 0 SEGMENT SIZE 80
);

CREATE TABLE IBE$VERSION_HISTORY (
    IBE$VH_ID           INTEGER NOT NULL,
    IBE$VH_MODIFY_DATE  TIMESTAMP NOT NULL,
    IBE$VH_USER_NAME    VARCHAR(67),
    IBE$VH_OBJECT_TYPE  SMALLINT NOT NULL,
    IBE$VH_OBJECT_NAME  VARCHAR(67) NOT NULL,
    IBE$VH_HEADER       BLOB SUB_TYPE 0 SEGMENT SIZE 80,
    IBE$VH_BODY         BLOB SUB_TYPE 0 SEGMENT SIZE 80,
    IBE$VH_DESCRIPTION  BLOB SUB_TYPE 1 SEGMENT SIZE 80
);

CREATE TABLE UI$ACTION_BIND (
    "BLOCK"            D_IDENT NOT NULL,
    "ACTION"           D_IDENT NOT NULL,
    PARAM              D_IDENT NOT NULL,
    DESTINATION_PARAM  D_IDENT NOT NULL
);

CREATE TABLE UI$ACTION_STYLE (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$BLOCK (
    ID            D_IDENT NOT NULL,
    BLOCK_TYPE    D_IDENT NOT NULL,
    NAME          D_NAME NOT NULL,
    CUSTOM_CLASS  D_NAME,
    IS_MODAL      D_BOOLEAN DEFAULT 0 NOT NULL
);

CREATE TABLE UI$BLOCK_ACTION (
    ID            D_IDENT NOT NULL,
    "BLOCK"       D_IDENT NOT NULL,
    CAPTION       D_NAME NOT NULL,
    LINKS_TO      D_IDENT,
    ACTION_STYLE  D_IDENT NOT NULL,
    IMAGE_INDEX   INTEGER,
    ORDER_NUM     SMALLINT NOT NULL,
    REFRESH_MODE  D_IDENT DEFAULT 'none' NOT NULL
);

CREATE TABLE UI$BLOCK_PARAM (
    "BLOCK"          D_IDENT NOT NULL,
    PARAM            D_IDENT NOT NULL,
    PARAM_DIRECTION  D_IDENT NOT NULL,
    DATA_TYPE        D_IDENT NOT NULL,
    CAPTION          D_NAME NOT NULL,
    ORDER_NUM        SMALLINT,
    VISIBLE          D_BOOLEAN DEFAULT 1 NOT NULL,
    REQUIRED         D_BOOLEAN DEFAULT 0 NOT NULL,
    GROUP_NAME       D_NAME,
    ENABLER_PARAM    D_IDENT,
    SOURCE_FORM      D_IDENT,
    SOURCE_BLOCK     D_IDENT,
    SOURCE_CHILD     INTEGER,
    SOURCE_PARAM     D_IDENT,
    INDEX_IN_KEY     SMALLINT,
    INDEX_IN_PARENT  SMALLINT,
    INDEX_IN_NAME    SMALLINT,
    READ_ONLY        D_BOOLEAN DEFAULT 0 NOT NULL,
    CALL_ORDER_NUM   SMALLINT
);

CREATE TABLE UI$BLOCK_REF (
    ID       INTEGER NOT NULL,
    "BLOCK"  D_IDENT NOT NULL,
    REFS_TO  D_IDENT NOT NULL
);

CREATE TABLE UI$BLOCK_REF_BIND (
    REF                INTEGER NOT NULL,
    "BLOCK"            D_IDENT NOT NULL,
    DESTINATION_PARAM  D_IDENT NOT NULL,
    SOURCE_PARAM       D_IDENT NOT NULL
);

CREATE TABLE UI$BLOCK_REF_PARAM (
    REF            INTEGER NOT NULL,
    "BLOCK"        D_IDENT NOT NULL,
    PARAM          D_IDENT NOT NULL,
    ORDER_NUM      SMALLINT NOT NULL,
    IS_MAIN_PARAM  D_BOOLEAN NOT NULL
);

CREATE TABLE UI$BLOCK_TYPE (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$DATA_TYPE (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$DEFAULT_ACTION (
    ID            D_IDENT NOT NULL,
    NAME          D_NAME NOT NULL,
    NAME_IN_CODE  D_IDENT NOT NULL,
    REFRESH_MODE  D_IDENT NOT NULL,
    IMAGE_INDEX   SMALLINT,
    ORDER_NUM     SMALLINT NOT NULL
);

CREATE TABLE UI$FIELD_TYPE_FB (
    DATA_TYPE   D_IDENT NOT NULL,
    FB_TYPE_ID  SMALLINT NOT NULL
);

CREATE TABLE UI$FORM (
    ID              D_IDENT NOT NULL,
    MAIN_PROCEDURE  D_IDENT,
    HEADER_VISIBLE  D_BOOLEAN DEFAULT 0 NOT NULL
);

CREATE TABLE UI$FORM_CHILD (
    ID                 INTEGER NOT NULL,
    FORM               D_IDENT NOT NULL,
    PANEL              INTEGER NOT NULL,
    "BLOCK"            D_IDENT NOT NULL,
    CAPTION            D_NAME,
    VISIBLE            D_BOOLEAN DEFAULT 1 NOT NULL,
    ORDER_NUM          SMALLINT,
    PARAM_GROUP_ALIGN  D_IDENT DEFAULT 'horizontal' NOT NULL,
    PARAM_ALIGN        D_IDENT DEFAULT 'horizontal' NOT NULL
);

CREATE TABLE UI$FORM_CHILD_PARAM (
    FORM_CHILD    INTEGER NOT NULL,
    PARAM         D_IDENT NOT NULL,
    FORM          D_IDENT NOT NULL,
    "BLOCK"       D_IDENT NOT NULL,
    VISIBLE       D_BOOLEAN,
    REQUIRED      D_BOOLEAN,
    READ_ONLY     D_BOOLEAN,
    SOURCE_BLOCK  D_IDENT,
    SOURCE_CHILD  INTEGER,
    SOURCE_PARAM  D_IDENT,
    AUTO_REFRESH  D_BOOLEAN
);

CREATE TABLE UI$FORM_CHILD_REF_BIND (
    FORM_CHILD         INTEGER NOT NULL,
    FORM               D_IDENT NOT NULL,
    "BLOCK"            D_IDENT NOT NULL,
    REF                INTEGER NOT NULL,
    DESTINATION_PARAM  D_IDENT NOT NULL,
    SOURCE_CHILD       INTEGER,
    SOURCE_BLOCK       D_IDENT NOT NULL,
    SOURCE_PARAM       D_IDENT NOT NULL
);

CREATE TABLE UI$FORM_PANEL (
    ID               INTEGER NOT NULL,
    FORM             D_IDENT NOT NULL,
    CAPTION          D_NAME,
    PARENT           INTEGER,
    ALIGN            D_IDENT NOT NULL,
    INDEX_ON_PARENT  INTEGER
);

CREATE TABLE UI$GRID_STYLE (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$MENU_ITEM (
    ID         INTEGER NOT NULL,
    NAME       D_NAME NOT NULL,
    ITEM_TYPE  D_IDENT NOT NULL,
    PARENT     INTEGER,
    "BLOCK"    D_IDENT,
    ORDER_NUM  INTEGER
);

CREATE TABLE UI$MENU_ITEM_TYPE (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$PANEL_ALIGN (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$PARAM_ALIGN (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$PARAM_DIRECTION (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

CREATE TABLE UI$PROCEDURE (
    ID                 D_IDENT NOT NULL,
    PROCEDURE_NAME     D_IDENT NOT NULL,
    IS_GRID_FOR_TABLE  D_IDENT
);

CREATE TABLE UI$REFRESH_MODE (
    ID    D_IDENT NOT NULL,
    NAME  D_NAME NOT NULL
);

