<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<jsp:include page="Header.jsp" />
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact App</title>
 <style>
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
</style> 
</head>
<body>
  <main>
      <h1>Welcome to Contact Application</h1>
      
      <h1>List of contacts</h1>
		<c:forEach var="item" items="${contacts}">
			<b>Name :</b> ${item.name}<br/>
			<b>Email :</b> ${item.email}<br/>
			<b>DOB :</b> ${item.dob}<br/>
			<b>Gender :</b> ${item.gender}<br/>
			<b>Tags :</b> ${item.tags}<br/>
			<b>Country-code :</b> ${item.countrycode}<br/>
			<b>Phone :</b> ${item.phone}<br/>
			<b>Address</b> ${item.address}<br/>
		<%-- name-<c:out value="${item.name}" cla></c:out> --%>
		<hr>
		</c:forEach>   
	<a class="button" href="Menu">Click to go back to menu</a><br/>
  	<a class="button" href="homePage">Click to go to homepage</a><br/> 
    <jsp:include page="Footer.jsp"></jsp:include>
  </main>
</body>
</html>