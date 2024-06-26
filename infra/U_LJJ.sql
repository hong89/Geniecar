No	위도	경도
	latitude	longitude
1	37.51071	127.0555
2	37.48188	126.8818
3	37.54875	126.9588
4	37.48186	126.9515
5	37.48505	126.8965
6	37.55896	126.8028
7	37.56061	126.8275
8	37.52287	126.8639
9	37.48603	126.9830
10	37.59830	127.0904
11	37.55271	126.9689
12	37.47787	127.1226
13	37.63571	127.0239
14	37.50956	126.8877
15	37.48367	127.0343
16	37.53711	127.1303
17	37.55647	126.9216
18	37.45203	126.7019
19	37.44704	126.4541
20	37.65443	126.6842
21	37.50436	126.7566
22	37.41229	127.1272
23	37.26947	127.0320
24	37.32049	126.8321
25	37.39527	126.9649
26	37.14491	127.0678
27	37.71142	127.0481
28	37.67571	126.7507
29	37.05682	127.0541
30	35.16318	129.1586
31	35.18012	128.9544
32	35.11659	129.0419
33	35.55687	129.1404
34	35.59414	129.3561
35	37.76318	128.8986
36	38.19350	128.5720
37	37.33949	127.9257
38	37.86584	127.7260
39	35.88138	128.6291
40	34.89054	128.6233
41	35.81950	129.1470
42	36.10677	128.4187
43	36.11410	128.1811
44	35.15470	128.1182
45	35.23937	128.7011
46	36.07070	129.3420
47	36.33276	127.3937
48	36.77183	126.4595
49	36.47948	127.2624
50	36.79603	127.1084
51	36.63484	127.4515
52	36.97560	127.9114
53	35.14045	126.8101
54	35.13896	126.7917
55	35.16450	126.9099
56	35.95606	126.7162
57	34.79168	126.3862
58	34.94498	127.5042
59	34.75356	127.7456
60	34.84195	127.6128
61	35.93903	126.9469
62	35.84894	127.1603
63	33.50927	126.5024




-- 시퀀스 삭제
DROP SEQUENCE SEQ_BOARD_NO;
DROP SEQUENCE SEQ_IMAGE_FILE_NO;

-- 테이블 삭제
DROP TABLE BOARD;
DROP TABLE IMAGE_FILE;

CREATE TABLE BOARD -- 게시판 테이블
(
    NO         NUMBER(20) PRIMARY KEY,       -- 시퀀스
    PARENT_NO  NUMBER(20),                   -- 부모 번호
    TITLE      NVARCHAR2(100) NOT NULL,      -- 제목
    CONTENT    CLOB NOT NULL,                -- 내용
    HIT        NUMBER(8) DEFAULT 0 NOT NULL, -- 조회수
    TYPE_CODE  VARCHAR2(20) NOT NULL,        -- 게시판 타입 코드 (공통코드 FK)
    NOTICE_YN  CHAR(1) DEFAULT 'N' NOT NULL, -- 공지 유무
    HASH_TAG   VARCHAR2(200),                -- 해시 태그 (해도 되고 안해도 되고)
    FILE_NO    NUMBER(20),                   -- 파일 번호
    START_DATE DATE,                         -- 시작일자 (이벤트에 사용)
    END_DATE   DATE,                         -- 종료일자 (이벤트에 사용)
    REG_ID     VARCHAR2(20) NOT NULL,        -- 작성자
    REG_DATE   DATE DEFAULT SYSDATE,         -- 작성일시
    MOD_ID     VARCHAR2(20),                 -- 수정자
    MOD_DATE   DATE                          -- 수정일시
);

CREATE SEQUENCE "SEQ_BOARD_NO" MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

