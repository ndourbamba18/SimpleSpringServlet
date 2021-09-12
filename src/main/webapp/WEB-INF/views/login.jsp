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
<!-- Content Section -->
<section>
<div class="container">
<div class="rows">
 
  <div class="col-md-6 mt-5 mb-5 m-auto">
   <h4 style="text-align:center;" class="mt-5 mb-4"><b>Log In Now</b></h4>
     <div class="card mt-5 mb-5">
        <h4 style="color:red; text-align: center;" class="mt-5"> <b><c:out  value= "${errorMessage }"  /></b></h4>
        <div class="card-body">
           <form action="" method="post">
             <div class="form-group">
                  <label type="text" class="label-control" for="username">Username</label>
                  <input name="username" id="username" class="form-control" placeholder="Enter Your username Here" required />
             </div>
             <div class="form-group">
                  <label class="label-control" for="password">Password</label>
                  <input type="password" name="password" id="password" class="form-control" placeholder="Enter Your password Here" required />
             </div>
             <div class="form-group">
                 <button type="submit" class="btn btn-info">Login</button>
             </div>
           </form>
        </div>
     </div>
  </div>
</div>
</div>
</section>
</body>
</html>