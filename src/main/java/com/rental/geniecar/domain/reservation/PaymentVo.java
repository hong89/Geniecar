package com.rental.geniecar.domain.reservation;

import java.util.Date;

import lombok.Data;

@Data
public class PaymentVo {
	private int payNo;					// 번호
	private String applyNum;            // 신용카드 승인번호
	private String bankName;            // 가상계좌 입금번호
	private String buyerAddr;           // 주문자 주소
	private String buyerEmail;          // 주문자 이메일
	private String buyerName;           // 주문자명
	private String buyerPostcode;       // 주문자 우편번호
	private String buyerTel;            // 주문자 연락처
    private String cardName;            // 카드명
    private String cardNumber;          // 카드번호
    private int cardQuota;          	// 할부개월
    private String currency;         	// 통화
    private String customData;          // 가맹점 임의 지정 데이터
    private String impUid;				//포트원 고유번호
    private String merchantUid;         // 주문번호
    private String name;        	 	// 이름
    private int paidAmount;         	// 결제금액
    private int paidAt;             	// 결제승인시각
    private String payMethod;           // 결제수단 구분코드
    private String pgProvider;          // PG사 구분코드
    private String pgTid;          		// PG사 거래번호
    private String pgType;          	// PG사 타입명
    private String status;          	// 결제상태
    private String success;             // 결제 성공 여부
    private String regId; 				// 등록자
    private Date regDate;  				// 등록일
    private String modId;           	// 수정자
    private Date modDate;           	// 수정일
	
}
