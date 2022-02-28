package com.example.controller.blog;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Environment;

@WebServlet("/deletion")
public class BlogDeletionServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DELETION_COMPLETE_VIEW = Environment.BLOG_JSP_BASE + "/deletionComplete.jsp"; 

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO 論理削除と物理削除かを判別してブログ情報の削除を実行する。
		RequestDispatcher dispatcher = request.getRequestDispatcher(DELETION_COMPLETE_VIEW);
		dispatcher.forward(request, response);
	}
}
