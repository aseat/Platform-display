package com.example.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Environment;

@WebServlet("/")
public class IndexServletController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String INDEX_VIEW = Environment.JSP_BASE + "/index.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(INDEX_VIEW);
        dispatcher.forward(request, response);
    }
}
