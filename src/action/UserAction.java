package action;

import bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import service.UserService;
import utils.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Pattern;

public class UserAction extends ActionSupport {
    private User user;
    private UserService userService = null;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public void validate() {


    }

    @Override
    public String execute() throws Exception {
        String chzuname = getUser().getUsername();
        String chzupass = getUser().getPassword();
        System.out.println("a is " + chzuname + chzupass);
        userService = new UserService();
        User u = userService.login(chzuname, chzupass);
        if (u.getPassword() != null) {
            ActionContext.getContext().getSession().put("user", u);
            ActionContext.getContext().getSession().put("uid", u.getId());
            return SUCCESS;
        } else {
            addFieldError("login","用户名和密码不匹配");
            return LOGIN;
        }
    }




    public String regist() throws Exception {
        System.out.println("We got the msg " + getUser().getUsername() + getUser().getPassword());
        userService = new UserService();
        userService.regist(user);
        ActionContext.getContext().getSession().put("chzuname", getUser().getName());

        return SUCCESS;
    }



    public void validateRegist() throws Exception {
        userService=new UserService();
        ArrayList<User> users= (ArrayList<User>) userService.userList();
        for (int i = 0; i < users.size(); i++) {
            if (this.user.getUsername().equals(users.get(i).getUsername())){
                this.addFieldError("username", "用户名已存在");
                if (this.user.getPhone().equals(users.get(i).getPhone())){
                    addFieldError("phone", "手机号已经注册");
                }
                break;
            }
            if (this.user.getPhone().equals(users.get(i).getPhone())){
                this.addFieldError("phone", "手机号已经注册");
                if (this.user.getUsername().equals(users.get(i).getUsername())){
                    addFieldError("username", "用户名已存在");
                }
                break;
            }
        }
    }

    public String updateUserById() throws Exception {
        System.out.println(getUser().getId());
        System.out.println(getUser().getUsername());
        userService = new UserService();
        int f = userService.updateInfo(user);
        if (f != 0) {
            User user = userService.userMsg(getUser().getId());
            Map<String, Object> session = ActionContext.getContext().getSession();
            session.remove("user");
            session.remove("uid");
            session.put("user", user);
            session.put("uid", user.getId());
        }
        return SUCCESS;
    }
}
