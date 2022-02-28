package com.example.controller.blog;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Environment;

@WebServlet("/modification")
public class BlogModificationServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String MODIFICATION_VIEW = Environment.BLOG_JSP_BASE + "/modification.jsp"; 
    private static final String MODIFICATION_COMPLETE_VIEW = Environment.BLOG_JSP_BASE + "/modificationComplete.jsp"; 

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO ブログ情報を取得して、ブログ編集画面に遷移する。
		RequestDispatcher dispatcher = request.getRequestDispatcher(MODIFICATION_VIEW);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO ブログ編集の内容をバリデーションする。
		// TODO ブログ編集を完了して、ブログ編集完了画面に遷移する。
		RequestDispatcher dispatcher = request.getRequestDispatcher(MODIFICATION_COMPLETE_VIEW);
		dispatcher.forward(request, response);
	}
}
