/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : bookstore
Source Server Version : 100200
Source Host           : localhost:1521
Source Schema         : ROOT

Target Server Type    : ORACLE
Target Server Version : 100200
File Encoding         : 65001

Date: 2019-03-20 10:35:11
*/


-- ----------------------------
-- Table structure for BOOK_TYPE
-- ----------------------------
DROP TABLE "ROOT"."BOOK_TYPE";
CREATE TABLE "ROOT"."BOOK_TYPE" (
"ID" NUMBER(10) NOT NULL ,
"TYPENAME" VARCHAR2(255 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BOOK_TYPE
-- ----------------------------

-- ----------------------------
-- Table structure for TBL_BOOK
-- ----------------------------
DROP TABLE "ROOT"."TBL_BOOK";
CREATE TABLE "ROOT"."TBL_BOOK" (
"ID" NUMBER(10) NOT NULL ,
"BOOKNAME" VARCHAR2(255 CHAR) NULL ,
"CREATEDATE" TIMESTAMP(6)  NULL ,
"IMGURL" VARCHAR2(255 CHAR) NULL ,
"NUM" NUMBER(10) NULL ,
"PRICE" FLOAT NULL ,
"SALEGRADE" NUMBER(10) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TBL_BOOK
-- ----------------------------
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('10', '时间线', TO_TIMESTAMP(' 2018-12-03 13:04:41:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book04.jpg', '1500', '15', '3');
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('4', '感官品牌：隐藏在购买背后的感官秘密（珍藏版）', TO_TIMESTAMP(' 2019-01-23 16:30:49:790000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book03.jpg', '320', '39.9', '3');
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('5', '追光之路 用心解读风光摄影', TO_TIMESTAMP(' 2019-01-23 16:30:49:790000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book01.jpg', '1600', '45', '4');
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('6', '非洲归来 不必远方', TO_TIMESTAMP(' 2019-01-23 16:30:49:790000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book02.jpg', '960', '12.2', '5');
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('7', '魔鬼经济学', TO_TIMESTAMP(' 2018-12-19 19:33:21:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book08.jpg', '1290', '29.2', '1');
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('8', '你的善良必锋芒须有点', TO_TIMESTAMP(' 2018-12-02 19:34:33:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book07.jpg', '2233', '25', '4');
INSERT INTO "ROOT"."TBL_BOOK" VALUES ('9', '天才在左,疯子在右', TO_TIMESTAMP(' 2018-10-16 19:35:56:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '/img/book06.jpg', '3331', '32.9', '2');

-- ----------------------------
-- Table structure for TBL_MEMBER
-- ----------------------------
DROP TABLE "ROOT"."TBL_MEMBER";
CREATE TABLE "ROOT"."TBL_MEMBER" (
"ID" NUMBER(10) NOT NULL ,
"IDENTIFY" NUMBER(10) NULL ,
"MEMNAME" VARCHAR2(255 CHAR) NULL ,
"PASSWORD" VARCHAR2(255 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TBL_MEMBER
-- ----------------------------
INSERT INTO "ROOT"."TBL_MEMBER" VALUES ('1', '1', 'kirito', 'kirito');
INSERT INTO "ROOT"."TBL_MEMBER" VALUES ('2', '0', 'admin', 'admin');

-- ----------------------------
-- Table structure for TBL_SHOPCAR
-- ----------------------------
DROP TABLE "ROOT"."TBL_SHOPCAR";
CREATE TABLE "ROOT"."TBL_SHOPCAR" (
"ID" NUMBER(10) NOT NULL ,
"FLAG" NUMBER(10) NULL ,
"NUM" NUMBER(10) NULL ,
"BOOKID_ID" NUMBER(10) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TBL_SHOPCAR
-- ----------------------------
INSERT INTO "ROOT"."TBL_SHOPCAR" VALUES ('48', '0', '2', '7');
INSERT INTO "ROOT"."TBL_SHOPCAR" VALUES ('51', '0', '1', '5');
INSERT INTO "ROOT"."TBL_SHOPCAR" VALUES ('47', '0', '1', '8');
INSERT INTO "ROOT"."TBL_SHOPCAR" VALUES ('52', '0', '1', '10');

-- ----------------------------
-- Table structure for TBL_USER
-- ----------------------------
DROP TABLE "ROOT"."TBL_USER";
CREATE TABLE "ROOT"."TBL_USER" (
"ID" NUMBER(10) NOT NULL ,
"IDENTIFY" NUMBER(10) NULL ,
"NAME" VARCHAR2(255 CHAR) NULL ,
"PASSWORD" VARCHAR2(255 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TBL_USER
-- ----------------------------

-- ----------------------------
-- Sequence structure for HIBERNATE_SEQUENCE
-- ----------------------------
DROP SEQUENCE "ROOT"."HIBERNATE_SEQUENCE";
CREATE SEQUENCE "ROOT"."HIBERNATE_SEQUENCE"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 999999999999999999999999999
 START WITH 61
 CACHE 20;

-- ----------------------------
-- Indexes structure for table BOOK_TYPE
-- ----------------------------

-- ----------------------------
-- Checks structure for table BOOK_TYPE
-- ----------------------------
ALTER TABLE "ROOT"."BOOK_TYPE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table BOOK_TYPE
-- ----------------------------
ALTER TABLE "ROOT"."BOOK_TYPE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TBL_BOOK
-- ----------------------------

-- ----------------------------
-- Checks structure for table TBL_BOOK
-- ----------------------------
ALTER TABLE "ROOT"."TBL_BOOK" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TBL_BOOK
-- ----------------------------
ALTER TABLE "ROOT"."TBL_BOOK" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TBL_MEMBER
-- ----------------------------

-- ----------------------------
-- Checks structure for table TBL_MEMBER
-- ----------------------------
ALTER TABLE "ROOT"."TBL_MEMBER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TBL_MEMBER
-- ----------------------------
ALTER TABLE "ROOT"."TBL_MEMBER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TBL_SHOPCAR
-- ----------------------------

-- ----------------------------
-- Checks structure for table TBL_SHOPCAR
-- ----------------------------
ALTER TABLE "ROOT"."TBL_SHOPCAR" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TBL_SHOPCAR
-- ----------------------------
ALTER TABLE "ROOT"."TBL_SHOPCAR" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table TBL_USER
-- ----------------------------

-- ----------------------------
-- Checks structure for table TBL_USER
-- ----------------------------
ALTER TABLE "ROOT"."TBL_USER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TBL_USER
-- ----------------------------
ALTER TABLE "ROOT"."TBL_USER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Foreign Key structure for table "ROOT"."TBL_SHOPCAR"
-- ----------------------------
ALTER TABLE "ROOT"."TBL_SHOPCAR" ADD FOREIGN KEY ("BOOKID_ID") REFERENCES "ROOT"."TBL_BOOK" ("ID");
