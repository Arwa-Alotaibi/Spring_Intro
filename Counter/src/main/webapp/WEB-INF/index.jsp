<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Welcome,again </title>
<style>
p{
 text-align:center;
padding:50px;
}


</style>
</head>
<body>
<p> Welcome <c:out value ="${name}"/>!</p>

</body>
</html>