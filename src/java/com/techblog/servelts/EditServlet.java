package com.techblog.servelts;

import com.techblog.doa.UserDao;
import com.techblog.entities.Message;
import com.techblog.entities.User;
import com.techblog.helpher.DbConnection;
import com.techblog.helpher.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class EditServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServlet</title>");
            out.println("</head>");
            out.println("<body>");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String about = request.getParameter("about");
            
            Part part = request.getPart("profile");
            String imagename = part.getSubmittedFileName();
//                getting the user from the session
            HttpSession s = request.getSession();
            User user = (User) s.getAttribute("currentuser");
            user.setEmail(email);
            user.setPassword(password);
            user.setAbout(about);
            user.setName(name);
            String oldpath= user.getProfile();
            user.setProfile(imagename);

//                  updating the data in database
            UserDao d = new UserDao(DbConnection.getConnection());
            boolean ans = d.updateUser(user);
            if (ans) {
                
                String path = request.getRealPath("/") + "Image" + File.separator + user.getProfile();
                String path1 = request.getRealPath("/") + "Image" + File.separator + oldpath;
                Helper.deleteFile(path1);
                
                if (Helper.saveFile(part.getInputStream(), path)) {
                   
                    
                    Message msg = new Message("Profile successfully updated", "success", "alert-success");
                    
                    s.setAttribute("msg", msg);
                }
                
            } else {
                
                
                Message msg = new Message("Sorry !! something went wrong, Please try again", "error", "alert-danger");
                
                s.setAttribute("msg", msg);
            }
            response.sendRedirect("Profile_Page.jsp");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
