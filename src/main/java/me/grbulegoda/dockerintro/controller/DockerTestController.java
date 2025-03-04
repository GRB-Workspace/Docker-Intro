package me.grbulegoda.dockerintro.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerTestController {
    @GetMapping("/docker")
    public String getDocker() {
        return "Docker Test Successful!";
    }
}