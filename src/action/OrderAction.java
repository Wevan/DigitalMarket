package action;

import bean.Order;
import bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.OrderService;
import service.ProductService;
import service.UserService;

import java.util.ArrayList;

public class OrderAction extends ActionSupport {
    private Order order;

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
    private UserService service;
    private OrderService orderService;

    @Override
    public String execute() throws Exception {
        order= (Order) ActionContext.getContext().getSession().get("directOrder");
        service=new UserService();
        User user=service.userMsg(order.getUid());
        order.setAddr(user.getAddress());
        order.setEcode(user.getEcode());
        order.setBname(user.getName());
        order.setPhone(user.getPhone());
        order.setState(false);


        orderService=new OrderService();
        orderService.insertOrder(order);
        return SUCCESS;
    }

    public String listOrder(){
        orderService = new OrderService();
        int uid=(Integer) ActionContext.getContext().getSession().get("uid");
        ArrayList<Order> list = orderService.listOrder(uid);
        ActionContext.getContext().put("listOrder", list);
        return SUCCESS;
    }

    public String deleteOrder() throws Exception {
        orderService=new OrderService();
        System.out.println(order.getId());
        orderService.deleteOrder(order.getId());
        listOrder();
        return SUCCESS;
    }

    public String modifyOrder() throws Exception{
        System.out.println("Order Action get the oid "+order.getId());
        orderService=new OrderService();
        orderService.modifyOrder(order);
        listOrder();
        return SUCCESS;
    }
}
