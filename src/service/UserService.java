package service;

import bean.User;
import dao.UserDao;

import java.sql.SQLException;
import java.util.List;

public class UserService {
    private UserDao dao;

    public void regist(User user) {
        dao = new UserDao();
        dao.userRegist(user);
    }

    public User login(String uname, String upwd) {
        User user = new User();
        dao = new UserDao();
        try {
            user = dao.userLogin(uname, upwd);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public User userMsg(int id) throws Exception {

        dao = new UserDao();
        User user = dao.userMsg(id);
        System.out.println("do" + user.getEcode());
        return user;
    }

    public int updateInfo(User user) {
        dao = new UserDao();
        return dao.update(user);
    }

    public List<User> userList() throws Exception{
        dao=new UserDao();
        return dao.userList();
    }
}
