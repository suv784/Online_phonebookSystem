<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp"%> 
<style type="text/css">
.back-img{
background: url("image/phon.jpg"); 
width:100%;
height:80vh; 
background-repeat:no-repeat; 
background-size: cover;
}
</style>
</head>
<body>
<%@include file="component/Navbar.jsp" %>


<div class="container-fluid back-img text-center text-white">
<h1>Welcome to phonebook App</h1> 
</div>
<%@include file="component/footer.jsp" %> 

</body>
</html>