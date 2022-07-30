<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Omikuji</title>
</head>
<body>

<h1>Here's Your Omikuji</h1>

<p>
In   <span><c:out value="${PickNumber }" > </c:out></span> you will live in 

<span><c:out value="${NameCity }" > </c:out></span> with

<span><c:out value="${RealPerson }" > </c:out></span> as your roommate ,

<span><c:out value="${hobby }" > </c:out></span> for a living the next time you see a 

<span><c:out value="${living }" > </c:out></span> you will hava good luck Also 


<span><c:out value="${SaySomethinhg }" > </c:out></span>



</p>



</body>
</html>