package service;

import bean.Order;
import dao.OrderDao;

import java.util.ArrayList;

public class OrderService {
    private OrderDao orderDao;

    public void insertOrder(Order order){
        orderDao=new OrderDao();
        orderDao.insertOrder(order);
    }

    public ArrayList<Order> listOrder(int uid){
        orderDao=new OrderDao();
        return orderDao.listPro(uid);
    }

    public void deleteOrder(int id) throws Exception {
        orderDao=new OrderDao();
        orderDao.deleteOrder(id);
    }

    public void modifyOrder(Order order) throws Exception{
        orderDao=new OrderDao();
        orderDao.modifyOrder(order);
    }

    public void insertOrders(ArrayList<Order> orders) throws Exception{
        orderDao=new OrderDao();
        orderDao.insertOrders(orders);
    }

    public void sendPro(int id) throws Exception{
        orderDao=new OrderDao();
        orderDao.sendPro(id);
    }

    public void confirmPro(int id) throws Exception{
        orderDao=new OrderDao();
        orderDao.confirmPro(id);
    }

    public void colseOrder(int id,int acode) throws Exception{
        orderDao=new OrderDao();
        orderDao.closeOrder(id, acode);
    }
}
