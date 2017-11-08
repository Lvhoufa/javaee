<%--
  Created by IntelliJ IDEA.
  User: Panda
  Date: 2017/11/8
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Date date = new Date();
    int hours = date.getHours();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取格式化之后的日期字符串
    String format = simpleDateFormat.format(date);
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container" style="width: 600px">
        <table class="table">
            <thead>
            <tr class="active">
                <td>温馨提醒</td>
            </tr>
            </thead>
            <tbody>
            <tr class="warning">
                <td>
                    <%
                        out.println("现在的时间是: " + format);
                    %>
                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr class="success">
                <td>
                    <%
                        if (hours > 12) {
                            out.println("已经过了12 点了,午休一会吧");
                        }
                    %>
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
</body>
</html>
