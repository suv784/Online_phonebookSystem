
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp"%>

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

	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<form action="addContact" method="post">
							<%
							if (user != null) {
							%>
							<input type="hidden" value="<%=user.getId()%>" name="userid">

							<%
							}
							%>
							<h4 class="text-center text-success">Add Contact page</h4>
							<%String sucssMsg=(String)session.getAttribute("sucssMsg");
						if(sucssMsg!=null)
						{%>
						<p class="text-success text-center"><%=sucssMsg%></p>
						<%
						session.removeAttribute("sucssMsg");
						} 
						%>
						
						<%String errorMsg=(String)session.getAttribute("failedMsg");
						if(errorMsg!=null)
						{%> 
						<p class="text-danger text-center"><%=errorMsg%></p>
							
						<%
						session.removeAttribute("failedMsg");
						}
						%>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter name">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter phone</label> <input
									name="phone" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter phone No">

							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 140px">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>