CREATE TABLE IMAGE_FILE -- 파일 테이블
(
    FILE_NO   NUMBER(20),            -- 파일 시퀀스 (복합키)
    SEQ       NUMBER(3),             -- 파일 순서 (복합키)
    SAVE_PATH VARCHAR2(200),         -- 저장경로
    SAVE_NAME VARCHAR2(200),         -- 저장이름 (UNIQUE NAME)으로 하기 위해 추가시 SYSDATE 추가하여 저장되도록 구현(시분초까지) (20230531120000)
    FILE_NAME VARCHAR2(100),         -- 파일이름
    EXTENSION VARCHAR2(10),          -- 파일 확장자
    FILE_SIZE NUMBER(20),            -- 파일 크기
    REG_ID    VARCHAR2(20) NOT NULL, -- 등록자 (회원아이디 FK)
    REG_DATE  DATE,                  -- 등록일
    CONSTRAINT FILE_FK PRIMARY KEY (FILE_NO, SEQ)
);

CREATE SEQUENCE "SEQ_IMAGE_FILE_NO" MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 인서트 테이블 (BOARD)
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 1, '공지사항입니다.1', '공지사항 내용입니다.1', 0, 'NOTICE', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 2, '공지사항입니다.2', '공지사항 내용입니다.2', 0, 'NOTICE', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 3, '공지사항입니다.3', '공지사항 내용입니다.3', 0, 'NOTICE', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 4, '공지사항입니다.4', '공지사항 내용입니다.4', 0, 'NOTICE', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 5, '공지사항입니다.5', '공지사항 내용입니다.5', 0, 'NOTICE', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');

INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 6, '자주묻는질문.1', '자주묻는질문 내용입니다.1', 0, 'FAQ', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 7, '자주묻는질문.2', '자주묻는질문 내용입니다.2', 0, 'FAQ', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 8, '자주묻는질문.3', '자주묻는질문 내용입니다.3', 0, 'FAQ', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 9, '자주묻는질문.4', '자주묻는질문 내용입니다.4', 0, 'FAQ', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 10, '자주묻는질문.5', '자주묻는질문 내용입니다.5', 0, 'FAQ', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');

INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 11, '이벤트.1', '이벤트 내용입니다.1', 0, 'EVENT', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 12, '이벤트.2', '이벤트 내용입니다.2', 0, 'EVENT', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 13, '이벤트.3', '이벤트 내용입니다.3', 0, 'EVENT', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 14, '이벤트.4', '이벤트 내용입니다.4', 0, 'EVENT', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 15, '이벤트.5', '이벤트 내용입니다.5', 0, 'EVENT', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');

INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 16, '이벤트 당첨자.1', '이벤트 당첨자 내용입니다.1', 0, 'EVENTWINNER', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 17, '이벤트 당첨자.2', '이벤트 당첨자 내용입니다.2', 0, 'EVENTWINNER', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 18, '이벤트 당첨자.3', '이벤트 당첨자 내용입니다.3', 0, 'EVENTWINNER', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 19, '이벤트 당첨자.4', '이벤트 당첨자 내용입니다.4', 0, 'EVENTWINNER', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 20, '이벤트 당첨자.5', '이벤트 당첨자 내용입니다.5', 0, 'EVENTWINNER', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');

INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 21, '1:1 상담.1', '1:1 상담 내용입니다.1', 0, 'CONSULTING', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 22, '1:1 상담.2', '1:1 상담 내용입니다.2', 0, 'CONSULTING', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 23, '1:1 상담.3', '1:1 상담 내용입니다.3', 0, 'CONSULTING', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 24, '1:1 상담.4', '1:1 상담 내용입니다.4', 0, 'CONSULTING', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 25, '1:1 상담.5', '1:1 상담 내용입니다.5', 0, 'CONSULTING', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');

INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 26, '후기.1', '후기 내용입니다.1', 0, 'REVIEW', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 27, '후기.2', '후기 내용입니다.2', 0, 'REVIEW', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 28, '후기.3', '후기 내용입니다.3', 0, 'REVIEW', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 29, '후기.4', '후기 내용입니다.4', 0, 'REVIEW', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 30, '후기.5', '후기 내용입니다.5', 0, 'REVIEW', 'N', NULL, 6, '2023/03/01', '2023/03/10', 'JIN', SYSDATE, 'JIN', '2023/03/15');


