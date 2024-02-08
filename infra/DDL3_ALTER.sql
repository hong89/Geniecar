------------------------------------------------------------------- 회원테이블
-- 렌터카 지점코드 (공통코드 FK)
ALTER TABLE MEMBER
    ADD CONSTRAINT M_BRANCH_CODE_FK
        FOREIGN KEY (BRANCH_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);


------------------------------------------------------------------- 렌터 차량 테이블
-- 차종코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR
    ADD CONSTRAINT RC_CAR_TYPE_CODE_FK
        FOREIGN KEY (CAR_TYPE_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 차량명코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR
    ADD CONSTRAINT RC_CAR_NAME_CODE_FK
        FOREIGN KEY (CAR_NAME_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 연료코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR
    ADD CONSTRAINT RC_CAR_FUEL_CODE_FK
        FOREIGN KEY (CAR_FUEL_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 제조사 (공통코드 FK)
ALTER TABLE RENTAL_CAR
    ADD CONSTRAINT RC_COMPANY_FK
        FOREIGN KEY (COMPANY)
            REFERENCES COMMON_CODE (FULL_CODE);


------------------------------------------------------------------- 렌터카 지점 테이블
-- 렌터카 지점 코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR_BRANCH
    ADD CONSTRAINT RCB_BRANCH_CODE_FK
        FOREIGN KEY (BRANCH_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 지역 코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR_BRANCH
    ADD CONSTRAINT RCB_REGION_CODE_FK
        FOREIGN KEY (REGION_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 등록자 (회원아이디 FK)
ALTER TABLE RENTAL_CAR_BRANCH
    ADD CONSTRAINT RCB_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID);
-- 수정자 (회원아이디 FK)
ALTER TABLE RENTAL_CAR_BRANCH
    ADD CONSTRAINT RCB_MOD_ID_FK
        FOREIGN KEY (MOD_ID)
            REFERENCES MEMBER (ID);


------------------------------------------------------------------- 차량 테이블
-- 차량명 코드 (공통코드 FK)
ALTER TABLE NEW_CAR
    ADD CONSTRAINT NC_CAR_NAME_CODE_FK
        FOREIGN KEY (CAR_NAME_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 차종 코드 (공통코드 FK)
ALTER TABLE NEW_CAR
    ADD CONSTRAINT NC_CAR_TYPE_CODE_FK
        FOREIGN KEY (CAR_TYPE_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 연료 코드 (공통코드 FK)
ALTER TABLE NEW_CAR
    ADD CONSTRAINT NC_CAR_FUEL_CODE_FK
        FOREIGN KEY (CAR_FUEL_CODE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 제조사 (공통코드 FK)
ALTER TABLE NEW_CAR
    ADD CONSTRAINT NC_COMPANY_FK
        FOREIGN KEY (COMPANY)
            REFERENCES COMMON_CODE (FULL_CODE);


------------------------------------------------------------------- 렌터카 지점별 차량 테이블
-- 지점 코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR_BRANCHES_CAR
    ADD CONSTRAINT RCBC_IDENTIFICATION_NUMBER_FK
        FOREIGN KEY (CAR_IDENTIFICATION_NUMBER)
            REFERENCES RENTAL_CAR (CAR_IDENTIFICATION_NUMBER);
-- 지점 코드 (공통코드 FK)
ALTER TABLE RENTAL_CAR_BRANCHES_CAR
    ADD CONSTRAINT RCBC_BRANCH_NO_FK
        FOREIGN KEY (RENTAL_CAR_BRANCH_NO)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 등록자 (회원 아이디 FK)
ALTER TABLE RENTAL_CAR_BRANCHES_CAR
    ADD CONSTRAINT RCBC_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID);
-- 수정자 (회원 아이디 FK)
ALTER TABLE RENTAL_CAR_BRANCHES_CAR
    ADD CONSTRAINT RCBC_MOD_ID_FK
        FOREIGN KEY (MOD_ID)
            REFERENCES MEMBER (ID);


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


------------------------------------------------------------------- 포인트 테이블
-- 회원아이디 (회원아이디 FK)
ALTER TABLE POINT
    ADD CONSTRAINT P_MEMBER_ID_FK
        FOREIGN KEY (MEMBER_ID)
            REFERENCES MEMBER (ID);


------------------------------------------------------------------- 상담 테이블
-- 희망 대여 지역 (공통코드 FK)
ALTER TABLE CONSULT
    ADD CONSTRAINT C_WISH_REGION_FK
        FOREIGN KEY (WISH_REGION)
            REFERENCES COMMON_CODE (FULL_CODE);


------------------------------------------------------------------- 게시판 테이블
-- 작성자 (회원아이디 FK)
ALTER TABLE BOARD
    ADD CONSTRAINT B_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID);
-- 수정자 (회원아이디 FK)
ALTER TABLE BOARD
    ADD CONSTRAINT B_MOD_ID_FK
        FOREIGN KEY (MOD_ID)
            REFERENCES MEMBER (ID);


------------------------------------------------------------------- 파일 테이블
-- 등록자 (회원아이디 FK)
ALTER TABLE IMAGE_FILE
    ADD CONSTRAINT IF_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID);


------------------------------------------------------------------- 예약 정보 테이블
-- 대여_장소 (공통코드 FK)
ALTER TABLE RENTAL_CAR_RESERVATION
    ADD CONSTRAINT RCR_RENTAL_PLACE_FK
        FOREIGN KEY (RENTAL_PLACE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 반납_장소 (공통코드 FK)
ALTER TABLE RENTAL_CAR_RESERVATION
    ADD CONSTRAINT RCR_RETURN_PLACE_FK
        FOREIGN KEY (RETURN_PLACE)
            REFERENCES COMMON_CODE (FULL_CODE);
-- 예약자_ID (회원아이디 FK)
ALTER TABLE RENTAL_CAR_RESERVATION
    ADD CONSTRAINT RCR_RESERVATION_MEMBER_ID_FK
        FOREIGN KEY (RESERVATION_MEMBER_ID)
            REFERENCES MEMBER (ID);
-- 등록자 (회원아이디 FK)
ALTER TABLE RENTAL_CAR_RESERVATION
    ADD CONSTRAINT RCR_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID);
-- 수정자 (회원아이디 FK)
ALTER TABLE RENTAL_CAR_RESERVATION
    ADD CONSTRAINT RCR_MOD_ID_FK
        FOREIGN KEY (MOD_ID)
            REFERENCES MEMBER (ID);


------------------------------------------------------------------- 면허 테이블
-- 등록자 (회원아이디 FK)
ALTER TABLE LICENSE
    ADD CONSTRAINT L_MEMBER_ID_FK
        FOREIGN KEY (MEMBER_ID)
            REFERENCES MEMBER (ID);