<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Omikuji</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

</head>
<body>
	<h1 >Send an Omikuji</h1>

<div class="container">

	<form action='/send' method='POST'  >
	<div>
		<label> Pick any number form 5 to 25 </label> 
		<input type='number' min="5" max="25" name='PickNumber' class="form-control"> 
		</div>
		
		<div>
		<label> Enter the name of any city </label> 
		<input type='text' name='NameCity' class="form-control"> 
		</div>
		
		<div>
		<label>Enter the name of any real person </label> 
		
		<input type='text' name='RealPerson' class="form-control"> 
		</div>
		
		<div>
		<label> Enter perfessional endevaor or hobby </label>
		 <input type='text' name='hobby' class="form-control"> 
		 </div>
		 
		 <div>
		 <label>Enter any type of living thing </label> 
		 <input type='text' name='living' class="form-control">
</div>

		<p>
			<label>Say something nice to someone</label>
		</p>

		<textarea name='saysomething' rows="4" cols="50" class="form-control"></textarea>



		<p>Send and show a friend</p>
		<input type='submit' value='send'  class="btn btn-primary mb-2">




	</form>
	
</div>


</body>
</html>