-- 인서트 테이블 (IMAGE_FILE)
INSERT INTO IMAGE_FILE(FILE_NO, SEQ, SAVE_PATH, SAVE_NAME, FILE_NAME, EXTENSION, FILE_SIZE, REG_ID, REG_DATE) VALUES(SEQ_IMAGE_FILE_NO.NEXTVAL, 001, 'geniecar_image', 'JJ2023-05-31 12:00:00', 'JJ', '.jpg', 50, 'JIN', '2023/03/01');
INSERT INTO IMAGE_FILE(FILE_NO, SEQ, SAVE_PATH, SAVE_NAME, FILE_NAME, EXTENSION, FILE_SIZE, REG_ID, REG_DATE) VALUES(SEQ_IMAGE_FILE_NO.NEXTVAL, 002, 'geniecar_image', 'JJ12023-05-31 12:00:00', 'JJ1', '.jpg', 50, 'JIN', '2023/03/01');
INSERT INTO IMAGE_FILE(FILE_NO, SEQ, SAVE_PATH, SAVE_NAME, FILE_NAME, EXTENSION, FILE_SIZE, REG_ID, REG_DATE) VALUES(SEQ_IMAGE_FILE_NO.NEXTVAL, 003, 'geniecar_image', 'JJ22023-05-31 12:00:00', 'JJ2', '.jpg', 50, 'JIN', '2023/03/01');
INSERT INTO IMAGE_FILE(FILE_NO, SEQ, SAVE_PATH, SAVE_NAME, FILE_NAME, EXTENSION, FILE_SIZE, REG_ID, REG_DATE) VALUES(SEQ_IMAGE_FILE_NO.NEXTVAL, 004, 'geniecar_image', 'JJ32023-05-31 12:00:00', 'JJ3', '.jpg', 50, 'JIN', '2023/03/01');
INSERT INTO IMAGE_FILE(FILE_NO, SEQ, SAVE_PATH, SAVE_NAME, FILE_NAME, EXTENSION, FILE_SIZE, REG_ID, REG_DATE) VALUES(SEQ_IMAGE_FILE_NO.NEXTVAL, 005, 'geniecar_image', 'JJ42023-05-31 12:00:00', 'JJ4', '.jpg', 50, 'JIN', '2023/03/01');


-- 셀렉트 테이블
SELECT * FROM BOARD;
SELECT * FROM IMAGE_FILE;










-- 1:1 문의
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 36, '2024/01/01', '2024/05/31', 'hong', '2024-01-15', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 37, '2024/01/01', '2024/05/31', 'hong', '2024-01-16', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 38, '2024/01/01', '2024/05/31', 'hong', '2024-01-17', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 39, '2024/01/01', '2024/05/31', 'hong', '2024-01-18', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 40, '2024/01/01', '2024/05/31', 'hong', '2024-01-19', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 41, '2024/01/01', '2024/05/31', 'hong', '2024-01-20', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 42, '2024/01/01', '2024/05/31', 'hong', '2024-01-21', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 43, '2024/01/01', '2024/05/31', 'hong', '2024-01-15', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 44, '2024/01/01', '2024/05/31', 'hong', '2024-01-14', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 45, '2024/01/01', '2024/05/31', 'hong', '2024-01-17', 'hong', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 0, '댓글부모', '댓글내용', 0, 'QNA', 'N', NULL, 45, '2024/01/01', '2024/05/31', 'lee', '2024-01-17', 'lee', '2024/01/01');

