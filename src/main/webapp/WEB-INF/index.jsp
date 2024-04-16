<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>    
    
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dojo Survey</title>
		<link rel="stylesheet" href="/css/styles.css">
	</head>
	
	<body>
		<h1> Hello world </h1>
		
		<div class="formulario">
		
			<form action="/result" method="POST">
				<label for="name">
				Your name:
					<input type="text" id="name" name="name">
				</label>
				
				<label for="location">
				Dojo location:
					<select id="location" name="location">
						<c:forEach var="location" items="${locations}">
						<option value="<c:out value="${location}"/>"> <c:out value="${location}"/> </option>
						</c:forEach>
					</select>
				</label>
				
				<label for="language">
				Favorite language:
					<select id="language" name="language">
						<c:forEach var="language" items="${languages}">
						<option value="<c:out value="${language}"/>"> <c:out value="${language}"/> </option>
						</c:forEach>
					</select>
				</label>
				
				<label for="comment">
				Comment (optional)
					<input type="text" name="comment">
				</label>
				
				<input type="submit" value="submit" class="enviar"> 
				
			</form>
			
		</div>
		
	</body>
</html>