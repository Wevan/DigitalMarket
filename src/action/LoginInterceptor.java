package action;

import bean.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class LoginInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {

        HttpSession session = ServletActionContext.getRequest().getSession();
        User user= (User) session.getAttribute("user");

        if (user != null) {
            System.out.println("LoginInterceptor################################");
            return invocation.invoke();
        }
        return "error";
    }

}