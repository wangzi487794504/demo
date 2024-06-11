package wang.zi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@Controller
@RequestMapping("/news")
public class NewsController {
    @RequestMapping("/save")

    public String save()  {

        System.out.println(0);
        return "hh";
    }

}
