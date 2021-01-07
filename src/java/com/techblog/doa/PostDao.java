
package com.techblog.doa;

import com.techblog.entities.Category;
import com.techblog.entities.Post;
import com.techblog.entities.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
  private  Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

   
    public ArrayList<Category>getAllCategories(){
        ArrayList<Category> list=new ArrayList<>();
        try {
            String q="select * from categories";
            Statement st= this.con.createStatement();
            ResultSet set=st.executeQuery(q);
            while(set.next()){
                int cid=set.getInt("cid");
                String name = set.getString("name");
                String discription = set.getString("discription");
                Category c= new Category(cid,name,discription);
                list.add(c);
                
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
        
    }
    public boolean savePost(Post p){
        boolean f= false;
        try {
            String q="insert into posts( pTitle,pContent,pCode,pPic,catId,userid) values(?,?,?,?,?,?)";
           PreparedStatement pst=con.prepareStatement(q);
           pst.setString(1,p.getpTitle());
           pst.setString(2,p.getpContent());
           pst.setString(3,p.getpCode());
           pst.setString(4,p.getpPic());
           pst.setInt(5,p.getCatId());
           pst.setInt(6,p.getUserid());
           pst.executeUpdate();
           f=true;
           
           
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            
           
        }
        return f;
        
    }
    
//    get all the post
    public List<Post> getAllPosts(){
        List<Post> list=new ArrayList<>();
//        fetching all the post
try {
         PreparedStatement pst=con.prepareStatement("select * from posts order by pid desc");
         ResultSet set=pst.executeQuery();
         while(set.next())
         {
             int pid=set.getInt("pid");
             String ptitle=set.getString("pTitle");
             String pcontent=set.getString("pContent");
             String pcode=set.getString("pCode");
             String ppic=set.getString("pPic");
             Timestamp date=set.getTimestamp("pDate");
             int catid=set.getInt("catId");
             int userid=set.getInt("userid");
             System.out.println("Done");
             Post post= new Post(pid, ptitle, pcontent, pcode, ppic, date, catid,userid);
             list.add(post);
         }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }
    public List<Post> getPostByCatId(int catId){
         List<Post> list=new ArrayList<>();
//        fetching post by catid
try {
         PreparedStatement pst=con.prepareStatement("select * from posts where catId=?");
         pst.setInt(1, catId);
         ResultSet set=pst.executeQuery();
         while(set.next())
         {
             int pid=set.getInt("pid");
             String ptitle=set.getString("pTitle");
             String pcontent=set.getString("pContent");
             String pcode=set.getString("pCode");
             String ppic=set.getString("pPic");
             Timestamp date=set.getTimestamp("pDate");
           
             int userid=set.getInt("userid");
             
             Post post= new Post(pid, ptitle, pcontent, pcode, ppic, date, catId,userid);
             list.add(post);
         }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public Post getPostByPostId( int postid){
        Post post=null;
        String q="select *from posts where pid=?";
        try {
             PreparedStatement pst=con.prepareStatement(q);
             pst.setInt(1, postid);
             ResultSet set= pst.executeQuery();
             if(set.next()){
                 post=new Post();
                  int catId=set.getInt("catId");
                  int pid=set.getInt("pid");
             String ptitle=set.getString("pTitle");
             String pcontent=set.getString("pContent");
             String pcode=set.getString("pCode");
             String ppic=set.getString("pPic");
             Timestamp date=set.getTimestamp("pDate");
           
             int userid=set.getInt("userid");
             
             post= new Post(pid, ptitle, pcontent, pcode, ppic, date, catId,userid);
             
                 
             }
             
            
        } catch (Exception e) {
            e.printStackTrace();
        }
       
        return post;
    }
  }
