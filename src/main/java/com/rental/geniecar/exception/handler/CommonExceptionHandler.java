package com.rental.geniecar.exception.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
@Slf4j
public class CommonExceptionHandler {

    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String notFoundPageException(NoHandlerFoundException e, Model model){
        log.info("notFoundPageException >>>> {}", e.getMessage());
        model.addAttribute("exception", e.getMessage());
        return "404error";
    }

    @ExceptionHandler(RuntimeException.class)
    public String runtimeException(RuntimeException e, Model model){
        log.info("runtimeException >>>> {}", e.getMessage());
        model.addAttribute("exception", e.getMessage());
        return "400error";
    }

    @ExceptionHandler(Exception.class)
    public String exception(Exception e, Model model){
        log.info("exception >>>> {}", e.getMessage());
        model.addAttribute("exception", e.getMessage());
        return "500error";
    }
}
