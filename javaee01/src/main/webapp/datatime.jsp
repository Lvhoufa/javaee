<%--
  Created by IntelliJ IDEA.
  User: Panda
  Date: 2017/11/8
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<!--嵌入java代码-->
	<%
		String tody = new Date().toLocaleString();
	%>
	<h1 class="h3">
		今天是:<%=tody%>
	</h1>
</body>
</html>
