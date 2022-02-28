package com.example.controller.blog;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Environment;

@WebServlet("/posting")
public class BlogPostingServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String POSTING_VIEW = Environment.BLOG_JSP_BASE + "/posting.jsp"; 
    private static final String POSTING_COMPLETE_VIEW = Environment.BLOG_JSP_BASE + "/postingComplete.jsp"; 

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO ブログ投稿画面を表示する。
		RequestDispatcher dispatcher = request.getRequestDispatcher(POSTING_VIEW);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        // TODO ブログ投稿の内容をバリデーションする。
        // TODO ブログ投稿を完了して、ブログ投稿完了画面に遷移する。
		RequestDispatcher dispatcher = request.getRequestDispatcher(POSTING_COMPLETE_VIEW);
		dispatcher.forward(request, response);
	}
}
