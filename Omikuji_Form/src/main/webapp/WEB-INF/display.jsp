<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Omikuji</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/display.css">

</head>
<body>
<h1>Here's Your Omikuji</h1>

<div class="Paragraph">
<p>

In<c:out value="${PickNumber}"/> years ,you will live in<c:out value="${NameCity}"/> with
<c:out value="${RealPerson}"/>,as your roommate, <c:out value="${hobby}"/>
 
 
for a living the next time you see a <c:out value="${living}"/>

you will have a good luck Also<c:out value="${saysomething}"/>

</p>
</div>


<div class="ancher-tag">
<a href = "/omikuji"  > Go Back </a>

</div>
</body>

</html>