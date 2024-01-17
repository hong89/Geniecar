package com.rental.geniecar.main.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class IndexController {

    @GetMapping("/")
    public String index(){
        String logText = "I'm Log.";
        log.debug("debug level log", logText);
        log.info("info level log", logText);
        return "index";
    }

}
