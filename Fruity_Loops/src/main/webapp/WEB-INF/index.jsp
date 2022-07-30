<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Fruity Loops</title>

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<h1 style="color:rgb(255, 180, 180)"> Fruit Store   &#127822;   &#127824;</h1>

<table  class="table">
<tr class="table-warning">
<th> Name </th>
<th> Price </th>
</tr>


<c:forEach  var="fruit" items="${fruits}">


<tr class="table-danger" >

<td> <c:out value="${fruit.name }"></c:out> </td>


<td>   <c:out value="${fruit.price }"></c:out></td>



</tr>


</c:forEach>




</table>





</body>
</html>