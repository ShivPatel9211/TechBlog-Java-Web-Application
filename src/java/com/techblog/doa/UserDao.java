/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblog.doa;

import com.techblog.entities.User;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    //method to insert user to the database
    public boolean saveUser(User user) {
        boolean f = false;
        try {

            String query = "insert into user(name,email,password,gender,about) values (?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPassword());
            pst.setString(4, user.getGender());
            pst.setString(5, user.getAbout());
            pst.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return f;
    }
//    get user by user's email and password

    public User getUserEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where email=? and password= ?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password );
            ResultSet set=pst.executeQuery();
            if(set.next())
            {
                user=new User();
                String name=set.getString("name");
                user.setName(name);
               user.setId(set.getInt("id"));
               user.setEmail(set.getString("email"));
               user.setPassword(set.getString("password"));
               user.setGender(set.getString("gender"));
               user.setAbout(set.getString("about"));
               user.setDatetime(set.getTimestamp("rdate"));
             
               user.setProfile(set.getString("profile"));
                
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return user;
    }
    public boolean updateUser(User user)
    { 
        boolean f =false;
        try {
             String query="update user set name=?, email=?, password=?,gender=?,about=?,profile=? where id=?";
             PreparedStatement pst=con.prepareStatement(query);
             pst.setString(1,user.getName());
             pst.setString(2,user.getEmail());
             
             pst.setString(3,user.getPassword());
             pst.setString(4,user.getGender());
             pst.setString(5,user.getAbout());
             pst.setString(6,user.getProfile());
             pst.setInt(7,user.getId());
             pst.executeUpdate();
             f=true;
             
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return f;
    }
      public User getUserByPostId(int postId){
        User user =null;
        String q="select *from user where id=?";
        try {
            PreparedStatement pst=con.prepareStatement(q);
            
            pst.setInt(1, postId);
            ResultSet set= pst.executeQuery();
            if(set.next()){
                user=new User();
                String name=set.getString("name");
                user.setName(name);
               user.setId(set.getInt("id"));
               user.setEmail(set.getString("email"));
               user.setPassword(set.getString("password"));
               user.setGender(set.getString("gender"));
               user.setAbout(set.getString("about"));
               user.setDatetime(set.getTimestamp("rdate"));
             
               user.setProfile(set.getString("profile"));
                
            }
        } catch (Exception e) {
            e.printStackTrace();
            
         }
        return user;
    }

}
