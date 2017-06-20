<div class="row">
			<div class="jumbotron" style="background-image: url('images/banner.jpg'); background-size: cover;">
				<h1 style="color: white;">Car Sale</h1>
				<p style="color: white;">Find your dream car</p>
				<hr/>
				<%
					if(session.getAttribute("ROLE")!=null){
						String role = session.getAttribute("ROLE").toString();
						if(role.equals("member")){
							out.print("<a href='index.jsp' class='btn btn-info'>Home</a>");
							out.print("<a href='AddCar.jsp' class='btn btn-info'>Post Your Car</a>");
							out.print("<a href='brandList.jsp' class='btn btn-info'>Brand List</a>");
							out.print("<a href='carList.jsp' class='btn btn-info'>Car List</a>");
							
						}else if(role.equals("admin")){
							out.print("<a href='index.jsp' class='btn btn-info'>Home</a>");
							out.print("<a href='brand.jsp' class='btn btn-info'>Brand</a>");
							out.print("<a href='memberList.jsp' class='btn btn-info'>Member</a>");
							
						}
				%>
				WElcome User
				<a href="logout" class="btn btn-success pull-right">Logout</a>
				<% 
					}else{
				%>
				<a href='index.jsp' class='btn btn-info'>Home</a>
				<a href="login.jsp" class="btn btn-success pull-right">Login</a>
				<a href="register.jsp" class="btn btn-success pull-right">Register</a>
				
				<%
				}
				%>
				<div class="row">
					<div class="col-md-6">
						<!--  <a href="index.jsp" class="btn btn-info pull-left">Home</a>
						<a href="AddCar.jsp" class="btn btn-info pull-left">Post Your Car</a>
						<a href="brand.jsp" class="btn btn-info pull-left">Brands</a>
						<a href="brandList.jsp" class="btn btn-info pull-left">Brands List</a>-->
						
					</div>
					<div class="col-md-6">
						<!-- <a href="login.jsp" class="btn btn-success pull-right">Login</a>
						<a href="register.jsp" class="btn btn-info pull-right">Register</a> -->
					</div>
				</div>
			</div>
</div>