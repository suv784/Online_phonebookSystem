<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp"%>
</head>
<body style="background-color: #fcf8f7;">
	<%@include file="component/Navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h4 class="text-center text-success">Login page</h4>
						<%
						String invalidMsg = (String) session.getAttribute("InvalidMsg");
						if (invalidMsg != null) {
						%>
						<p class="text-danger text-center"><%=invalidMsg%>

							<%
							session.removeAttribute("InvalidMsg");
							}
							%> 
							<%
						String logMsg= (String) session.getAttribute("logMsg");
						if (logMsg != null) {
						%>
						<p class="text-success text-center"><%=logMsg%>

							<%
							session.removeAttribute("logMsg");
							}
							%> 
						<form action="login" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="pwd" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 210px">
		<%@include file="component/footer.jsp"%>

	</div>
</body>
</html>