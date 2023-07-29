//package com.example.blondiebytes.tutuorial.conroller;
package com.swathisprasad.springboot.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class GreetingController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getGreeting() {
        return "Hi it's me blondibytes and I like pizza <br/> from spring-boot-angular6-maven-project\\tutorial-server\\src\\main\\java\\com\\swathisprasad\\springboot\\controller\\GreetingController.javagit ";

    }

    String json = """
        [
            {"name": "John", "age": 25},
            {"name": "Frank", "age": 32},
            {"name": "Jane", "age": 30},
            {"name": "Mark", "age": 28}
        ]
    """;

    @GetMapping("/api/data")
    @ResponseBody
    public ResponseEntity<String> getData() {
        // Create the raw JSON array
        //String json = "[{\"name\":\"John\", \"age\":25}, {\"name\":\"Jane\", \"age\":30}, {\"name\":\"Mark\", \"age\":28}]";

        return ResponseEntity.status(HttpStatus.OK).body(json);
    }

}
