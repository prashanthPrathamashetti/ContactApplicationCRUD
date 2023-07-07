<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="Header.jsp"></jsp:include>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Application</title>
</head>
<body>
<br/>
<br/>
<b style="color:orangered">${errorMsg}</b>
<a class="button" href="editUser">Edit Account</a><br/>
<a class="button" href="openAddContactView">Add Contact</a><br/>
<a class="button" href="openListContactView">List Contacts</a><br/>
<a class="button" href="openSearchContactView">Search Contact</a><br/>
<a class="button" href="openEditContactView">Edit Contact</a><br/>
<a class="button"  href="deleteUser">Delete Account</a><br/>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>