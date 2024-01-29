package com.rental.geniecar.domain.common;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class FileVo {
    private int fileNo;        // 파일 시퀀스 (복합키)
    private int seq;           // 파일 순서 (복합키)
    private String savePath;   // 저장경로
    private String saveName;   // 저장이름
    private String fileName;   // 파일이름
    private String extension;  // 파일 확장자
    private int fileSize;      // 파일 크기
    private String regId;      // 등록자 (회원아이디 FK)
    private Date regDate;      // 등록일
}
