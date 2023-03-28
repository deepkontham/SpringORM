<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome student register form</h1>
	<form action="./save" method="post">
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" name="id"></td>

			</tr>
			<tr>
				<td>name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>city</td>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register"></td>
			</tr>



		</table>




	</form>
</body>
</html>