<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Home Page</title>
  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <!-- Add Link Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <!-- LINK CSS -->
     <link rel="stylesheet" type="text/css" href="css/main.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/footer.css"/>

    <!-- Add Script -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
   <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a class="navbar-brand" href="/product.do"><b>Product Manager</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/product.do">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/create-product.do">Add New Product</a>
            </li>
        </ul>
        <!-- Nav Bar Right -->
        <ul class="navbar-nav ml-auto">
             <li class="nav-item">
                <span class="nav-link">Welcome, ${ username }</span>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout.do">Log Out</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Content Section -->
<section>
<div class="container">
<div class="rows">
 
<center class="mt-3"><h1><strong>Products List </strong></h1></center>
<div class="mb-4" style="float: right;">
     <a href="/create-product.do" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
</div>
  
<table class="table">
  <thead>
  
    <tr>
      <th scope="col">NAME</th>
      <th scope="col">PRICE</th>
      <th scope="col">STOCK</th>
      <th scope="col">DESCRIPTION</th>
      <th scope="col">ACTIONS</th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${products }" var="product">
    <tr>
      <th scope="row">${product.name }</th>
      <td>${product.price }</td>
      <td>${product.stock}</td>
      <td>${product.description }</td>
      <td>
	       <a href="/update-product.do?productName=${product.name}&amp;productPrice=${product.price}&amp;productStock=${product.stock}&amp;productDescription=${product.description}" class="edit btn btn-secondary"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
	       <a onclick="return confirm('Are you sure !')" href="/delete-product.do?productName=${product.name}&amp;productPrice=${product.price}&amp;productStock=${product.stock}&amp;productDescription=${product.description}" class="delete btn btn-danger ml-2"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
      </td>
    </tr>
 
    </c:forEach>
    
    
  </tbody>
</table>
</div>
<a href="/create-product.do"><button type="submit" class="btn btn-primary">Add New Product</button></a>
</div>
</section>

<!-- FOOTER HERE -->

<footer class="bg-light text-center text-lg-start mt-4">
  <!-- Grid container -->
  <div class="container p-4">
    <!--Grid row-->
    <div class="row">
      <!--Grid column-->
      <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase">Footer text</h5>

        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis
          molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae
          aliquam voluptatem veniam, est atque cumque eum delectus sint!
        </p>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase">Footer text</h5>

        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis
          molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae
          aliquam voluptatem veniam, est atque cumque eum delectus sint!
        </p>
      </div>
      <!--Grid column-->
    </div>
    <!--Grid row-->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2021 Copyright:
    <a class="text-dark" href="#">BAMBA NDOUR</a>
  </div>
  <!-- Copyright -->
</footer>

</body>
</html>