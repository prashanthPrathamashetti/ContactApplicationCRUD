<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="Error.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
  font-family: Calibri, Helvetica, sans-serif;
  background-color: pink;
}
.container {
    padding: 50px;
  background-color: lightblue;
}

input[type=text], input[type=password], textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: orange;
  outline: none;
}
 div {
            padding: 10px 0;
         }
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
.registerbtn {
  background-color: #4CAF50;
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
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
${errorMsg}
<s:form action="addContact" modelAttribute="contact">
  <div class="container">
    <h1>Add Contact</h1>
    <p>Please fill in this form to add contact.</p>

	<s:label path="name"><b>Name</b></s:label>
	<s:input path="name" placeholder="Enter Name"/><b><s:errors path="name" style="color:red"/></b><br/>
    
    <s:label path="email"><b>Email<!-- (Give multiple mails as comma separated values e.g -abc@gmail.com,xyz@gmail.com ) --></b></s:label>
	<s:input path="email" placeholder="Enter Email"/><b><s:errors path="email" style="color:red"/></b><br/>

    <s:label path="tags"><b>tags(Give multiple tags as comma separated values e.g -actor,sports person )</b></s:label>
    <s:input placeholder="Enter tags" path="tags"/><s:errors path="tags" style="color:red"/><br/>

	<s:label path="dob">Enter DOB(dd/MM/yyyy)</s:label> 
	<s:input path="dob"/><b><s:errors path="dob" style="color:red"/></b><br/>
    
	<div>
		<s:label path="gender"><b>Gender :</b></s:label><br/>
		<s:radiobutton  path="gender" value="male" /> Male 
		<s:radiobutton  path="gender" value="female" /> Female 
		<s:radiobutton  path="gender" value="other"/> Other
	</div>
	<s:label path="phone"> 
	Phone :
	</s:label>
	<s:input path="countrycode" placeholder="Country Code"  value="+91" size="2"/> 
	<s:input path="phone" placeholder="phone no." size="10" /><b><s:errors path="phone" style="color:red"/></b><br/>
	Current Address :
	<s:textarea cols="80" rows="5" placeholder="Current Address" path="address"/><b><s:errors path="address" style="color:red"/></b><br/>
	<button type="submit" class="registerbtn">Add Contact</button>
	</div>
</s:form>
<jsp:include page="Footer.jsp"/>
</body>
</html>

