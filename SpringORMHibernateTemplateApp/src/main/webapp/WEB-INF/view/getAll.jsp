  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WelCome to spring</title>
<style>
#students {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#students td, #employees th {
	border: 1px solid #ddd; 
	padding: 8px;
}

#students tr:nth-child(even) {
	background-color: #RRGGBB;
}

#students tr:hover {
	background-color: #RRGGBB;
}

#students th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #04AA6D;
	color: white;
}
</style>
</head>
<body>
	<a href="./save">SaveStudent</a>

	<table id="students">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>city</th>
			<th>Actions</th>
		</tr>
		<c:forEach var="geStudents" items="${map}">
			<tr>
				<td>${geStudents.id}</td>
				<td>${geStudents.name}</td>
				<td>${geStudents.city}</td>
				
				<td><a href="./delete?id=${geStudents.id}">delete</a> 
				<a href="./update?id=${geStudents.id}">update</a></td>
			</tr>
		</c:forEach>
	</table>




</body>
</html>