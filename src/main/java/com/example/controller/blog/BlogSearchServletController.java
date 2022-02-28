package com.example.controller.blog;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Environment;

@WebServlet("/search")
public class BlogSearchServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String LIST_VIEW = Environment.BLOG_JSP_BASE + "/search.jsp"; 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO 指定された条件に該当するブログを取得して表示させる。
        RequestDispatcher dispatcher = request.getRequestDispatcher(LIST_VIEW);
        dispatcher.forward(request, response);
    }
}
