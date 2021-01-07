package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.techblog.doa.UserDao;
import com.techblog.entities.Category;
import java.util.ArrayList;
import com.techblog.helpher.DbConnection;
import com.techblog.doa.PostDao;
import com.techblog.entities.Message;
import com.techblog.entities.User;

public final class Profile_005fPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"Error_Page.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    User user = (User) session.getAttribute("currentuser");
    if (user == null) {
        response.sendRedirect("Login_Page.jsp");
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Profile Page</title>\n");
      out.write("        <link href=\"css.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--navbar-->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark primary-background\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"index.jsp\"> <span class=\"\tfa fa-american-sign-language-interpreting\"></span>TechBlog</a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\"> <span class=\"\tfa fa-pencil-square\"></span>Learn Code With Shiv <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\"><span class=\"\tfa fa-phone-square\"></span>Contact</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                            <span class=\"\tfa fa-id-card-o\"></span> Categorise\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"#\">Programming Language</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"#\">Project Implementation</a>\n");
      out.write("                            <div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"#\">Data Structure</a>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link \" href=\"#\"> <span class=\"\tfa fa-plus-square\"></span>More</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link \"href=\"#!\" data-toggle=\"modal\" data-target=\"#dopost-modal\"> <span class=\"\tfa fa-plus-square\"></span>Do Post</a>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <ul  class=\"navbar-nav  mr-right\">\n");
      out.write("                <li class=\"nav-item \">\n");
      out.write("                    <a class=\"nav-link \" href=\"#!\" data-toggle=\"modal\" data-target=\"#profile-model\"> <span class=\"fa fa-user-circle\"></span>");
      out.print(user.getName());
      out.write("</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item \">\n");
      out.write("                    <a class=\"nav-link \" href=\"LogoutServlet\"> <span class=\"fa fa-plus-square\"></span>Logout</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--end of nav var-->\n");
      out.write("        ");

            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"alert");
      out.print( msg.getCsslass());
      out.write("\" role=\"alert\">\n");
      out.write("\n");
      out.write("            ");
      out.print( msg.getContent());
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");

                session.removeAttribute("msg");
            }

        
      out.write("\n");
      out.write("        <!--starting of model-->\n");
      out.write("        <!-- Button trigger modal -->\n");
      out.write("\n");
      out.write("        <!-- Modal profile -->\n");
      out.write("        <div class=\"modal fade\" id=\"profile-model\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header primary-background text-white\">\n");
      out.write("                        <h5 class=\"modal-title\" id=\"exampleModalLabel\">TechBlog</h5>\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <div class=\"container text-center \">\n");
      out.write("                            <img src=\"Image/");
      out.print(user.getProfile());
      out.write(" \" class=\"img-fluid\" style=\"border-radius: 50%; max-width: 150px;\">\n");
      out.write("                            <br>\n");
      out.write("\n");
      out.write("                            <h5 class=\"modal-title mt-3\" id=\"exampleModalLabel\">");
      out.print(user.getName());
      out.write("</h5>\n");
      out.write("                            <!--detail-->\n");
      out.write("                            <div id=\"profile_detail\">\n");
      out.write("                                <table class=\"table\">\n");
      out.write("\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Id:</th>\n");
      out.write("                                            <td>");
      out.print(user.getId());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Name</th>\n");
      out.write("                                            <td>");
      out.print(user.getName());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Email</th>\n");
      out.write("                                            <td>");
      out.print(user.getEmail());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Gender</th>\n");
      out.write("                                            <td>");
      out.print(user.getGender());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">About:</th>\n");
      out.write("                                            <td>");
      out.print(user.getAbout());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Registered Date:</th>\n");
      out.write("                                            <td>");
      out.print(user.getDatetime());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                            <!--profile edit-->\n");
      out.write("                            <div id=\"profile_edit\" >\n");
      out.write("                                <h3 class=\"mt-2\">\n");
      out.write("                                    Please edit carefully..\n");
      out.write("                                </h3>\n");
      out.write("                                <form action=\"EditServlet\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                    <table class=\"table\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Id:</th>\n");
      out.write("                                            <td>");
      out.print(user.getId());
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Email:</th>\n");
      out.write("                                            <td><input type=\"email\" class=\"form-control\" name=\"email\" value=\"");
      out.print( user.getEmail());
      out.write("\"> </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Name:</th>\n");
      out.write("                                            <td><input type=\"text\" class=\"form-control\" name=\"name\" value=\"");
      out.print( user.getName());
      out.write("\"> </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Password:</th>\n");
      out.write("                                            <td><input type=\"password\" class=\"form-control\" name=\"password\" value=\"");
      out.print( user.getPassword());
      out.write("\"> </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">Gender:</th>\n");
      out.write("                                            <td>");
      out.print( user.getGender());
      out.write(" </td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>About:</td>\n");
      out.write("                                            <td><textarea rows=\"3\" class=\"form-control\" name=\"about\">");
      out.print( user.getAbout());
      out.write("\n");
      out.write("                                                </textarea> </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope=\"row\">New Profile:</th>\n");
      out.write("                                            <td>\n");
      out.write("                                           \n");
      out.write("                                                <input type=\"file\"  name=\"profile\"  class=\"form-control\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                    <div class=\"container\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn-outline-success btn-lg\">Save</button>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                        <button type=\"button\" id=\"edit\" class=\"btn btn-primary\">Edit</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--ending of model-->\n");
      out.write("        <!--Stating of post model-->\n");
      out.write("  \n");
      out.write("\n");
      out.write("<!-- Modal -->\n");
      out.write("<div class=\"modal fade\" id=\"dopost-modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Provide Post details</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("          <form  id=\"addpost\" action=\"Addpostservlet\" method=\"post\">\n");
      out.write("              <div class=\"form-group\">\n");
      out.write("                  <select class=\"form-control\">\n");
      out.write("                      <option selected disabled>----Select categorises----</option>\n");
      out.write("                      ");
 
                   PostDao post= new PostDao(DbConnection.getConnection()); 
                        ArrayList<Category> list= post.getAllCategories();
                        for(Category c:list){
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(c.getCid() );
      out.write('"');
      out.write('>');
      out.print( c.getName()  );
      out.write("</option>\n");
      out.write("                            ");

                        }

                      
      out.write("\n");
      out.write("                      \n");
      out.write("                  \n");
      out.write("              </select>                  \n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group\" >\n");
      out.write("                  <input type=\"text\"name=\"title\" placeholder=\"Enter the post title\" class=\"form-control\">\n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group\" >\n");
      out.write("                  <textarea class=\"form-control \" placeholder=\"Enter your content \" name=\"content\" style=\"height: 200px;\"></textarea>\n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("              <div class=\"form-group\" >\n");
      out.write("                  <textarea class=\"form-control \" placeholder=\"Enter your program code (if any) \" name=\"code\" style=\"height: 200px;\"></textarea>\n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("               <div class=\"form-group\" >\n");
      out.write("                   <label> Select your post pic</label>\n");
      out.write("                   <br>\n");
      out.write("                   <input type=\"file\"name=\"pic\"  class=\"form-control\">\n");
      out.write("                  \n");
      out.write("              </div\n");
      out.write("              <div class=\"container text-center\">\n");
      out.write("                  <input type=\"submit\" class=\"btn btn-outline-primary\">\n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("          </form>\n");
      out.write("      </div>\n");
      out.write("     \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--Ending of post model-->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\" integrity=\"sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#profile_edit').hide()\n");
      out.write("                let editstatus = false;\n");
      out.write("                $('#edit').click(function () {\n");
      out.write("                    if (editstatus == false)\n");
      out.write("                    {\n");
      out.write("                        $('#profile_detail').hide()\n");
      out.write("                        $('#profile_edit').show()\n");
      out.write("                        editstatus = true;\n");
      out.write("                        $(this).text(\"Back\")\n");
      out.write("\n");
      out.write("                    } else\n");
      out.write("                    {\n");
      out.write("                        $(\"#profile_detail\").show()\n");
      out.write("                        $(\"#profile_edit\").hide()\n");
      out.write("                        editstatus = false;\n");
      out.write("                        $(this).text(\"Edit\")\n");
      out.write("                    }\n");
      out.write("                })\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <!--now add post js-->\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(e) {\n");
      out.write("               $(\"#addpost\").on(\"submit\",function (event){\n");
      out.write("//                   this code get called when from is submited\n");
      out.write("                   event.preventDefault();\n");
      out.write("                   let form=new FormData(this);\n");
      out.write("//                   now requesting to server\n");
      out.write("                     $.ajax({\n");
      out.write("                         url:\"Addpostservlet\",\n");
      out.write("                         type: 'POST',\n");
      out.write("                         data: form,\n");
      out.write("                         success: function (data, textStatus, jqXHR) {\n");
      out.write("//                        success\n");
      out.write("                        \n");
      out.write("                    },\n");
      out.write("                    error: function (jqXHR, textStatus, errorThrown) {\n");
      out.write("                        \n");
      out.write("                    },\n");
      out.write("                    processData: false,\n");
      out.write("                    contentType: false\n");
      out.write("                     })\n");
      out.write("\n");
      out.write("                  \n");
      out.write("        \n");
      out.write("               })\n");
      out.write("    \n");
      out.write("})\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
