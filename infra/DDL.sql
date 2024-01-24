CREATE TABLE COMMON_CODE -- 공통 코드 테이블
(
    CODE            CHAR(3),                      -- 코드
    CODE_NAME       NVARCHAR2(50) NOT NULL,       -- 코드 이름
    GROUP_CODE      CHAR(3),                      -- 그룹 코드 (코드의 상위 코드)
    GROUP_CODE_NAME NVARCHAR2(50),                -- 그룹 코드 이름
    DESCRIPTION     NVARCHAR2(200),               -- 코드 설명
    CODE_SORT       NUMBER(3),                    -- 화면에 보이는 순서
    USE_YN          CHAR(1) DEFAULT 'Y' NOT NULL, -- 사용유무
    REG_ID          VARCHAR2(20) NOT NULL,        -- 등록자
    REG_DATE        DATE                NOT NULL, -- 등록일시
    MOD_ID          VARCHAR2(20),                 -- 수정자
    MOD_DATE        DATE,                         -- 수정일시
    constraint COMMON_CODE_PK PRIMARY KEY (CODE, GROUP_CODE)
)

CREATE TABLE MEMBER -- 회원 테이블
(
    ID              VARCHAR2(20) PRIMARY KEY, -- 아이디
    PW              VARCHAR2(200) NOT NULL,   -- 비밀번호
    NAME            NVARCHAR2(20) NOT NULL,   -- 이름
    GENDER          CHAR(1) NOT NULL,         -- 성별 (M: 남, F: 여)
    BIRTHDAY        DATE    NOT NULL,         -- 생년월일 ('YYYY-MM-DD')
    HP              VARCHAR2( 13 ) NOT NULL,  -- 휴대폰 (FORMAT: XXX-XXXX-XXXX)
    ADDRESS         VARCHAR2(200) NOT NULL,   -- 주소
    ADDRESS_DETAIL  VARCHAR2(100) NOT NULL,   -- 상세주소
    ZIP_CODE        VARCHAR2(6) NOT NULL,     -- 우편번호
    JOIN_DATE       DATE    NOT NULL,         -- 가입일
    LAST_LOGIN_DATE DATE    NOT NULL,         -- 마지막 로그인 일시
    WITHDRAWAL_YN   CHAR(1) NOT NULL,         -- 탈퇴 여부
    TYPE            CHAR(1) NOT NULL          -- 회원 타입 (U: 사용자, B: 지점, A: 사이트 관리자)
)

CREATE TABLE CAR -- 자량 테이블
(
    CAR_IDENTIFICATION_NUMBER VARCHAR2(17) PRIMARY KEY, -- 차대번호
    CAR_TYPE_CODE             VARCHAR2(6) NOT NULL,     -- 차종코드 (공통코드 FK) 소형 준중형 중형 준대형 대형 ...
    CAR_NAME_CODE             VARCHAR2(6) NOT NULL,     -- 차량명코드 (공통코드 FK) 소나타, 스파크, k9 ..
    CAR_FUEL_CODE             VARCHAR2(6) NOT NULL,     -- 연료코드 (공통코드 FK) 디젤, 휘발유, 전기 ..
    DELIVERY_DATE             DATE NOT NULL,            -- 출고일시
    COMPANY                   VARCHAR2(6) NOT NULL      -- 제조사 (공통코드 FK) 현대, 기아 ...
)

CREATE TABLE RENTAL_CAR_BRANCH -- 렌터카 지점 테이블 (사업자 회원가입시 사용)
(
    NO                NUMBER(10) PRIMARY KEY,       -- 렌터카 지점 NO (시퀀스)
    BRANCH_NAME       VARCHAR2(20) NOT NULL,        -- 렌터카 지점명
    REGION_CODE       VARCHAR2(6) NOT NULL,         -- 지역 코드 (공통코드 FK)
    ROAD_ADDRESS      NVARCHAR2(200) NOT NULL,      -- 도로명 주소
    STREET_ADDRESS    NVARCHAR2(200) NOT NULL,      -- 지번 주소
    OPENING_TIME      VARCHAR2(100) NOT NULL,       -- 영업 시간
    TEL               VARCHAR2(13) NOT NULL,        -- 전화번호
    WAY_INFORMATION   VARCHAR2(2000),               -- 길안내
    SHORT_RENTAL_YN   CHAR(1) DEFAULT 'Y' NOT NULL, -- 단기 렌트카 운영 여부 (Y 운영, N 미운영)
    FULL_TIME_OPEN_YN CHAR(1) DEFAULT 'N' NOT NULL, -- 24시간 운영 여부 (Y 운영, N 미운영)
    REG_ID            VARCHAR2(20) NOT NULL,        -- 등록자 (회원아이디 FK)
    REG_DATE          DATE,                         -- 등록일시
    MOD_ID            VARCHAR2(20),                 -- 수정자 (회원아이디 FK)
    MOD_DATE          DATE                          -- 수정일시
)

