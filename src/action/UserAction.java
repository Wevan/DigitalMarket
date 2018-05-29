package action;

import bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import service.UserService;
import utils.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserAction extends ActionSupport {
    private User user;
    private Connection conn = JDBCUtil.getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private UserService userService=null;

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
        System.out.println("a is "+chzuname+chzupass);
        userService=new UserService();
        User u=userService.login(chzuname,chzupass);
        if (u!=null) {
            ActionContext.getContext().getSession().put("user",u);
            ActionContext.getContext().getSession().put("uid",u.getId());
            return SUCCESS;
        }else {
            return LOGIN;
        }
    }


    public String regist() throws Exception {
        System.out.println("We got the msg "+getUser().getUsername()+getUser().getPassword());
        userService=new UserService();
        userService.regist(user);
        ActionContext.getContext().getSession().put("chzuname", getUser().getName());

        return SUCCESS;
    }
}
