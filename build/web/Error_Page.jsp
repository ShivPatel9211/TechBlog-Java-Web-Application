
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry !something went wrong.. </title>
         <link href="css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRDqnPpdkGG3ZLR2T2VPhMCGYp-6JmJ4-aMlYvNkPmcG5Raeid8&usqp=CAU" class="img-fluid" style="padding-top:20px ; width: 30%; height: 30%;">
            <h3 class="dispaly-3">Sorry !! Somethings went wrong..</h3>
            <%= exception %>
            <br>
            <a href="index.jsp" class="btn primary-background btn-lg text-white">Home</a>
        </div>
    </body>
</html>
