package com.dong.servlet;

import com.dong.entry.User;
import com.dong.service.UserService;
import com.dong.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

@WebServlet("/houtai/userSvl")
public class UserServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request.setCharacterEncoding("UTF-8");
        String methodName = request.getParameter("method");
        try {
            Method method = this.getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pwd");
        String save = request.getParameter("save");
        User user = new User(username,password,null,null,null);
        boolean b = userService.checkUser(user);
        if (b){
            request.getSession().setAttribute("user",user);
            Cookie userCk = new Cookie("username",username);
            userCk.setPath(request.getContextPath());
            userCk.setMaxAge(60*60*24);
            response.addCookie(userCk);
            if (save != null){
                Cookie pwdCk = new Cookie("password",password);
                pwdCk.setPath(request.getContextPath());
                pwdCk.setMaxAge(60*60*24);
                response.addCookie(pwdCk);
            }
            response.sendRedirect("main.jsp");
        }else {
            request.getSession().setAttribute("info","登录失败!");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
