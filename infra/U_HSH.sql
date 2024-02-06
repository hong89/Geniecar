-- 면허 테이블 회원 아이디 + 회원 테이블의 아이디
ALTER TABLE LICENSE
    ADD CONSTRAINT LICENSE_MEMBER_ID_FK
        FOREIGN KEY (MEMBER_ID)
            REFERENCES MEMBER (ID);


ALTER TABLE RENTAL_CAR_BRANCH -- 기준테이블
    ADD CONSTRAINT RENTAL_CAR_BRANCH_REG_ID_FK
        FOREIGN KEY (REG_ID)
            REFERENCES MEMBER (ID); -- 부모

ALTER TABLE RENTAL_CAR_BRANCH -- 기준테이블
    ADD CONSTRAINT RENTAL_CAR_BRANCH_MOD_ID_FK
        FOREIGN KEY (MOD_ID)
            REFERENCES MEMBER (ID); -- 부모

ALTER TABLE 테이블이름 -- 기준테이블
    ADD CONSTRAINT 제약조건이름
        FOREIGN KEY (필드이름)
            REFERENCES 테이블이름 (필드이름); -- 부모

ALTER TABLE 테이블이름 -- 기준테이블
    ADD CONSTRAINT 제약조건이름
        FOREIGN KEY (필드이름)
            REFERENCES 테이블이름 (필드이름); -- 부모

ALTER TABLE 테이블이름 -- 기준테이블
    ADD CONSTRAINT 제약조건이름
        FOREIGN KEY (필드이름)
            REFERENCES 테이블이름 (필드이름); -- 부모

