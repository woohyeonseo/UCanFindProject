package com.you.can.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ExceptionAJAXController {
   @RequestMapping(value = "/handling")
    @ResponseBody   //AJAX요청 여기서 해준다.
    public ResponseEntity<String> handleCustomException(HttpServletRequest request, HttpServletResponse response) {
      String msg =  (String) request.getAttribute("msg");
        return new ResponseEntity<String>(msg, new HttpHeaders(), HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