CREATE TABLE RENTAL_CAR_BRANCHS_CAR -- 렌터카 지점별 차량 테이블
(
    CAR_IDENTIFICATION_NUMBER VARCHAR2(17),                  -- 차대번호 (자동차 FK) - 복합키 처리
    RENTAL_CAR_BRANCH_NO      NUMBER(10),                    -- 렌터카 지점 NO (렌터카 지점 FK) - 복합키 처리
    --RENTAL_STATUS_CODE        VARCHAR2(6) NOT NULL,          -- 렌트 상태 코드 (공통코드 FK) - 수리중, 가능, 폐차, 장기렌트 등등
    DEFAULT_COST              NUMBER(6) NOT NULL,            -- 기본 대여료 (10분 단위)
    DEFAULT_SALE_RATE         NUMBER(2) DEFAULT 50 NOT NULL, -- 기본 할인율
    WEEK_SALE_RATE            NUMBER(2) DEFAULT 60 NOT NULL, -- 일주일 할인율
    MONTH_SALE_RATE           NUMBER(2) DEFAULT 70 NOT NULL, -- 월 할인율
    RENTAL_ABLE_STATUS        CHAR(1) NOT NULL,              -- 렌트 가능 상태 (Y 가능, N 불가능)
    REG_ID                    VARCHAR2(20) NOT NULL,         -- 등록자 (회원아이디 FK)
    REG_DATE                  DATE    NOT NULL,              -- 등록일시
    MOD_ID                    VARCHAR2(20),                  -- 수정자 (회원아이디 FK)
    MOD_DATE                  DATE,                          -- 수정일시
    CONSTRAINT BRANCH_CAR_PK PRIMARY KEY (CAR_IDENTIFICATION_NUMBER, RENTAL_CAR_BRANCH_NO)
)

CREATE TABLE COUPON -- 쿠폰 테이블
(
    SERIAL_NO      VARCHAR2(14) PRIMARY KEY, -- 쿠폰 번호 (FORMAT: OOOO-OOO0O-OO0OO)
    NAME           VARCHAR2(100) NOT NULL,   -- 쿠폰명
    ABLE_REGION    VARCHAR2(6) NOT NULL,     -- 사용 가능 지역 (공통코드 FK)
    TYPE           VARCHAR2(6) NOT NULL,     -- 쿠폰 유형 (공통코드 FK)
    EXPIRED_DATE   DATE NOT NULL,            -- 만료 날짜
    USED_DATE      DATE,                     -- 사용 날짜 (날짜 존재 시 사용 완료)
    COUPON_VALUE   NUMBER(7) NOT NULL,       -- 쿠폰가액 (금액 OR 할인율)
    MAXIMUM_AMOUNT NUMBER(7),                -- 최대 할인 금액 (NULL 이면 제한 없음)
    REG_ID         VARCHAR2(20) NOT NULL,    -- 생성자 (회원아이디 FK)
    REG_DATE       DATE NOT NULL             -- 생성일시
)

CREATE TABLE MEMBER_COUPONS -- 회원 보유 쿠폰 테이블
(
    MEMBER_ID         VARCHAR2(20),  -- 회원아이디 (회원아이디 FK) 복합키
    COUPONE_SERIAL_NO VARCHAR2(14),  -- 쿠폰 번호 (쿠폰 FK) 복합키
    ISSUER_ID         VARCHAR2(20),  -- 발급자 (시스템이 주는 경우도 케이스도 생각하여 NULL 허용)
    ISSUER_DATE       DATE NOT NULL, -- 발급일
    CONSTRAINT MEMBER_COUPONS_PK PRIMARY KEY (MEMBER_ID, COUPONE_SERIAL_NO)
)

CREATE TABLE POINT -- 포인트 테이블
(
    NO              NUMBER(20) PRIMARY KEY,  -- 시퀀스
    POINT           NUMBER(6),               --포인트
    INCREASE        CHAR(1) NOT NULL,        -- 증감 ('+' 이면 적립 or '-' 이면 사용)
    HISTORY         NVARCHAR2(100) NOT NULL, -- 내역
    REG_DATE        DATE,                    -- 적립일시/사용일시
    CURRENT_POINT   NUMBER(8) NOT NULL,      -- 현재 잔여 포인트
    TOTAL_USE_POINT NUMBER(8) NOT NULL,      -- 누적 사용 포인트
    MEMBER_ID       VARCHAR2(20) NOT NULL    -- 회원아이디 (회원아이디 FK)
)

