package com.et.dubbodemo.website.controller;

import javax.servlet.http.HttpServletRequest;
import com.et.dubbodemo.base.entity.User;
import com.et.dubbodemo.id.spi.IdService;
import com.et.dubbodemo.user.spi.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user/")
public class UserController {

    @Autowired
    IdService idService;
    @Autowired
    UserService userService;

    @RequestMapping(value = "index")
    public String index() {
        System.out.println(idService.generateId());
        return "user/index";
    }

    @RequestMapping(value = "add")
    public String add() {
        return "user/add";
    }

    @RequestMapping(value = "view")
    public String view(HttpServletRequest req) {
        User userParam = new User();
        userParam.setId(371260366031683584L);
        userParam.setStatus(User.StatusActive);
        User user = userService.find(userParam);

        req.setAttribute("user", user);
        return "user/view";
    }

}