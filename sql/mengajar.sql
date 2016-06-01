--------------------------------------------------------
--  File created - Wednesday-June-01-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MENGAJAR
--------------------------------------------------------

  CREATE TABLE "HR"."MENGAJAR" 
   (	"ID" VARCHAR2(20 BYTE), 
	"KODE_MK" VARCHAR2(20 BYTE), 
	"WAKTU" VARCHAR2(20 BYTE), 
	"RUANG" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MENGAJAR
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table MENGAJAR
--------------------------------------------------------

  ALTER TABLE "HR"."MENGAJAR" MODIFY ("RUANG" NOT NULL ENABLE);
  ALTER TABLE "HR"."MENGAJAR" MODIFY ("WAKTU" NOT NULL ENABLE);
  ALTER TABLE "HR"."MENGAJAR" MODIFY ("KODE_MK" NOT NULL ENABLE);
  ALTER TABLE "HR"."MENGAJAR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MENGAJAR
--------------------------------------------------------

  ALTER TABLE "HR"."MENGAJAR" ADD CONSTRAINT "DSN_ID" FOREIGN KEY ("ID")
	  REFERENCES "HR"."DOSEN" ("ID") ENABLE;
  ALTER TABLE "HR"."MENGAJAR" ADD CONSTRAINT "MK_KD_MK" FOREIGN KEY ("KODE_MK")
	  REFERENCES "HR"."MATAKULIAH" ("KD_MK") ENABLE;
