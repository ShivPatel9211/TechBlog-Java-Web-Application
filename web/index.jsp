<%-- 
    Document   : index
    Created on : May 14, 2020, 11:48:53 AM
    Author     : spate
--%>

<%@page import="java.sql.*"%>
<%@page import="com.techblog.helpher.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error_Page.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechBlog</title>
        <link href="css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .banner-background{
            clip-path: polygon(73% 0, 100% 0, 100% 99%, 73% 94%, 28% 100%, 0 93%, 0 1%);

            }
        </style>
    </head>
    <body>
        <!--Navbar-->
        <%@include file="navbar.jsp" %>    

        <!--        banner-->

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background banner-background text-white ">
                <div class="container ">
                    <h3 class="dispaly-3"> Welcome to TechBlog</h3>


                    <p>A blog (a truncation of "weblog")[1] is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style text entries (posts). Posts are typically displayed in reverse chronological order, so that the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,[citation needed] occasionally of a small group, and often covered a single subject or topic. </p>
                    <a href="Register_Page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus fa-spin"></span>Start ! its free</a>
                    <a href="Login_Page.jsp" class="btn btn-outline-light btn-lg">Login</a>
                </div>
            </div>
        </div>
        <!--       card-->
        <div class="container">
            <div class="row mt-3">
                <div class="col md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                        </div>
                    </div
                </div>

            </div>
            <div class="col md-4">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming language</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                    </div>
                </div
            </div>

        </div>
        <div class="col md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                </div>
            </div
        </div>

    </div>
</div>
<div class="row">
    <div class="col md-4">
        <div class="card">

            <div class="card-body">
                <h5 class="card-title">Java Programming language</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
            </div>
        </div
    </div>

</div>
<div class="col md-4">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
<div class="col md-4">
    <div class="card" >

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <div class="container">
            <div class="row mt-3">
                <div class="col md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                        </div>
                    </div
                </div>

            </div>
            <div class="col md-4">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming language</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                    </div>
                </div
            </div>

        </div>
        <div class="col md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                </div>
            </div
        </div>

    </div>
</div>
<div class="row">
    <div class="col md-4">
        <div class="card">

            <div class="card-body">
                <h5 class="card-title">Java Programming language</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
            </div>
        </div
    </div>

</div>
<div class="col md-4">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
<div class="col md-4">
    <div class="card" >

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <div class="container">
            <div class="row mt-3">
                <div class="col md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                        </div>
                    </div
                </div>

            </div>
            <div class="col md-4">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming language</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                    </div>
                </div
            </div>

        </div>
        <div class="col md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                </div>
            </div
        </div>

    </div>
</div>
<div class="row">
    <div class="col md-4">
        <div class="card">

            <div class="card-body">
                <h5 class="card-title">Java Programming language</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
            </div>
        </div
    </div>

</div>
<div class="col md-4">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
<div class="col md-4">
    <div class="card" >

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <div class="container">
            <div class="row mt-3">
                <div class="col md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                        </div>
                    </div
                </div>

            </div>
            <div class="col md-4">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming language</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                    </div>
                </div
            </div>

        </div>
        <div class="col md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                </div>
            </div
        </div>

    </div>
</div>
<div class="row">
    <div class="col md-4">
        <div class="card">

            <div class="card-body">
                <h5 class="card-title">Java Programming language</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
            </div>
        </div
    </div>

</div>
<div class="col md-4">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
<div class="col md-4">
    <div class="card" >

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        <div class="container">
            <div class="row mt-3">
                <div class="col md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                        </div>
                    </div
                </div>

            </div>
            <div class="col md-4">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming language</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                    </div>
                </div
            </div>

        </div>
        <div class="col md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                </div>
            </div
        </div>

    </div>
</div>
<div class="row">
    <div class="col md-4">
        <div class="card">

            <div class="card-body">
                <h5 class="card-title">Java Programming language</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
            </div>
        </div
    </div>

</div>
<div class="col md-4">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
<div class="col md-4">
    <div class="card" >

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        <div class="container">
            <div class="row mt-3">
                <div class="col md-4">
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Java Programming language</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                        </div>
                    </div
                </div>

            </div>
            <div class="col md-4">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming language</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                    </div>
                </div
            </div>

        </div>
        <div class="col md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming language</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
                </div>
            </div
        </div>

    </div>
</div>
<div class="row">
    <div class="col md-4">
        <div class="card">

            <div class="card-body">
                <h5 class="card-title">Java Programming language</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
            </div>
        </div
    </div>

</div>
<div class="col md-4">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
<div class="col md-4">
    <div class="card" >

        <div class="card-body">
            <h5 class="card-title">Java Programming language</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn btn-primary primary-background text-white">Read More</a>
        </div>
    </div
</div>

</div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js.js" type="text/javascript"></script>

</body>
</html>
