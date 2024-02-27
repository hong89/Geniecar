INSERT INTO CONSULT (NO, NAME, TEL, EMAIL, PURPOSE, WISH_REGION, REG_DATE, STATUS_YN) VALUES (SEQ_CONSULT_NO.NEXTVAL, '홍성혜', '010-0000-0000', 'hsh@geniecar.com', '캐스퍼로 출퇴근 렌터카 진행하려고 합니다.'|| chr(10) || chr(13) || '연락부탁드립니다.', 'SEO001', SYSDATE, 'N');
INSERT INTO CONSULT (NO, NAME, TEL, EMAIL, PURPOSE, WISH_REGION, REG_DATE, STATUS_YN) VALUES (SEQ_CONSULT_NO.NEXTVAL, '홍경영', '010-0000-0000', 'hky@geniecar.com', '아반떼로 출퇴근 렌터카 진행하려고 합니다.'|| chr(10) || chr(13) || '연락부탁드립니다.', 'SEO001', SYSDATE, 'N');
INSERT INTO CONSULT (NO, NAME, TEL, EMAIL, PURPOSE, WISH_REGION, REG_DATE, STATUS_YN) VALUES (SEQ_CONSULT_NO.NEXTVAL, '이재진', '010-0000-0000', 'ljj@geniecar.com', '쏘나타로 한달 예약하려고 하는데 추가 할인이 되나요?'|| chr(10) || chr(13) || '비용이랑 지점 확인하고 싶습니다.', 'SEO001', SYSDATE, 'N');

COMMIT;