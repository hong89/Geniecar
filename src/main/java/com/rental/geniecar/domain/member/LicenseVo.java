package com.rental.geniecar.domain.member;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LicenseVo {
	int no;
	String memberId;
	String licenseGradeCode;
	String licenseNumber;
	String driverName;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date driverBirth;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date licenseTestDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date licenseIssueDate;

}
