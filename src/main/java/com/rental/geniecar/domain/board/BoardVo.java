package com.rental.geniecar.domain.board;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVo extends CommonCrudVo {
    private int no;               // 시퀀스
    private int parentNo;         // 부모 번호
    private String title;         // 제목
    private String content;       // 내용
    private int hit;              // 조회수
    private String typeCode;      // 게시판 타입 코드 (공통코드 FK)
    private String noticeYn;      // 공지 유무
    private String hashTag;       // 해시 태그 (해도 되고 안해도 되고)
    private int fileNo;           // 파일 번호
    private Date startDate;       // 시작일자 (이벤트에 사용)
    private Date endDate;         // 종료일자 (이벤트에 사용)
    private String regId;         // 작성자
    private Date regDate;         // 작성일시
    private String modId;         // 수정자
    private Date modDate;         // 수정일시
}