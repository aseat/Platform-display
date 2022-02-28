<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.example.model.blog.Blog"%>
<%@ page import="java.time.*"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrapHead.jsp" flush="true" />
<title>検索画面</title>
</head>
<body>
    <h2>ブログアプリケーション</h2>
    <p>ブログ検索</p>
    <p>検索するブログの日付を入力してください。</p>
    <form method="get">
        <label for="year"><input type="text" id="year">
            年 </label> <label for="month"><input type="text" id="month">
            月 </label> <label for="day"><input type="text" id="day">
            日 </label> <br></br> <input type="submit" value="検索する">
    </form>

    <%
    Blog blog1 = new Blog(1L, LocalDate.of(2022, 2, 7), "はじめてのブログ", "はじめてブログを書いてみました。", LocalDate.now(),
            LocalDate.now());
    Blog blog2 = new Blog(2L, LocalDate.of(2022, 2, 8), "2回目のブログ", "またブログを書いてみました。", LocalDate.now(),
            LocalDate.now());
    Blog blog3 = new Blog(3L, LocalDate.of(2022, 2, 9), "何回目かのブログ", "ブログを何回か書いてみました。", LocalDate.now(),
            LocalDate.now());

    List<Blog> blogs = new ArrayList<>();

    blogs.add(blog1);
    blogs.add(blog2);
    blogs.add(blog3);

    for (Blog blog : blogs) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        String date = dateTimeFormatter.format(blog.getDate());
    %>
    <p>【ID】</p>

    <p><%=blog.getId()%></p>

    <p>【日時】</p>

    <p><%=date%></p>

    <p>【タイトル】</p>

    <p><%=blog.getTitle()%></p>

    <p>【内容】</p>

    <p><%=blog.getContent()%></p>

    <form method="get"
        action="<%=request.getContextPath()%>/modification">
        <input class="btn btn-light btnx--outline-indigo" type="submit"
            value="編集する">
    </form>
    <form method="post" action="<%=request.getContextPath()%>/deletion">
        <input type="submit" value="論理削除する">
    </form>
    <form method="post" action="<%=request.getContextPath()%>/deletion">
        <input type="submit" value="物理削除する">
    </form>

    <%
    }
    %>
    <button type="button"
        onclick="location.href='<%=request.getContextPath()%>/'">トップページへ</button>
    <jsp:include page="../bootstrapBody.jsp" flush="true" />
</body>
</html>
