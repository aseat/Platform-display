<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.InputMismatchException"%>
<%@page import="java.util.List"%>
<%@page import="java.time.DateTimeException"%><%@page
    import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="com.example.datasource.blog.ConnectDatabase"%>
<%@page import="com.example.model.shinkansen.Station"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
<title>トップページ</title>
</head>
<body>

    <div class="text-center">
        <div class="top_boder border" style="background-color: #999999;">
            <div class="head_platform d-flex justify-content-center"
                style="color: #ffffff;">
                <div class="from h2 mx-3">名古屋・新大阪</div>
                <div class="from h4 mx-1">方面</div>
            </div>
            <div class="from h4" style="color: #ffffff;">for Nagoya,
                Shin-Osaka</div>
        </div>
        <%
        Class.forName("org.postgresql.Driver");
        ConnectDatabase connect = new ConnectDatabase();

        Statement statement = connect.getStatement();

        try {

            System.out.println("");
            LocalDateTime time = LocalDateTime.of(2022, 3, 4, 6, 0);
            String departureStationRome = "shinyokohama";

            String direction = "down";

            String sql = "SELECT *,to_char(" + departureStationRome
            + "_departure,'HH24:MI')AS departure_time FROM shinkansen.tokaido_" + direction + "_train"
            + " WHERE " + departureStationRome
            + "_departure IS NOT NULL AND '19:00' <= shinyokohama_departure ORDER BY " + departureStationRome
            + "_departure LIMIT 3;";

            ResultSet trainResultSet = statement.executeQuery(sql);

            while (trainResultSet.next()) {
        %>
        <div class="body_boder border" style="background-color: #000000;">
            <div class="body_platform d-flex justify-content-center"
                style="color: #ffffff;">
                <%
                String color = "";
                String nonReservedSeat = "";
                if ("のぞみ".equals(trainResultSet.getString("name"))) {
                    color = "#ffff00";
                    nonReservedSeat = "自由席1-3号車";
                } else if ("ひかり".equals(trainResultSet.getString("name"))) {
                    color = "#FF0000";
                    nonReservedSeat = "自由席1-5号車";
                } else if ("こだま".equals(trainResultSet.getString("name"))) {
                    color = "#0000FF";
                    nonReservedSeat = "自由席1-6,13-16号車";
                }
                %>
                <div class="from h2 mx-1" style="color:<%=color%>;"><%=trainResultSet.getString("name")%><%=trainResultSet.getString("id")%></div>
                <div class="from h2 mx-1">
                    <%=trainResultSet.getString("departure_time")%></div>
                <div class="from h2 mx-1"><%=trainResultSet.getString("destination")%></div>
                <div class="from h4 mx-1"><%=nonReservedSeat%></div>
            </div>

            <div class="body_platform d-flex justify-content-center"
                style="color: #ffffff;">
                <div class="from h5 mx-1">停車駅：</div>
                <div class="from h4 mx-1">
                    <%
                    String str = trainResultSet.getString("stopping_at");

                    String[] stations = str.split("[{,}]");
                    for (String station : stations) {
                        if (!"品川".equals(station) && !"新横浜".equals(station)) {
                    %>
                    <%=station%>
                    <%
                    }
                    }
                    %>
                </div>
            </div>
        </div>

        <%
        }
        } catch (SQLException exception) {
        exception.printStackTrace();
        }
        connect.closeConnection();
        %>
    </div>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
