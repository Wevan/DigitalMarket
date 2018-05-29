package service;

import bean.User;
import dao.UserDao;

import java.sql.SQLException;

public class UserService {
    private UserDao dao;

    public void regist(User user){
        dao=new UserDao();
        dao.userRegist(user);
    }

    public User login(String uname,String upwd){
        User user=new User();
        dao=new UserDao();
        try {
            user=dao.userLogin(uname,upwd);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public User userMsg(int id) throws Exception{
        User user=new User();
        dao=new UserDao();
        user=dao.userMsg(id);
        System.out.println("do"+user.getEcode());
        return user;
    }
}
