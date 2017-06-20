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
					<h1>Register Here</h1><br>
					<form action="register" method="post">
						<div class="form-group">
							<label>Name</label>
							<input class="form-control" type="text" name="name"><br>
						</div>
						<div class="form-group">
							<label>Email</label>
							<input class="form-control" type="email" name="email"><br>
						</div>	
						<div class="form-group">
							<label>Phone</label>
							<input class="form-control" type="text" name="tp"><br>
						</div>
						<div class="form-group">
							<label>Password</label>
							<input class="form-control" type="password" name="pwd"><br>
						</div>	
						<div class="form-group">
							<label>Confirm</label>
							<input class="form-control" type="password" name="confirm"><br>
						</div>		
						<input type="reset" class="btn btn-default" name="Reset">
						<input type="submit" class="btn btn-default" name="Register">
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="WEB-INF/footer.jsp" />
	</div>
</body>
</html>