<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Renewal</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap');

html {
    scroll-behavior: smooth;
}

body {
    font-family: 'Ubuntu', sans-serif;
    /* height: 100%; */
    background-image: url(img/download.jpg);
    background-size: cover;
    background:fixed;
}

.navbar {
    padding: 22px !important;
    font-size: 18px;
}

.navbar .nav-brand {
    font-size: 22px;
    font-weight: bold;
}

.top-nav-collapse {
    background-color: black;
    padding: 0.75rem !important;
}

.landing-div {
    background: white url("img/download.jpg") no-repeat center;
    height: 80%;
    background-size: cover;
    color: white;
}
.landing-wrapper {
    background-color: rgba(0, 0, 0, 0.5);
    height: 100vh;
    /* padding: 120px;
    padding-left: 600px; */
}

.caption {
    width: 100%;
    /* max-width: 100%; */
    position: relative;  
    top: 38%;
    color: white;
    z-index: 1;
    text-transform: uppercase;
   /* margin-top: 50px; */
   padding-top: 350px;

}

.caption h1 {
    font-size: 3.8rem;
    font-weight: 700;
    letter-spacing: .3rem;
    text-shadow: .1rem .1rem .8rem black;
    padding-bottom: 2rem;
}

.caption h3 {
    font-size: 2rem;
    text-shadow: .1rem .1rem .5rem black;
    padding-bottom: 1.6rem;
}

.btn-lg {
    text-transform: uppercase;
}

.card {
    margin-top: 8rem;
}

.card-login {
    background-color: rgba(0, 0, 0, 0.3);
    color: white;
    border-radius: 10px;
    /* margin-top: 10rem; */
}

.renewal {
    padding-top: 100px;
    /* padding-left: 250px; */
}

.bus {
    padding-top: 280px;
    margin-top: 2rem;    
    border-radius: 10px;
    /* margin-right: 2rem; */
}

.text {
    padding-top: 230px;
    color: white;
}

.table {
    border: 5px solid black;
    text-align: center;
}

.card-view {
    background-color: rgba(0, 0, 0, 0.07);
}
</style>
    <nav class="navbar navbar-expand-sm scrolling-navbar navbar-dark fixed-top ">
        <div class="container">
            <a href="#" class="nav-brand text-light">
                <i class="fas fa-bus-alt"></i> Bus Pass Management</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#ui-navbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="ui-navbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item px-2">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="applyBusPass.jsp">Apply Bus Pass</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="renewal.jsp">Pass Renewal</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="test.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

<%
session.setAttribute("User",session.getAttribute("User"));

%>
    <div class="landing-div" id="home">
        <div class="landing-wrapper">
            <!-- <div class="carousel slide carousel-fade" data-ride="carousel"> -->
                <div class="container renewal ">
                    <div class="row pb-5">
                        <div class="col-md-6 mb-5">
                            <div class="card card-login login">
                            <div class="card-body">
                                <h2 class="login-card-description text-center">Renewal Pass</h2>
                                <hr>
                                <form action="rdetails.jsp">
                                    <div class="form-group">
                                        <label for="user_name">User Name</label>
                                        <input type="text" name="user_name" id="user_name" class="form-control"> 
                                    </div>
                                    <div class="form-group">
                                        <label for="busNo">Bus No.</label>
                                        <input type="number" name="busNo" id="busNo" class="form-control">
                                    </div>
                                    
                                    <button type="submit" class="btn btn-dark text-white">Renewal</button>
                                </form>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            <!-- </div> -->
        </div>
    </div> 
   
    

    <!-- <footer class="bg-dark text-center fixed-bottom">
        <div class="container p-3">
            Copyrights &copy 2021. No right Reserved
        </div>
    </footer> -->

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>