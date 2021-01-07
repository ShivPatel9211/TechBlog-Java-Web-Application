

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registation Page</title>
        <link href="css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <main class="primary-background banner-background" style="padding-bottom: 80px;">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class=" fa fa-user-plus fa-3x"></span>
                            <br>
                            Register Here 
                        </div>
                        <div class="card-body">
                            <form  id="reg-form" action="RegisterServlet" method="POST">

                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input type="text" name="name" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter user name">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email"  name="email"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <br>
                                    <input type="radio"  id="gender" name="gender"  value="Male">Male
                                    <input type="radio"  id="gender" name="gender" value="Female" >Female
                                </div>

                                <div class="form-group">
                                    <textarea name="about" placeholder="Enter somethings about youself" class="form-control" id="about"  rows="5" >
                                    </textarea>
                                </div>

                                <div class="form-check">
                                    <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree term and condition</label>
                                </div>
                                <br>
                                <div class="container text-center" id="loader" style="display: none">
                                    <span class="	fa fa-refresh fa-spin fa-3x"></span>
                                    <h4>Please wait...</h4>
                                </div>
                                <br>
                                <span class="fa fa-arrow-down fa-2x"></span>
                                <button type="submit" class="btn btn-primary" id="submit">Submit</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <script>
            $(document).ready(function () {
                console.log("loaded....")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $('#submit').hide();
                    $('#loader').show();

//                    send register servlet
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $('#submit').show();
                            $('#loader').hide();
                            if (data.trim() === 'done')
                            {

                                swal("Register successfull..!", "We are going to redirect you to login page")
                                        .then((value) => {
                                            window.location = 'Login_Page.jsp'

                                        });
                            } else
                            {
                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            swal("Somethings went wrong please try again");
                            $('#submit').show();
                            $('#loader').hide();


                        },
                        processData: false,
                        contentType: false
                    });

                });
            });
        </script>
    </body>
</html>
