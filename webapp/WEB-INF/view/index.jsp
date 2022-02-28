<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapHead.jsp" flush="true" />
<title>トップページ</title>
</head>
<body>
    <h2>ブログアプリケーション</h2>
    <p>処理を選択してください。</p>
    <button class="btn btn-light btnx--outline-indigo" type="button"
        onclick="location.href='<%=request.getContextPath()%>/search'">ブログ検索</button>
    ：ブログを検索します。
    <br></br>
    <button type="button"
        onclick="location.href='<%=request.getContextPath()%>/posting'">ブログ投稿</button>
    ：新規のブログを投稿します。
    <jsp:include page="bootstrapBody.jsp" flush="true" />
</body>
</html>
