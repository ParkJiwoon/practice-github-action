package com.example.practicegithubaction

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class PracticeGithubActionApplication

fun main(args: Array<String>) {
    runApplication<PracticeGithubActionApplication>(*args)
}

@RestController
class HelloController {

    @GetMapping("/hello/{name}")
    fun hello(@PathVariable name: String) = "hello $name"
}
