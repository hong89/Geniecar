package com.rental.geniecar.sample.controller;

import com.rental.geniecar.sample.service.SampleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j //Log 사용 시
@Controller
public class SampleController {

    @Autowired
    private SampleService sampleService;

    /**
     * 샘플 페이지로 이동
     * @return
     */
    @GetMapping("/sample")
    public String index(Model model){
        String logText = "This page is sample page.";
        log.debug("debug level log", logText);
        log.info("info level log", logText);

        int count = sampleService.selectCount();
        model.addAttribute("count", count);

        return "sample/sample";
    }


}
