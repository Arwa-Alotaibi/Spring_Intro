<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Ninja Gold Game</title>
</head>
<body>

        <p>your gold: <span class="your-gold"> <c:out value="${TotalGold}" /> </span>  </p>
        <a href="/reset"  id="button"> <button type="button" class="btn btn-danger">Reset</button></a>
        
 		<div class="Forms">
 		
 		<form action="/Money" method="post">
 		<h2>Farm</h2>
 		<h3>(earns 10-20 Gold )</h3>
 		<input type="hidden"  name= "Gold"  value="Farm"  >
 		<input type="submit"  value="Find Gold"  class="btn btn-primary">
 		</form>
 		
 		<form action="/Money" method="post">
 		<h2>Cave</h2>
 		<h3>(earns 5-10 Gold )</h3>
 		<input type="hidden"  name= "Gold"  value="Cave" >
 		<input type="submit"  value="Find Gold" class="btn btn-primary">
 		</form>
 		
 		<form action="/Money" method="post">
 		<h2>House</h2>
 		<h3>(earns 2-5 Gold )</h3>
 		<input type="hidden"  name= "Gold"  value="House" >
 		<input type="submit"  value="Find Gold" class="btn btn-primary">
 		</form>
 		
 		<form action="/Money" method="post">
 		<h2>Casino</h2>
 		<h3>(earns/takes 0-50 Gold )</h3>
 		<input type="hidden"  name= "Gold"  value="Casino" >
 		<input type="submit"  value="Find Gold" class="btn btn-primary" >
 		</form>
 		</div>
 		
 		<h2>activity:</h2>
 		<c:forEach  var="activity" items="${activities}" >
 		<p>  <c:out value="${activity }"></c:out> </p>


			</c:forEach>

 		
 		
 		
 		
 		</body>
 		
 		</html>