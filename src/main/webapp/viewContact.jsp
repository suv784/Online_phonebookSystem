<%@page import="com.connection.DbConnect"%>
<%@page import="com.dao.contactDAO"%>
<%@page import="com.entity.Contact"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #f7f7f7;
}
</style>

</head>
<body>
	<%@include file="component/Navbar.jsp"%>
	<%
	User user = (User) session.getAttribute("user");
	if (user == null) {
	%>
	<%
	session.setAttribute("InvalidMsg", "Login Please");
	response.sendRedirect("login.jsp");
	}
	%>
	<%!Contact c;%>
	<div class="container">
		<div class="row p-4">

			<%
			if (user != null) {
				contactDAO dao = new contactDAO(DbConnect.getConn());
				System.out.println(user.getId());
				List<Contact> contact = dao.getAllContact(user.getId()); 
				System.out.println("bbbb");

				for (Contact c : contact) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<h5>
							Name:<%=c.getName()%></h5>

						<p>
							Phone:<%=c.getPhone()%></p>
						<p>
							Email:<%=c.getEmail()%></p>
						<div class="text-center">
							<a href="editContact.jsp?cid=<%=c.getId()%>"></a>
							<a href="editContact.jsp class="btn btn-success btn-sm text-white ">Edit</a> 
							<a href="deleteCOntact.jsp class="btn btn-danger btn-sm text-white">Delete</a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			%>


			<%
			}
			%>





		</div>
	</div>
</body>
</html>
