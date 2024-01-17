package com.rental.geniecar.service;

import com.rental.car.lotte.domain.member.MemberDto;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MemberServiceTest {

    @Autowired
    MemberService memberService;

    @Test
    void findMemberById() {
        String findId = "admin";
        MemberDto memberDto = memberService.findMemberById(findId);
        Assertions.assertNotNull(memberDto);
        Assertions.assertEquals(memberDto.getId(), findId);
    }
}