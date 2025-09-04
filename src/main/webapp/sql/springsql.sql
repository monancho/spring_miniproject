--------------------------------------------------------
--  ������ ������ - �����-9��-04-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 172 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."COMMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARDTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOARDTBL" 
   (	"BTITLE" VARCHAR2(64 BYTE), 
	"BCONTENT" VARCHAR2(256 BYTE), 
	"BWRITER" VARCHAR2(20 BYTE), 
	"BHIT" NUMBER, 
	"BDATE" DATE DEFAULT sysdate, 
	"BNUM" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COMMENTTBL" 
   (	"CNUM" NUMBER, 
	"BNUM" NUMBER, 
	"MEMBERID" VARCHAR2(20 BYTE), 
	"CCONTENT" VARCHAR2(500 BYTE), 
	"CDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBERTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MEMBERTBL" 
   (	"MEMBERNUM" VARCHAR2(20 BYTE), 
	"MEMBERID" VARCHAR2(20 BYTE), 
	"MEMBERPW" VARCHAR2(20 BYTE), 
	"MEMBERNAME" VARCHAR2(20 BYTE), 
	"MEMBERDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BOARDTBL
SET DEFINE OFF;
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('ù���� ����','ù���� ����','tiger',4,to_date('25/09/01','RR/MM/DD'),2);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('ddd','ddd','tiger',14,to_date('25/09/01','RR/MM/DD'),9);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('�̰��� ����°','�̰��� ����°','tiger',6,to_date('25/09/01','RR/MM/DD'),7);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('������','������','tiger',1,to_date('25/09/02','RR/MM/DD'),11);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('e1e','e1e','tiger',2,to_date('25/09/01','RR/MM/DD'),10);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('qrf','qrf','tiger',2,to_date('25/09/01','RR/MM/DD'),8);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.1','���� ����1��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),15);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.2','���� ����2��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),16);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.3','���� ����3��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),17);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.4','���� ����4��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),18);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.5','���� ����5��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),19);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.6','���� ����6��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),20);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.7','���� ����7��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),21);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.8','���� ����8��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),22);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.9','���� ����9��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),23);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.10','���� ����10��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),24);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.11','���� ����11��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),25);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.12','���� ����12��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),26);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.13','���� ����13��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),27);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.14','���� ����14��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),28);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.15','���� ����15��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),29);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.16','���� ����16��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),30);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.17','���� ����17��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),31);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.18','���� ����18��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),32);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.19','���� ����19��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),33);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.20','���� ����20��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),34);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.21','���� ����21��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),35);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.22','���� ����22��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),36);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.23','���� ����23��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),37);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.24','���� ����24��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),38);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.25','���� ����25��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),39);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.26','���� ����26��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),40);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.27','���� ����27��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),41);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.28','���� ����28��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),42);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.29','���� ����29��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),43);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.30','���� ����30��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),44);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.31','���� ����31��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),45);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.32','���� ����32��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),46);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.33','���� ����33��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),47);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.34','���� ����34��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),48);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.35','���� ����35��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),49);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.36','���� ����36��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),50);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.37','���� ����37��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),51);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.38','���� ����38��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),52);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.39','���� ����39��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),53);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.40','���� ����40��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),54);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.41','���� ����41��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),55);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.42','���� ����42��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),56);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.43','���� ����43��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),57);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.44','���� ����44��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),58);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.45','���� ����45��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),59);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.46','���� ����46��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),60);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.47','���� ����47��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),61);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.48','���� ����48��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),62);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.49','���� ����49��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),63);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.50','���� ����50��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),64);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.51','���� ����51��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),65);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.52','���� ����52��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),66);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.53','���� ����53��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),67);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.54','���� ����54��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),68);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.55','���� ����55��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),69);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.56','���� ����56��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),70);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.57','���� ����57��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),71);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.58','���� ����58��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),72);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.59','���� ����59��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),73);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.60','���� ����60��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),74);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.61','���� ����61��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),75);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.62','���� ����62��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),76);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.63','���� ����63��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),77);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.64','���� ����64��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),78);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.65','���� ����65��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),79);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.66','���� ����66��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),80);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.67','���� ����67��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),81);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.68','���� ����68��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),82);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.69','���� ����69��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),83);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.70','���� ����70��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),84);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.71','���� ����71��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),85);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.72','���� ����72��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),86);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.73','���� ����73��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),87);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.74','���� ����74��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),88);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.75','���� ����75��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),89);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.76','���� ����76��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),90);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.77','���� ����77��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),91);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.78','���� ����78��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),92);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.79','���� ����79��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),93);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.80','���� ����80��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),94);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.81','���� ����81��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),95);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.82','���� ����82��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),96);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.83','���� ����83��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),97);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.84','���� ����84��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),98);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.85','���� ����85��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),99);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.86','���� ����86��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),100);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.87','���� ����87��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),101);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.88','���� ����88��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),102);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.89','���� ����89��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),103);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.90','���� ����90��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),104);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.91','���� ����91��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),105);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.92','���� ����92��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),106);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.93','���� ����93��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),107);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.94','���� ����94��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),108);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.95','���� ����95��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),109);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.96','���� ����96��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),110);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.97','���� ����97��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),111);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.98','���� ����98��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),112);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.99','���� ����99��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),113);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.100','���� ����100��° �� �Դϴ�.','tiger',3,to_date('25/09/02','RR/MM/DD'),114);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.101','���� ����101��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),115);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.102','���� ����102��° �� �Դϴ�.','tiger',2,to_date('25/09/02','RR/MM/DD'),116);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ����','���� ����','tiger',57,to_date('25/09/03','RR/MM/DD'),169);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('������','������','tiger',4,to_date('25/09/03','RR/MM/DD'),167);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.105','���� ����105��° �� �Դϴ�.','tiger',2,to_date('25/09/02','RR/MM/DD'),119);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.106','���� ����106��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),120);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.107','���� ����107��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),121);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.108','���� ����108��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),122);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.109','���� ����109��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),123);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.110','���� ����110��° �� �Դϴ�.','tiger',3,to_date('25/09/02','RR/MM/DD'),124);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.111','���� ����111��° �� �Դϴ�.','tiger',2,to_date('25/09/02','RR/MM/DD'),125);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.112','���� ����112��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),126);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.113','���� ����113��° �� �Դϴ�.','tiger',3,to_date('25/09/02','RR/MM/DD'),127);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.114','���� ����114��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),128);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.115','���� ����115��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),129);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.116','���� ����116��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),130);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.117','���� ����117��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),131);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.118','���� ����118��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),132);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.119','���� ����119��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),133);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.120','���� ����120��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),134);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.121','���� ����121��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),135);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.122','���� ����122��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),136);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.123','���� ����123��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),137);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.124','���� ����124��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),138);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.125','���� ����125��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),139);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.126','���� ����126��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),140);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.127','���� ����127��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),141);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.128','���� ����128��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),142);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.129','���� ����129��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),143);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.130','���� ����130��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),144);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.131','���� ����131��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),145);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.132','���� ����132��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),146);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.133','���� ����133��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),147);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.134','���� ����134��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),148);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.135','���� ����135��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),149);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.136','���� ����136��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),150);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.137','���� ����137��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),151);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.138','���� ����138��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),152);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.139','���� ����139��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),153);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.140','���� ����140��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),154);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.141','���� ����141��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),155);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.142','���� ����142��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),156);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.143','���� ����143��° �� �Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'),157);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.144','���� ����144��° �� �Դϴ�.','tiger',1,to_date('25/09/02','RR/MM/DD'),158);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.145','���� ����145��° �� �Դϴ�.','tiger',4,to_date('25/09/02','RR/MM/DD'),159);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.146','���� ����146��° �� �Դϴ�.','tiger',2,to_date('25/09/02','RR/MM/DD'),160);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.147','���� ����147��° �� �Դϴ�.','tiger',4,to_date('25/09/02','RR/MM/DD'),161);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.148','���� ����148��° �� �Դϴ�.','tiger',3,to_date('25/09/02','RR/MM/DD'),162);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.149tnwj','���� ����149��° �� �Դϴ�.sfg','tiger',15,to_date('25/09/02','RR/MM/DD'),163);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� ���� ����.150 ����','���� ����150��° �� �Դϴ�. ���� ��� Ȯ���Դϴ�','tiger',35,to_date('25/09/02','RR/MM/DD'),164);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('���� 10��','10���� ����','tiger',4,to_date('25/10/01','RR/MM/DD'),168);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('�������Դϴ�','���೻���!!','tiger88',1,to_date('25/09/11','RR/MM/DD'),170);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('�������Դϴ�','1111','tiger88',1,to_date('25/09/19','RR/MM/DD'),171);
REM INSERTING into SYSTEM.COMMENTTBL
SET DEFINE OFF;
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (1,169,'tiger','���� ����',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (2,169,'tiger','���� ����',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (5,164,'tiger88','�ȳ��ϼ���',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (6,164,'tiger88','�ȳ��ϼ���2',to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.MEMBERTBL
SET DEFINE OFF;
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('4','tiger','12345','�̼���',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('2','tiger22','12345','������',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('7','cat12','12345','�����',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('1','lion','99999','�̼���',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('3','hong12','9999','ȫ�浿',to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('9','tiger88','12345','ȫ�浿',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('8','cat111','12345','�����111',to_date('25/09/03','RR/MM/DD'));
