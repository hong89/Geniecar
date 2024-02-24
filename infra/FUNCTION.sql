/*
공통코드 (3자리) 이름 조회하는 함수
*/
CREATE OR REPLACE FUNCTION FN_COMM_NM(VS_CODE VARCHAR2)
    RETURN VARCHAR2
IS
    VS_CODE_NAME VARCHAR2(50);
BEGIN

    SELECT CODE_NAME INTO VS_CODE_NAME FROM COMMON_CODE WHERE CODE = (SUBSTR(VS_CODE, 4, 3));
    RETURN VS_CODE_NAME;

END;
/

/*
공통코드 풀네임(6자리)으로 이름 조회하는 함수
*/
CREATE OR REPLACE FUNCTION FN_COMM_NAME(VS_CODE VARCHAR2)
    RETURN VARCHAR2
    IS
    VS_CODE_NAME VARCHAR2(50);
BEGIN

SELECT CODE_NAME INTO VS_CODE_NAME FROM COMMON_CODE WHERE CODE = (SUBSTR(VS_CODE, 4, 3)) AND GROUP_CODE = (SUBSTR(VS_CODE, 1, 3));

RETURN VS_CODE_NAME;
END;
/


/*
RENTAL_CAR_RESERVATION 예약번호 만들어주는 함수
*/
CREATE OR REPLACE FUNCTION FN_RES_NO
    RETURN VARCHAR2
    IS
    VS_RES_NO VARCHAR2(20);
BEGIN
    SELECT 'RES' || TO_CHAR(SYSDATE, 'YYYYMMDD') || '-' || LPAD(SEQ_RESERVATION_NO.NEXTVAL, 8, '0')
    INTO VS_RES_NO
    FROM DUAL;
    RETURN VS_RES_NO;
END;
/

/*
결제내역에서 결제상태에 따라 값 출력
*/
CREATE OR REPLACE FUNCTION FN_PAYMENT_STATUS_NAME(STATUS VARCHAR2)
    RETURN VARCHAR2
    IS
    VS_STATUS_NAME VARCHAR2(20) := '';
BEGIN
    IF STATUS IS NULL THEN
        VS_STATUS_NAME := '결제요망';
    ELSIF STATUS = 'ready' THEN
        VS_STATUS_NAME := '미결제';
    ELSIF STATUS = 'paid' THEN
        VS_STATUS_NAME := '결제완료';
    ELSIF STATUS = 'failed' THEN
        VS_STATUS_NAME := '결제실패';
    ELSE
        VS_STATUS_NAME := '문의요망';
    END IF;
    RETURN VS_STATUS_NAME;
END;
/

CREATE OR REPLACE FUNCTION FN_PAYMENT_PG_PROVIDER_NAME(PG_PROVIDER VARCHAR2)
    RETURN VARCHAR2
    IS
    VS_PG_PROVIDER_NAME VARCHAR2(20) := '';
BEGIN
    IF PG_PROVIDER = 'html5_inicis' THEN
        VS_PG_PROVIDER_NAME := 'KG이니시스';
    ELSE
        VS_PG_PROVIDER_NAME := '';
    END IF;
    RETURN VS_PG_PROVIDER_NAME;
END;
/
