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
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="WEB-INF/header.jsp" />
		
		<%
			Connection con = DB.getCon();
			String sql = "SELECT * FROM car";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
		%>
		<div class=row>
			<div class="jumbotron">
				<div class="row">
					<div class="col-md-4">
						<img src="images/hybrid.jpg" class="image-responsive" style="width:100%; height:100%;">
					</div>
					<div class="col-md-8">
						<h2><%=rs.getString("title") %></h2>
						<h3><%=rs.getString("description") %></h3>
						<p><%=rs.getInt("price") %>/-</p>
						<a href="" class="btn btn-success pull-right">More</a>
					</div>
				</div>
			</div>
			
		</div>
		<%
			}
		%>
		<jsp:include page="WEB-INF/footer.jsp" />
		
	</div>
</body>
</html>