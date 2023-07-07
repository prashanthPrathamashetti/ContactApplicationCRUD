<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<jsp:include page="Header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<s:form action="updateUser" modelAttribute="user">
	<div class="container">
    <h1>Edit User</h1>
    <p>Please fill in this form to create an account.</p>
    <b style="color:orangered">${errorMsg}</b>
    <hr>

	<s:label path="uname">Name</s:label>
	<s:input path="uname" placeholder="Enter name"/><s:errors style="color:orangered" path="uname"/><br/>
    <s:input path="sl" type="hidden"/>
    
    <s:label path="email">Email</s:label>
	<s:input path="email" placeholder="Enter Email"/><s:errors style="color:orangered" path="email"/><br/>

	<s:input path="pass"  type="hidden"/><br/>

	<s:input path="rpass"  type="hidden"/><br/>
	
	<s:label path="dob">Enter DOB(dd/MM/yyyy)</s:label> 
	<s:input path="dob"/><s:errors style="color:orangered" path="dob"/><br/>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms and Privacy</a>.</p>

    <button type="submit" class="register">Submit</button>
  </div>
</s:form>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
