package com.user.dao;

import com.user.entity.User;
import java.sql.*;
import java.util.ArrayList;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;

        try {
            PreparedStatement ps = this.con.prepareStatement("INSERT INTO `user`(`name`, `gender`, `email`, `age`, `phno`) VALUES (?,?,?,?,?)");

            ps.setString(1, user.getName());
            ps.setString(2, user.getGender());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getAge());
            ps.setString(5, user.getPhno());

            ps.executeUpdate();

            f = true;

        } catch (Exception e) {
        }
        return f;
    }

    public ArrayList<User> getAllUser() {
        ArrayList<User> all = new ArrayList<User>();

        try {
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery("select * from user");
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                all.add(user);
            }
        } catch (Exception e) {
        }
        return all;
    }

    public User getIdByUser(int id) {
        User user = null;

        try {
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery("select * from user where uid='" + id + "'");
            if (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2),rs.getString(4) , rs.getString(3), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return user;
    }

    public boolean updateUser(User user) {
        boolean f = false;

        try {

            PreparedStatement ps = this.con.prepareStatement("UPDATE `user` SET `name`=?,`gender`=?,`email`=?,`age`=?,`phno`=? WHERE uid=?");
            ps.setString(1, user.getName());
            ps.setString(2, user.getGender());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getAge());
            ps.setString(5, user.getPhno());
            ps.setInt(6, user.getId());
            
            ps.executeUpdate();
            
            f = true;

        } catch (Exception e) {
        }

        return f;
    }

    public boolean deleteUser(int id)
    {
        boolean f = false;

        try {

            PreparedStatement ps = this.con.prepareStatement("delete from user where uid='"+id+"'"); 
            
            ps.executeUpdate();
            
            f = true;

        } catch (Exception e) {
        }

        return f;        
    }
    
}
