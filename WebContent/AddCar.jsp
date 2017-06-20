<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.im.carsale.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Car sale</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="WEB-INF/header.jsp" />
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>Post Your Car</h1><br>
					<form action="CarSale" method="post">
						<div class="form-group">
							<label>Title</label>
							<input class="form-control" type="text" name="name"><br>
						</div>	
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" rows="5" cols="100" name="description" ></textarea><br>
						</div>
						<div class="form-group">
							<label>Photo</label>
							<input type="file" name="photo"><br>
						</div>
						<div class="form-group">
							<label>Brand</label>
							<select class="form-control" name="brand">
								<%
									Connection con = DB.getCon();
									String sql = "SELECT * FROM brand";
									PreparedStatement ps = con.prepareStatement(sql);
									ResultSet rs = ps.executeQuery();
									while(rs.next()){
								%>
								
							
								<option value="<%=rs.getInt("id") %>"><%=rs.getString("name") %></option>
								
								<%
									}
								%>
							</select><br>
						</div>
						<div class="form-group">
							<label>Price</label>
							<input class="form-control" type="text" name="price"><br>
						</div>
						<div class="form-group">
							<label>Year</label>
							<input class="form-control" type="text" name="year"><br>
						</div>
						<div class="form-group">
							<label>Milage</label>
							<input class="form-control" type="text" name="milage"><br>
						</div>
						<input type="reset" class="btn btn-default" name="reset">
						<input type="submit" class="btn btn-default" name="save">
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="WEB-INF/footer.jsp" />
	</div>
</body>
</html>