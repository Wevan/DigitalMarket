package dao;

import bean.User;
import utils.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private Connection conn = JDBCUtil.getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public int userRegist(User user) {
        int a = 0;
        try {

            String sql = "insert into user(username,password,name,phone,addr,ecode) values(?,?,?,?,?,?)";
            System.out.println("dao is " + user.getPassword() + user.getUsername());

            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getEcode());
            a = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return a;
    }

    public User userLogin(String username, String password) throws SQLException {
        User user = new User();
        String sql = "select * from user where username=? and password=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        rs = ps.executeQuery();
        while (rs.next()) {
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setPhone(rs.getString("phone"));
            user.setName(rs.getString("name"));
            user.setAddress(rs.getString("addr"));
            user.setEcode(rs.getString("ecode"));
            user.setId(rs.getInt("id"));
        }
        return user;
    }

    public User userMsg(int id) throws Exception {
        User user = new User();
        String sql = "select * from user where id=?";
        ps = conn.prepareStatement(sql);
        ps.setInt(1, id);
        rs = ps.executeQuery();
        while (rs.next()) {
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setPhone(rs.getString("phone"));
            user.setName(rs.getString("name"));
            user.setAddress(rs.getString("addr"));
            user.setEcode(rs.getString("ecode"));
            user.setId(rs.getInt("id"));
        }
        return user;
    }


    public int update(User user) {
        //language=MySQL
        String sql = "update user set addr = ? ,username = ? , name = ? , password = ? , phone = ? , ecode = ? where id = ?";
        int row = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getAddress());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getName());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getPhone());
            ps.setString(6, user.getEcode());
            ps.setInt(7, user.getId());
            row = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return row;
    }
}
