<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrapHead.jsp" flush="true" />
<title>ブログ投稿</title>
</head>
<body>
    <h2>ブログアプリケーション</h2>
    <p>ブログ投稿</p>
    <p>投稿するブログ情報を入力してください。</p>
    <p>投稿日</p>
    <form method="post">
        <label for="year"><input type="text" id="year">
            年 </label> <label for="month"><input type="text" id="month">
            月 </label> <label for="day"><input type="text" id="day">
            日 </label>
        <p>
            <label for="title">タイトル</label>
        </p>
        <input type="text" id="title">
        <p>
            <label for="content">内容</label>
        </p>
        <p>
            <textarea id="content"></textarea>
        </p>
        <input class="btn btn-light btnx--outline-indigo" type="submit"
            value="投稿する">
    </form>
    <br></br>
    <button type="button"
        onclick="location.href='<%=request.getContextPath()%>/'">トップページへ</button>
    <jsp:include page="../bootstrapBody.jsp" flush="true" />
</body>
</html>
