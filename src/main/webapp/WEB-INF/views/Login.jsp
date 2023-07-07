<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<jsp:include page="Header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
</style>
</head>
<body>

<h2>Login Form</h2>

<s:form action="login" modelAttribute="loginUser">
  <div class="imgcontainer">
    <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
  	<b style="color:orangered">${errorMsg}</b><br/>
    <s:label path="email">Email</s:label>
	<s:input path="email" placeholder="Enter Email"/><s:errors path="email"/><br/>

	<s:label path="pass">Password</s:label>
	<s:password path="pass" placeholder="Enter Password" /><s:errors path="pass"/><br/>
        
    <button type="submit">Login</button>
    <%-- <label>
      <s:checkbox path="rememberme"/> Remember me
    </label> --%>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</s:form>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
