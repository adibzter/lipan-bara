<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.config.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="./images/favicon.ico" />
<title>Lipan Bara Tech | Admin Dashboard</title>
<link rel="stylesheet" href="static/styles/product.css">
</head>

<body>
	<div id="app-bar">

		<div id="appbar-left">
			<div id="main-logo">
				<h1>
					<a href="home">Lipan Bara</a> | Admin Dashboard
				</h1>
			</div>
		</div>

		<div id="appbar-right">
			<h3>${ username }</h3>
			|
			<div id="logout">
				<a href="adminLogin">Logout</a>
			</div>
		</div>

	</div>

	<div id="center">
		<div class="products-table">

			<h2>Products</h2>
			<a href="product?updateProduct">
				<button>Add Product</button>
			</a>
			<table>
				<tr>
					<th>Product Id</th>
					<th>Product Image</th>
					<th>Product Name</th>
					<th>Price(RM)</th>
					<th>Quantity In Stock</th>
					<th>Supplier</th>
				</tr>

				<%-- Loop all products here --%>
				<c:forEach items="${productList}" var="product">
					<tr>
						<td>${ product.id }</td>
						<td><img class="product-image"
							src="${ product.imageLocation }" alt="product-image"></td>
						<td>${ product.name }</td>
						<td>${ CurrencyFormatter.format(product.price) }</td>
						<td>${ product.quantity }</td>
						<td>${ product.supplier.name}</td>
					</tr>
				</c:forEach>

			</table>

		</div>
	</div>

	<div class="navbar">
		<div class="navbar-flex">
			<div class="navbar-grid">
				<button style="background-color: #a8dadc;">Product</button>
				<a href="supplier">
					<button>Supplier</button>
				</a>
			</div>
		</div>
	</div>

</body>

</html>