CREATE TABLE CONSULT -- 상담 테이블
(
    NO          NUMBER(20) PRIMARY KEY,  -- 시퀀스
    NAME        NVARCHAR2(20) NOT NULL,  -- 이름
    TEL         VARCHAR2(13) NOT NULL,   -- 연락처 (FORMAT: XXX-XXXX-XXXX)
    EMAIL       VARCHAR2(100) NOT NULL,  -- 이메일
    PURPOSE     NVARCHAR2(200) NOT NULL, -- 사용목적
    WISH_REGION VARCHAR2(6) NOT NULL,    -- 희망 대여 지역 (공통코드 FK)
    REG_DATE    DATE NOT NULL            -- 작성일시
)

CREATE TABLE BOARD -- 게시판 테이블
(
    NO         NUMBER(20) PRIMARY KEY,       -- 시퀀스
    TITLE      NVARCHAR2(100) NOT NULL,      -- 제목
    CONTENT    CLOB                NOT NULL, -- 내용
    HIT        NUMBER(8) DEFAULT 0 NOT NULL, -- 조회수
    TYPE_CODE  VARCHAR2(6) NOT NULL,         -- 게시판 타입 코드 (공통코드 FK)
    NOTICE_YN  CHAR(1) DEFAULT 'N' NOT NULL, -- 공지 유무
    HASH_TAG   VARCHAR2(200),                -- 해시 태그 (해도 되고 안해도 되고)
    FILE_NO    NUMBER(20),                   -- 파일 번호
    START_DATE DATE,                         -- 시작일자 (이벤트에 사용)
    END_DATE   DATE,                         -- 종료일자 (이벤트에 사용)
    REG_ID     VARCHAR2(20) NOT NULL,        -- 작성자
    REG_DATE   DATE,                         -- 작성일시
    MOD_ID     VARCHAR2(20),                 -- 수정자
    MOD_DATE   DATE                          -- 수정일시
)

CREATE TABLE FILE -- 파일 테이블
(
    FILE_NO   NUMBER(20),            -- 파일 시퀀스 (복합키)
    SEQ       NUMBER(3),             -- 파일 순서 (복합키)
    SAVE_PATH VARCHAR2(200),         -- 저장경로
    SAVE_NAME VARCHAR2(100),         -- 저장이름
    FILE_NAME VARCHAR2(200),         -- 파일이름
    EXTENSION VARCHAR2(10),          -- 파일 확장자
    FILE_SIZE NUMBER(20),            -- 파일 크기
    REG_ID    VARCHAR2(20) NOT NULL, -- 등록자 (회원아이디 FK)
    REG_DATE  DATE,                  -- 등록일
    CONSTRAINT FILE_FK PRIMARY KEY (FILE_NO, SEQ)
)

CREATE TABLE RENTAL_CAR_RESERVATION -- 예약 정보 테이블
(
    RESERVATION_NO            VARCHAR2 ( 20 ) PRIMARY KEY, -- 예약번호
    RENTAL_PLACE              VARCHAR2 ( 6 ) NOT NULL,     -- 대여_장소 (공통코드 FK)
    RETURN_PLACE              VARCHAR2 ( 6 ) NOT NULL,     -- 반납_장소 (공통코드 FK)
    RENTAL_DATE               DATE NOT NULL,               -- (대여)시작_날짜_시간
    RETURN_DATE               DATE NOT NULL,               -- 반납_날짜_시간
    CAR_IDENTIFICATION_NUMBER VARCHAR2 ( 17 ) NOT NULL,    -- 차대번호
    RENTAL_CAR_BRANCH_NO      NUMBER ( 10 ) NOT NULL,      -- 렌터카_지점_NO
    RESERVATION_MEMBER_ID     VARCHAR2 ( 20 ) NOT NULL,    -- 예약자_ID (회원아이디 FK)
    REGULAR_PRICE             NUMBER ( 10 ) NOT NULL,      -- 정가
    SALE_RATE                 NUMBER ( 2 ) NOT NULL,       -- 할인율
    FINAL_RESERVATION_PRICE   NUMBER ( 10 ) NOT NULL,      -- 최종_예약_금액 (정가/할인율=최종금액)
    REG_ID                    VARCHAR2 ( 20 ) NOT NULL,    -- 등록자 (회원아이디 FK)
    REG_DATE                  DATE NOT NULL,               -- 등록_일시
    MOD_ID                    VARCHAR2 ( 20 ),             -- 수정자 (회원아이디 FK)
    MOD_DATE                  DATE                         -- 수정_일시
)
