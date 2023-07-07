<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<jsp:include page="Header.jsp" />
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact App</title>
  <style type="text/css">
  .srchbutton {
  background-color:#4E9CAF; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  
  /* display: block;
	    height: 25px;
	    background: #4E9CAF;
	    padding: 10px;
	    text-align: center;
	    border-radius: 5px;
	    color: white;
	    font-weight: bold;
	    line-height: 25px; */
}
  </style>
</head>

<body>
  <main>
      <h1>Welcome to Contact Application</h1>
   <%--  <s:form action="searchContact">
    	<s:label path="name">Enter the name of the Contact to search</s:label>
    	<s:input path="name"/><s:errors path="name"/>
    	<input type="submit"/>
    </s:form> --%>
    <form action="searchContact">
	   <h1 style="color: orangered"> <label>Enter the name of the Contact to search</label></h1>
	    <input type="text" name="name" id="name">
	    <input class="srchbutton" type="submit">
    </form>
    <br/>
    <br/>
	<a class="button" href="Menu">Click to go back to menu</a><br/>
  	<a class="button" href="homePage">Click to go to home page</a><br/> 
    <jsp:include page="Footer.jsp"></jsp:include>
  </main>
</body>
</html>