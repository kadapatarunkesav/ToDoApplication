package org.tarun.todoapplication.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ToDoController {

    @GetMapping("/")
    public String homepage() {
        return "index";
    }

    @GetMapping("/todos")
    public String todoPage() {
        return "todos";
    }

    @GetMapping("/learn-more")
    public String learnMore() {
        return "learn-more";
    }

}
