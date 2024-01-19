-- 추후 테이블 추가
-- 회원
CREATE TABLE MEMBER
(
    ID       VARCHAR2(20) PRIMARY KEY, -- 아이디
    PASSWORD VARCHAR2(100),            -- 비번
    NAME     VARCHAR2(20)              -- 이름
);
INSERT INTO MEMBER (ID, PASSWORD, NAME)
VALUES ('admin', '1212', '관리자');
INSERT INTO MEMBER (ID, PASSWORD, NAME)
VALUES ('ljj', '1212', '이재진');
INSERT INTO MEMBER (ID, PASSWORD, NAME)
VALUES ('hky', '1212', '홍경영');
INSERT INTO MEMBER (ID, PASSWORD, NAME)
VALUES ('hsh', '1212', '홍성혜');

-- 게시판
CREATE TABLE BOARD
(
    NO          NUMBER PRIMARY KEY, -- 게시판번호
    TITLE       VARCHAR2(100),      -- 제목
    CONTENT     CLOB,               -- 내용
    WRITER      VARCHAR2(20),       -- 작성자 (MEMBER_ID)
    CREATE_DATE DATE,               -- 작성일 (년월일시분초)
    DEL_YN      CHAR(1)             -- 삭제여부
);
CREATE SEQUENCE "SEQ_BOARD_NO" MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;


-- 답글
CREATE TABLE REPLY
(
    NO          NUMBER PRIMARY KEY, -- 게시판번호
    BOARD_NO    NUMBER,             -- 부모번호
    TITLE       VARCHAR2(100),      -- 제목
    CONTENT     CLOB,               -- 내용
    WRITER      VARCHAR2(20),       -- 작성자 (MEMBER_ID)
    CREATE_DATE DATE,               -- 작성일 (년월일시분초)
    DEL_YN      CHAR(1),            -- 삭제여부
    CONSTRAINT FK_REPLY_REPLY_NO FOREIGN KEY (BOARD_NO) REFERENCES BOARD (NO)
);

CREATE SEQUENCE "SEQ_BOARD_NO" MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

CREATE TABLE FILE
(
    NO          NUMBER PRIMARY KEY, -- 파일 번호
    BOARD_NO    NUMBER,             -- 게시판 번호
    FILE_NAME   VARCHAR2(50),       -- 파일 이름
    EXTENSION   VARCHAR2(10),       -- 파일 확장자
    CREATE_DATE DATE,               -- 등록일
    CONSTRAINT FK_FILE_BOARD_NO FOREIGN KEY (BOARD_NO) REFERENCES BOARD (NO)
);

CREATE SEQUENCE "SEQ_FILE_NO" MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 경영씨 : 로그인 구현
-- 재진님 : 게시판 구현