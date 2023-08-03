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
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<form action="register" method="post">
						<h4 class="text-center text-success">Registration page</h4>
						
			
						<%String sucssMsg=(String)session.getAttribute("sucssMsg");
						if(sucssMsg!=null)
						{%>
						<p class="text-success text-center"><%=sucssMsg%></p>
						<%
						session.removeAttribute("sucssMsg");
						} 
						%>
						
						<%String errorMsg=(String)session.getAttribute("errorMsg");
						if(errorMsg!=null)
						{%> 
						<p class="text-danger text-center"><%=errorMsg%></p>
							
						<%
						session.removeAttribute("errorMsg");
						}
						%>
							
						
						
						
						
						
						
						  
						
							
							
					
						
						<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input name="name"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter name">
								
							</div>
						
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input name="email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input name="pwd"
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
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
	<div style="margin-top:135px"> 
	<%@include file="component/footer.jsp" %> 
	</div>
</body>
</html>