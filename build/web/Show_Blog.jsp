
<%@page import="java.text.DateFormat"%>
<%@page import="com.techblog.doa.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.techblog.entities.Category"%>
<%@page import="com.techblog.entities.Post"%>
<%@page import="com.techblog.helpher.DbConnection"%>
<%@page import="com.techblog.doa.PostDao"%>
<%@page import="com.techblog.entities.User"%>
<%@page errorPage="Error_Page.jsp" %>
<%
    User user = (User) session.getAttribute("currentuser");
    if (user == null) {
        response.sendRedirect("Login_Page.jsp");
    }
%>

<%
    int postid = Integer.parseInt(request.getParameter("post_id"));
    PostDao d = new PostDao(DbConnection.getConnection());
    Post p = d.getPostByPostId(postid);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= p.getpTitle()%></title>
        <link href="css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .banner-background{
                clip-path: polygon(73% 0, 100% 0, 100% 99%, 73% 94%, 28% 100%, 0 93%, 0 1%);
            }
            .post-title{
                font-weight: 100;
                font-size: 30px;
            }
            .post-content{
                font-weight: 100;
                font-size: 25px;
            }
            .post-date{
                font-style: italic;
                font-weight: bold;
                
            }
            .post-user-info{
                font-size: 20px;
               
            }
            .row-user{
                border: 1px solid blue;
                padding-top: 15px;
            }
            body{
                background:url(img/imgev.jpg);
                background-size:cover;
                background-attachment: fixed;
                
            }
        </style>
    </head>

    <body >
        <!--navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="index.jsp"> <span class="	fa fa-american-sign-language-interpreting"></span>TechBlog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Profile_Page.jsp"> <span class="	fa fa-pencil-square"></span>Learn Code With Shiv <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><span class="	fa fa-phone-square"></span>Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="	fa fa-id-card-o"></span> Categorise
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Programming Language</a>
                            <a class="dropdown-item" href="#">Project Implementation</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Data Structure</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#"> <span class="	fa fa-plus-square"></span>More</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link "href="#!" data-toggle="modal" data-target="#dopost-modal"> <span class="	fa fa-plus-square"></span>Do Post</a>
                    </li>


            </div>
            <ul  class="navbar-nav  mr-right">
                <li class="nav-item ">
                    <a class="nav-link " href="#!" data-toggle="modal" data-target="#profile-model"> <span class="fa fa-user-circle"></span><%=user.getName()%></a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="LogoutServlet"> <span class="fa fa-plus-square"></span>Logout</a>
                </li>



            </ul>
        </nav>


        <!--end of nav var-->

        <!--Starting of main content of the body-->
        <div class="container">
            <div class="row my-4 ">
                <div class="col-md-8 offset-md-2">
                    <div class="card">
                        <div class="card-header primary-background text-white">
                            <h4 class="post-title"><%= p.getpTitle()%></h4>

                        </div>
                        <div class="card-body">
                             <img class="card-img-top my-2" src="Blog_pic/<%= p.getpPic() %>">
                             
                             <div class="row my-3 row-user">
                                 <div class="col-md-8">
                                     
                                    <%
                                      UserDao dao=new UserDao(DbConnection.getConnection());
                                    %>
                                    <p class="post-user-info"><a href="#!" data-toggle="modal" data-target="#profile-model" ><%= dao.getUserByPostId(p.getUserid()).getName() %></a> has posted:</p>
                                 </div>
                                 <div class="col-md-4">
                                     <p class="post-date"><%= DateFormat.getDateTimeInstance().format(p.getpDate()) %></p>
                                 </div>
                                 
                             </div>
                             <p class="post-content"><%= p.getpContent()%></p>
                            <br>
                            <br>
                            <div class="post-code">
                                <pre><%= p.getpCode()%></pre>
                            </div>
                            

                        </div>
                        <div class="card-footer primary-background">
                            <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up"><span>10</span></i></a>


                            <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"><span>28</span></i></a>
                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!--Ending of main content of the body-->

        <!-- Modal profile -->
        <div class="modal fade" id="profile-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center ">
                            <img src="Image/<%=user.getProfile()%> " class="img-fluid" style="border-radius: 50%; max-width: 150px;">
                            <br>

                            <h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getName()%></h5>
                            <!--detail-->
                            <div id="profile_detail">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">Id:</th>
                                            <td><%=user.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Name</th>
                                            <td><%=user.getName()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email</th>
                                            <td><%=user.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender</th>
                                            <td><%=user.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">About:</th>
                                            <td><%=user.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registered Date:</th>
                                            <td><%=user.getDatetime()%></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--profile edit-->
                            <div id="profile_edit" >
                                <h3 class="mt-2">
                                    Please edit carefully..
                                </h3>
                                <form action="EditServlet" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <th scope="row">Id:</th>
                                            <td><%=user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Email:</th>
                                            <td><input type="email" class="form-control" name="email" value="<%= user.getEmail()%>"> </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Name:</th>
                                            <td><input type="text" class="form-control" name="name" value="<%= user.getName()%>"> </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Password:</th>
                                            <td><input type="password" class="form-control" name="password" value="<%= user.getPassword()%>"> </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender:</th>
                                            <td><%= user.getGender()%> </td>

                                        </tr>
                                        <tr>
                                            <td>About:</td>
                                            <td><textarea rows="3" class="form-control" name="about"><%= user.getAbout()%>
                                                </textarea> </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">New Profile:</th>
                                            <td>

                                                <input type="file"  name="profile"  class="form-control" >
                                            </td>
                                        </tr>

                                    </table>
                                    <div class="container">
                                        <button type="submit" class="btn-outline-success btn-lg">Save</button>
                                    </div>

                                </form>


                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" id="edit" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>


        <!--ending of model-->
        <!--Stating of post model-->


        <!-- Modal -->
        <div class="modal fade" id="dopost-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Provide Post details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form  id="addpost" action="Addpostservlet" method="post" class="text-center">
                            <div class="form-group">
                                <select class="form-control" name="Cid">
                                    <option selected disabled>----Select categorises----</option>
                                    <%
                                        PostDao post = new PostDao(DbConnection.getConnection());
                                        ArrayList<Category> list = post.getAllCategories();
                                        for (Category c : list) {
                                    %>
                                    <option value="<%=c.getCid()%>"><%= c.getName()%></option>
                                    <%
                                        }

                                    %>


                                </select>                  
                            </div>
                            <div class="form-group" >
                                <input type="text"name="title" placeholder="Enter the post title" class="form-control">

                            </div>
                            <div class="form-group" >
                                <textarea class="form-control " placeholder="Enter your content " name="content" style="height: 200px;"></textarea>

                            </div>
                            <div class="form-group" >
                                <textarea class="form-control " placeholder="Enter your program code (if any) " name="code" style="height: 200px;"></textarea>

                            </div>
                            <div class="form-group" >
                                <label> Select your post pic</label>
                                <br>
                                <input type="file"name="pic"  class="form-control">

                            </div
                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary"> Post</button>

                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>



        <!--Ending of post model-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                $('#profile_edit').hide()
                let editstatus = false;
                $('#edit').click(function () {
                    if (editstatus == false)
                    {
                        $('#profile_detail').hide()
                        $('#profile_edit').show()
                        editstatus = true;
                        $(this).text("Back")

                    } else
                    {
                        $("#profile_detail").show()
                        $("#profile_edit").hide()
                        editstatus = false;
                        $(this).text("Edit")
                    }
                })
            });
        </script>
        <!--now add post js-->
        <script>
            $(document).ready(function (e) {
                $("#addpost").on("submit", function (event) {
//                   this code get called when from is submited
                    event.preventDefault();
                    let form = new FormData(this);
//                   now requesting to server
                    $.ajax({
                        url: "Addpostservlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
//                        success
                            console.log(data)


                            swal("Good job!", "Post saved successfully", "success");


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            swal("Error!!", "Some things went wrong, please try again", "error");
                        },
                        processData: false,
                        contentType: false
                    })



                })

            })
        </script>
    </body>
</html
