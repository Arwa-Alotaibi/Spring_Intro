<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
 
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<meta charset="windows-1256">
<title>Current visit count</title>

<style>
#button{

text-decoration:none;
}

</style>
</head>
<body>

<p> You have visited   <a> http://localhost:8080/your_server</a>  <c:out value="${counter}"/> times</p>

<a href="/your_server">Test another visit?</a>  <br> <br> 

 <a href ="/increment"  id="button"><button type="button" class="btn btn-success"> increment by 2</button> </a> 
<a href="/reset"  id="button"> <button type="button" class="btn btn-danger">Reset</button></a>

</body>





</html>

