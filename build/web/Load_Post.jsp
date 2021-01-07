
<%@page import="java.util.List"%>
<%@page import="com.techblog.entities.Post"%>
<%@page import="com.techblog.helpher.DbConnection"%>
<%@page import="com.techblog.doa.PostDao"%>
<%@page errorPage="Error_Page.jsp" %>

<div class="row mt-2">

    <%
            Thread.sleep(1000);
        List<Post> posts=null;
        PostDao dao = new PostDao(DbConnection.getConnection());
        
        int cid=Integer.parseInt(request.getParameter("cid"));
         posts = dao.getAllPosts();
        if(cid==0){
            posts = dao.getAllPosts();
        }else{
             posts = dao.getPostByCatId(cid);
        }
       if(posts.size()==0)
       {
           out.println("<h3 class='display-3 text-center' >Sorry!!! no post in this categorise</h3>");
           return;
       }
       
        for (Post p : posts) {

    %>

    <div class="col-md-6 mt-2">
        <div class="card">
            <img class="card-img-top" src="Blog_pic/<%= p.getpPic() %>">
            <div class="card-body">
                <b> <%= p.getpTitle()%></b>
                <p><%=p.getpContent()%></p>
                <!--<pre><%= p.getpCode()%></pre>-->                
            </div>
            <div class="card-footer text-center primary-background">
                 <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up"><span>10</span></i></a>
                 <a href="Show_Blog.jsp?post_id=<%= p.getPid() %>" class="btn btn-outline-light btn-sm">Read more..</a>
               
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"><span>28</span></i></a>
                
            </div>

        </div>

    </div> 


    <%
        }


    %>
</div>