-- 답글 등록
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 154, '154댓글자식', '댓글자식내용', 0, 'QNA', 'N', NULL, 43, '2024/01/01', '2024/05/31', 'ADMIN', '2024-02-17', 'ADMIN', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 152, '152댓글자식', '댓글자식내용', 0, 'QNA', 'N', NULL, 44, '2024/01/01', '2024/05/31', 'ADMIN', '2024-02-17', 'ADMIN', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 146, '146댓글자식', '댓글자식내용', 0, 'QNA', 'N', NULL, 45, '2024/01/01', '2024/05/31', 'ADMIN', '2024-02-17', 'ADMIN', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 157, '152댓글자식인 157댓글자식의 자식', '댓글자식내용', 0, 'QNA', 'N', NULL, 45, '2024/01/01', '2024/05/31', 'ADMIN', '2024-02-17', 'ADMIN', '2024/01/01');
INSERT INTO BOARD(NO, PARENT_NO, TITLE, CONTENT, HIT, TYPE_CODE, NOTICE_YN, HASH_TAG, FILE_NO, START_DATE, END_DATE, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES(SEQ_BOARD_NO.NEXTVAL, 185, '185댓글자식', '댓글자식내용', 0, 'QNA', 'N', NULL, 45, '2024/01/01', '2024/05/31', 'ADMIN', '2024-02-17', 'ADMIN', '2024/01/01');

UPDATE BOARD SET TITLE = '152댓글자식인 157댓글자식의 자식' WHERE NO = 159;
UPDATE BOARD SET NO = 157 WHERE NO = 159;

SELECT * FROM BOARD;
SELECT PARENT_NO AS P, NO AS C FROM BOARD;


-- 깐따삐야

		SELECT LEVEL
             , NO
             , PARENT_NO
			 , TITLE
			 , CONTENT
			 , HIT
			 , TYPE_CODE
			 , NOTICE_YN
			 , HASH_TAG
			 , START_DATE
			 , END_DATE
			 , REG_ID
			 , REG_DATE
			 , RN
  		  FROM 
             ( SELECT LEVEL
                    , NO
                    , PARENT_NO
			        , TITLE
			        , CONTENT
			        , HIT
			        , TYPE_CODE
			        , NOTICE_YN
			        , HASH_TAG
			        , START_DATE
					, END_DATE
					, REG_ID
			        , TO_CHAR(REG_DATE, 'yyyy-mm-dd') AS REG_DATE
			        , ROW_NUMBER() OVER(ORDER BY NO DESC)
			          AS RN
 		         FROM BOARD
 		        WHERE TYPE_CODE = 'QNA'
                START WITH PARENT_NO = 0
              CONNECT BY PRIOR NO = PARENT_NO
	         )
	  ORDER BY RN ASC;


SELECT LEVEL
     , NO
     , PARENT_NO
     , TITLE
     , CONTENT
     , REG_ID
     , REG_DATE
FROM BOARD
START WITH PARENT_NO = 0
CONNECT BY PRIOR NO = PARENT_NO
ORDER SIBLINGS BY NO DESC;




WITH Hierarchical_Board AS (
    SELECT NO
         , PARENT_NO
         , TITLE
         , CONTENT
         , HIT
         , TYPE_CODE
         , NOTICE_YN
         , HASH_TAG
         , START_DATE
         , END_DATE
         , REG_ID
         , TO_CHAR(REG_DATE, 'yyyy-mm-dd') AS REG_DATE
         , ROW_NUMBER() OVER(ORDER BY NO DESC) AS RN
    FROM BOARD
    WHERE TYPE_CODE = 'QNA'
)
SELECT LEVEL
     , NO
     , PARENT_NO
     , LPAD(' ', 4*(LEVEL-1)) || CASE WHEN LEVEL > 1 THEN '[답글] :' ELSE '' END || TITLE AS TITLE
     , CONTENT
     , HIT
     , TYPE_CODE
     , NOTICE_YN
     , HASH_TAG
     , START_DATE
     , END_DATE
     , REG_ID
     , REG_DATE
     , RN
FROM Hierarchical_Board
START WITH PARENT_NO = 0
CONNECT BY PRIOR NO = PARENT_NO
ORDER SIBLINGS BY NO DESC;



-- 마이페이지  1:1 작성자의 글과 관리자 글 가져 오기
SELECT 
    b.NO,
    b.PARENT_NO,
    b.TITLE,
    b.CONTENT,
    b.HIT,
    b.TYPE_CODE,
    b.NOTICE_YN,
    b.HASH_TAG,
    b.START_DATE,
    b.END_DATE,
    b.REG_ID,
    b.REG_DATE,
    b.MOD_ID,
    b.MOD_DATE
FROM 
    BOARD b
WHERE 
    (
        b.REG_ID = 'hong' 
        OR 
        (
            b.REG_ID = 'ADMIN' 
            AND 
            EXISTS (SELECT 1 FROM BOARD WHERE NO = b.PARENT_NO AND REG_ID = 'hong' OR REG_ID = 'ADMIN')
        )
    )
    AND 
    b.TYPE_CODE = 'QNA'
ORDER BY 
    NO;








INSERT INTO POINT(NO ,POINT ,INCREASE ,HISTORY ,REG_DATE ,CURRENT_POINT ,TOTAL_USE_POINT ,MEMBER_ID) VALUES 
(SEQ_POINT_NO.NEXTVAL, 3240, '+' ,'RES2024026-00000004', '2024-02-26',12720,21000 ,'hong');


INSERT INTO RENTAL_CAR_RESERVATION (RESERVATION_NO, RENTAL_PLACE, RETURN_PLACE, RENTAL_DATE, RETURN_DATE, CAR_IDENTIFICATION_NUMBER, RENTAL_CAR_BRANCH_NO, RESERVATION_MEMBER_ID, REGULAR_PRICE, SALE_RATE, FINAL_RESERVATION_PRICE, REG_ID, REG_DATE) VALUES 
('RES2024026-00000004', 'SEO001', 'SEO001', TO_DATE('2024-02-26 12:00:00','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-02-27 22:00:00','YYYY-MM-DD HH24:MI:SS'), 'ROKGEN05MNU822916', 'SEO001', 'hong', 129600, 50, 64800, 'hong', sysdate);

INSERT INTO PAYMENT (PAY_NO, APPLY_NUM, BANK_NAME, BUYER_ADDR, BUYER_EMAIL, BUYER_NAME, BUYER_POSTCODE, BUYER_TEL, CARD_NAME, CARD_NUMBER, CARD_QUOTA, CURRENCY, CUSTOM_DATA, IMP_UID, MERCHANT_UID, NAME, PAID_AMOUNT, PAID_AT, PAY_METHOD, PG_PROVIDER, PG_TID, PG_TYPE, STATUS, SUCCESS, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES 
(6, '00584065', null, null, null, '홍경영', null, '010-4321-4321', '현대카드', '404933*********3', 0, 'KRW', null, 'imp_358546933790', 'RES2024026-00000004', 'geniecar_아반떼_0일 1시간 40분', 1000, 1708366575, 'card', 'html5_inicis', 'StdpayCARDINIBillTst20240220031614781794', 'payment', 'paid', 'true', 'hong', sysdate, null, null);


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">지점 등록</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertRentalCar.do" id="frmInsert" method="post">
                <div class="mb-3 row">
                    <label for="company" class="col-sm-3 col-form-label">지역코드</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="company" name="company">
                            <option selected>선택</option>
                            <c:forEach var="code" items="${codeList}">
                                <option value="${code.fullCode}">${code.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">지점코드</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">위치</label>
                    <div class="col-sm-9 row ">
                        <div class="col-md">
                            <input type="text" class="form-control " id="floatingInputGrid" placeholder="위도" >
                        </div>
                        <div class="col-md">
                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="경도" >
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carFuelCode" class="col-sm-3 col-form-label">도로명 주소</label>
                    <div class="col-sm-9 row">
                        <button class="btn text-white ms-1" style="width:140px; background-color: #41087c;">도로명 주소찾기</button>
                        <input class="form-control ms-1" style="width: 500px;">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">지번 주소</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">영업 시간</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">전화번호</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">길안내</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">단기렌터카 운영 여부</label>
                    <div class="col-sm-9 text-start">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" >
                            <label class="form-check-label" for="inlineCheckbox1">Y</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" >
                            <label class="form-check-label" for="inlineCheckbox2">N</label>
                          </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">24시간 운영여부</label>
                    <div class="col-sm-9 text-start">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" >
                            <label class="form-check-label" for="inlineCheckbox1">Y</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" >
                            <label class="form-check-label" for="inlineCheckbox2">N</label>
                          </div>
                    </div>
                </div>

                <button type="button" class="btn text-white" style="background: #41087c" id="frmSubmit">등록하기</button>

            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>




