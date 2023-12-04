package com.example.kotlindev.controller

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping

@Controller
class Controller {

    @GetMapping("/first")
    fun first() : ResponseEntity<String> {
        return ResponseEntity("First OK!! \n", HttpStatus.OK)
    }
}