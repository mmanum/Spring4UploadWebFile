<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Spring MVC Tutorial by Xaduin - UploadWebFile Spring MVC Example</title>
	
	
	<!-- JSP -->
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
    <!-- My CSS -->
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
	<link rel="stylesheet" href="<c:url value='/css/table/table.css'/>">
	
</head>
<body>
	<h1>${requestMapping}</h1>
	${message} 
	<br>
	<br>
	<div style="font-family: verdana; padding: 10px; border-radius: 10px; font-size: 12px; text-align:center;"> 
		Spring MCV Tutorial by <a href="http://xaduin.com">Xaduin Inc.</a>.
		Click <a
			href="http://crunchify.com/category/java-web-development-tutorial/"
			target="_blank">here</a> for all Java and <a
			href='http://crunchify.com/category/spring-mvc/' target='_blank'>here</a>
		for all Spring MVC, Web Development examples.<br>
	</div>

</body>
</html>