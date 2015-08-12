<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Crunchify - Upload Multiple Files Example</title>
	
	<!-- JSP -->
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
    <!-- My CSS -->
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
    
</head>
<body>
    <br>
    <br>
    <div align="center">
 
        <h1>Crunchify - Spring MVC Upload Multiple Files Example</h1>
        <p>Awesome.. Following files are uploaded successfully.</p>
        <ol>
            <c:forEach items="${files}" var="file">
           - ${file} <br>
            </c:forEach>
        </ol>
        <a href="<c:url value='/upload'/>"><input
            type="button" value="Go Back" /></a> <br />
        <br />
        <br />
        <div class="footer">
 
            Spring MVC Upload Multiple Files Example by <a
                href='http://crunchify.com'>Crunchify</a>. Click <a
                href='http://crunchify.com/category/java-web-development-tutorial/'>here</a>
            for all Java, Spring MVC, Web Development examples.<br>
        </div>
    </div>
</body>
</html>