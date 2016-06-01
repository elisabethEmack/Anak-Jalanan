--------------------------------------------------------
--  File created - Wednesday-June-01-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MENGAMBIL
--------------------------------------------------------

  CREATE TABLE "HR"."MENGAMBIL" 
   (	"NIM" VARCHAR2(10 BYTE), 
	"KD_MK" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MENGAMBIL
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table MENGAMBIL
--------------------------------------------------------

  ALTER TABLE "HR"."MENGAMBIL" MODIFY ("KD_MK" NOT NULL ENABLE);
  ALTER TABLE "HR"."MENGAMBIL" MODIFY ("NIM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MENGAMBIL
--------------------------------------------------------

  ALTER TABLE "HR"."MENGAMBIL" ADD CONSTRAINT "MHS_NIM_FK" FOREIGN KEY ("NIM")
	  REFERENCES "HR"."MAHASISWA" ("NIM") ENABLE;
  ALTER TABLE "HR"."MENGAMBIL" ADD CONSTRAINT "MK_KD_MK_FK" FOREIGN KEY ("KD_MK")
	  REFERENCES "HR"."MATAKULIAH" ("KD_MK") ENABLE;
