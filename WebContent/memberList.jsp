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
					<h1>Member List</h1><br>
					<form>
						<a class="btn btn-success">+</a>
						<table class="table">
							<tr>
								<th>ID</th>
								<th>NAME</th>
								<th>OPTIONS</th>
							</tr>
							<%
								Connection con = DB.getCon();
								String sql = "SELECT * FROM member";
								PreparedStatement ps = con.prepareStatement(sql);
								ResultSet rs = ps.executeQuery();
								while(rs.next()){
								
							%>
							<tr>
								<td><%=rs.getInt("id") %></td>
								<td><%=rs.getString("name") %></td>
								<td>
									<a class="btn btn-info">View</a>
									<a class="btn btn-warning">Edit</a>
									<a class="btn btn-danger">Delete</a>
								</td>
							</tr>
							<%
							}
							%>
						</table>
						<input type="reset" name="Reset" class="btn btn-default">
						<input type="submit" name="Save" class="btn btn-default">
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="WEB-INF/footer.jsp" />
	</div>
</body>
</html>