<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<h1>Error</h1>
	<h2>Oops something went wrrong!!! Msg is <%=exception.getMessage()%>></h2>
	<%System.out.println(exception.getStackTrace()); %>
	<img src="error.jpg">
</body>
</html>