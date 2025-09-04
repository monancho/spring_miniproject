--------------------------------------------------------
--  파일이 생성됨 - 목요일-9월-04-2025   
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
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('첫번쨰 제목','첫번쨰 제목','tiger',4,to_date('25/09/01','RR/MM/DD'),2);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('ddd','ddd','tiger',14,to_date('25/09/01','RR/MM/DD'),9);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('이것은 세번째','이것은 세번째','tiger',6,to_date('25/09/01','RR/MM/DD'),7);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('글제목','글제목','tiger',1,to_date('25/09/02','RR/MM/DD'),11);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('e1e','e1e','tiger',2,to_date('25/09/01','RR/MM/DD'),10);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('qrf','qrf','tiger',2,to_date('25/09/01','RR/MM/DD'),8);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.1','연습 더미1번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),15);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.2','연습 더미2번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),16);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.3','연습 더미3번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),17);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.4','연습 더미4번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),18);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.5','연습 더미5번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),19);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.6','연습 더미6번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),20);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.7','연습 더미7번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),21);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.8','연습 더미8번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),22);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.9','연습 더미9번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),23);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.10','연습 더미10번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),24);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.11','연습 더미11번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),25);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.12','연습 더미12번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),26);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.13','연습 더미13번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),27);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.14','연습 더미14번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),28);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.15','연습 더미15번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),29);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.16','연습 더미16번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),30);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.17','연습 더미17번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),31);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.18','연습 더미18번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),32);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.19','연습 더미19번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),33);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.20','연습 더미20번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),34);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.21','연습 더미21번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),35);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.22','연습 더미22번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),36);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.23','연습 더미23번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),37);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.24','연습 더미24번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),38);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.25','연습 더미25번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),39);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.26','연습 더미26번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),40);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.27','연습 더미27번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),41);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.28','연습 더미28번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),42);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.29','연습 더미29번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),43);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.30','연습 더미30번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),44);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.31','연습 더미31번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),45);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.32','연습 더미32번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),46);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.33','연습 더미33번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),47);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.34','연습 더미34번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),48);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.35','연습 더미35번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),49);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.36','연습 더미36번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),50);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.37','연습 더미37번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),51);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.38','연습 더미38번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),52);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.39','연습 더미39번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),53);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.40','연습 더미40번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),54);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.41','연습 더미41번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),55);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.42','연습 더미42번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),56);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.43','연습 더미43번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),57);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.44','연습 더미44번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),58);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.45','연습 더미45번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),59);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.46','연습 더미46번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),60);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.47','연습 더미47번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),61);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.48','연습 더미48번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),62);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.49','연습 더미49번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),63);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.50','연습 더미50번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),64);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.51','연습 더미51번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),65);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.52','연습 더미52번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),66);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.53','연습 더미53번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),67);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.54','연습 더미54번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),68);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.55','연습 더미55번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),69);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.56','연습 더미56번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),70);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.57','연습 더미57번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),71);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.58','연습 더미58번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),72);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.59','연습 더미59번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),73);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.60','연습 더미60번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),74);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.61','연습 더미61번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),75);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.62','연습 더미62번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),76);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.63','연습 더미63번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),77);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.64','연습 더미64번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),78);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.65','연습 더미65번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),79);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.66','연습 더미66번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),80);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.67','연습 더미67번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),81);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.68','연습 더미68번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),82);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.69','연습 더미69번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),83);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.70','연습 더미70번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),84);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.71','연습 더미71번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),85);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.72','연습 더미72번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),86);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.73','연습 더미73번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),87);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.74','연습 더미74번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),88);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.75','연습 더미75번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),89);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.76','연습 더미76번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),90);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.77','연습 더미77번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),91);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.78','연습 더미78번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),92);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.79','연습 더미79번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),93);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.80','연습 더미80번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),94);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.81','연습 더미81번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),95);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.82','연습 더미82번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),96);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.83','연습 더미83번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),97);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.84','연습 더미84번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),98);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.85','연습 더미85번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),99);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.86','연습 더미86번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),100);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.87','연습 더미87번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),101);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.88','연습 더미88번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),102);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.89','연습 더미89번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),103);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.90','연습 더미90번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),104);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.91','연습 더미91번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),105);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.92','연습 더미92번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),106);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.93','연습 더미93번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),107);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.94','연습 더미94번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),108);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.95','연습 더미95번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),109);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.96','연습 더미96번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),110);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.97','연습 더미97번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),111);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.98','연습 더미98번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),112);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.99','연습 더미99번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),113);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.100','연습 더미100번째 글 입니다.','tiger',3,to_date('25/09/02','RR/MM/DD'),114);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.101','연습 더미101번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),115);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.102','연습 더미102번째 글 입니다.','tiger',2,to_date('25/09/02','RR/MM/DD'),116);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('오늘 예약','오늘 예약','tiger',57,to_date('25/09/03','RR/MM/DD'),169);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('ㅁㄴㄹ','ㅁㄴㄹ','tiger',4,to_date('25/09/03','RR/MM/DD'),167);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.105','연습 더미105번째 글 입니다.','tiger',2,to_date('25/09/02','RR/MM/DD'),119);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.106','연습 더미106번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),120);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.107','연습 더미107번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),121);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.108','연습 더미108번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),122);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.109','연습 더미109번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),123);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.110','연습 더미110번째 글 입니다.','tiger',3,to_date('25/09/02','RR/MM/DD'),124);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.111','연습 더미111번째 글 입니다.','tiger',2,to_date('25/09/02','RR/MM/DD'),125);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.112','연습 더미112번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),126);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.113','연습 더미113번째 글 입니다.','tiger',3,to_date('25/09/02','RR/MM/DD'),127);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.114','연습 더미114번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),128);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.115','연습 더미115번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),129);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.116','연습 더미116번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),130);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.117','연습 더미117번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),131);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.118','연습 더미118번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),132);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.119','연습 더미119번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),133);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.120','연습 더미120번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),134);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.121','연습 더미121번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),135);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.122','연습 더미122번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),136);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.123','연습 더미123번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),137);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.124','연습 더미124번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),138);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.125','연습 더미125번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),139);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.126','연습 더미126번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),140);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.127','연습 더미127번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),141);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.128','연습 더미128번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),142);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.129','연습 더미129번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),143);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.130','연습 더미130번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),144);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.131','연습 더미131번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),145);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.132','연습 더미132번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),146);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.133','연습 더미133번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),147);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.134','연습 더미134번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),148);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.135','연습 더미135번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),149);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.136','연습 더미136번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),150);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.137','연습 더미137번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),151);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.138','연습 더미138번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),152);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.139','연습 더미139번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),153);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.140','연습 더미140번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),154);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.141','연습 더미141번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),155);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.142','연습 더미142번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),156);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.143','연습 더미143번째 글 입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'),157);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.144','연습 더미144번째 글 입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'),158);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.145','연습 더미145번째 글 입니다.','tiger',4,to_date('25/09/02','RR/MM/DD'),159);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.146','연습 더미146번째 글 입니다.','tiger',2,to_date('25/09/02','RR/MM/DD'),160);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.147','연습 더미147번째 글 입니다.','tiger',4,to_date('25/09/02','RR/MM/DD'),161);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.148','연습 더미148번째 글 입니다.','tiger',3,to_date('25/09/02','RR/MM/DD'),162);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.149tnwj','연습 더미149번째 글 입니다.sfg','tiger',15,to_date('25/09/02','RR/MM/DD'),163);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습 더미 제목.150 수정','연습 더미150번째 글 입니다. 수정 기능 확인입니다','tiger',35,to_date('25/09/02','RR/MM/DD'),164);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('예약 10월','10월에 예약','tiger',4,to_date('25/10/01','RR/MM/DD'),168);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습글입니다','예약내용글!!','tiger88',1,to_date('25/09/11','RR/MM/DD'),170);
Insert into SYSTEM.BOARDTBL (BTITLE,BCONTENT,BWRITER,BHIT,BDATE,BNUM) values ('연습글입니다','1111','tiger88',1,to_date('25/09/19','RR/MM/DD'),171);
REM INSERTING into SYSTEM.COMMENTTBL
SET DEFINE OFF;
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (1,169,'tiger','덧글 실험',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (2,169,'tiger','덧글 실험',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (5,164,'tiger88','안녕하세요',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.COMMENTTBL (CNUM,BNUM,MEMBERID,CCONTENT,CDATE) values (6,164,'tiger88','안녕하세요2',to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.MEMBERTBL
SET DEFINE OFF;
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('4','tiger','12345','이성계',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('2','tiger22','12345','강감찬',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('7','cat12','12345','고양이',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('1','lion','99999','이순신',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('3','hong12','9999','홍길동',to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('9','tiger88','12345','홍길동',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values ('8','cat111','12345','고양이111',to_date('25/09/03','RR/MM/DD'));
