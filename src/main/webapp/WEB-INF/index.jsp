<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>

<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-5">
							<!-- HEADER -->
		<h1>Fruit Store</h1>
        					<!-- TABLE -->
        <div class="col-5">        	
			<table class="table table-primary table-striped table-bordered">
				<tbody>
				  	<c:forEach var="fruit" items="${fruitsFromController}">
					<tr>
    					<td><c:out value="${fruit.name}"/></td>
    					<td>$<c:out value="${fruit.price}"/></td>
				  	</tr>
					</c:forEach>
				</tbody>
			</table>         
        </div>	
    </div>
</body>
</html>