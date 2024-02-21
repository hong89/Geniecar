-------------------------------------------------------------------------------------------------------- 사용X CREATE
CREATE TABLE COUPON -- 쿠폰 테이블
(
    SERIAL_NO      VARCHAR2(14) PRIMARY KEY, -- 쿠폰 번호 (FORMAT: OOOO-OOOOO-OOOOO)
    NAME           VARCHAR2(100) NOT NULL,   -- 쿠폰명
    ABLE_REGION    VARCHAR2(6)   NOT NULL,   -- 사용 가능 지역 (공통코드 FK)
    TYPE           VARCHAR2(20)  NOT NULL,   -- 쿠폰 유형
    EXPIRED_DATE   DATE          NOT NULL,   -- 만료 날짜
    COUPON_VALUE   NUMBER(7)     NOT NULL,   -- 쿠폰가액 (금액 OR 할인율)
    MAXIMUM_AMOUNT NUMBER(7),                -- 최대 할인 금액 (NULL 이면 제한 없음)
    REG_ID         VARCHAR2(20)  NOT NULL,   -- 생성자 (회원아이디 FK)
    REG_DATE       DATE          NOT NULL    -- 생성일시
);

CREATE TABLE MEMBER_COUPONS -- 회원 보유 쿠폰 테이블
(
    MEMBER_ID         VARCHAR2(20),          -- 회원아이디 (회원아이디 FK) 복합키
    COUPONS_SERIAL_NO VARCHAR2(14),          -- 쿠폰 번호 (쿠폰 FK) 복합키
    ISSUER_ID         VARCHAR2(20) NOT NULL, -- 발급자 (시스템이 주는 경우 'SYSTEM'으로 처리)
    ISSUER_DATE       DATE         NOT NULL, -- 발급일
    USED_DATE         DATE,                  -- 사용 날짜 (날짜 존재 시 사용 완료)
    CONSTRAINT MEMBER_COUPONS_PK PRIMARY KEY (MEMBER_ID, COUPONS_SERIAL_NO)
);

-------------------------------------------------------------------------------------------------------- 사용X ALTER
------------------------------------------------------------------- 쿠폰 테이블
-- 지점 코드 (공통코드 FK)
ALTER TABLE COUPON
    ADD CONSTRAINT C_ABLE_REGION_FK
        FOREIGN KEY (ABLE_REGION)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 생성자 (회원 아이디 FK)
ALTER TABLE COUPON
    ADD CONSTRAINT C_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID);

------------------------------------------------------------------- 회원 보유 쿠폰 테이블
-- 회원아이디 (회원아이디 FK)
ALTER TABLE MEMBER_COUPONS
    ADD CONSTRAINT MC_MEMBER_ID_FK
        FOREIGN KEY (MEMBER_ID)
            REFERENCES MEMBER (ID);
-- 쿠폰 번호 (쿠폰 FK)
ALTER TABLE MEMBER_COUPONS
    ADD CONSTRAINT MC_COUPONS_SERIAL_NO_FK
        FOREIGN KEY (COUPONS_SERIAL_NO)
            REFERENCES COUPON (SERIAL_NO);

-------------------------------------------------------------------------------------------------------- 사용X DROP

DROP TABLE MEMBER_COUPONS;
DROP TABLE COUPON;

DROP SEQUENCE SEQ_CAR_BRANCH_NO;   --- 시퀀스 삭제 (사용x)