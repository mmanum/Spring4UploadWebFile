<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<title>Crunchify - Spring MVC Upload Multiple Files Example</title>
	
	<!-- JSP -->
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
    <!-- My CSS -->
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
        
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script>
	    $(document).ready(
			function() {
	    		//add more file components if Add is clicked
	    		$('#addFile').click( function() {
	    			var fileIndex = $('#fileTable tr').children().length - 1;
	                $('#fileTable').append(	'<tr><td>'
	                                        + '   <input type="file" name="files['+ fileIndex +']" />'
	                                        + '</td></tr>');
	                    });
	
			});
	</script>
	
</head>

<body>
    <br>
    <br>
    <div align="center">
    
        <h1>Spring MVC Upload Multiple Files Example</h1>
 
        <form:form method="POST" action="savefiles.html" modelAttribute="uploadForm" enctype="multipart/form-data">
 
            <p>Select files to upload. Press Add button to add more file inputs.</p>
 
            <table id="fileTable">
                <tr><td><input name="files[0]" type="file" /></td></tr>
                <tr><td><input name="files[1]" type="file" /></td></tr>
            </table>
            <br/>
            <input type="submit" value="Upload" />
            <input id="addFile" type="button" value="Add File" />
        </form:form> 
        <br/>
    </div>
</body>
</html>