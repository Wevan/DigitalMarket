package dao;

import bean.Order;
import utils.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class OrderDao {
    private Connection conn = JDBCUtil.getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs=null;


    public int insertOrder(Order order){
        int a = 0;
        try {

            String sql = "insert into orderMsg(addr,bname,order_time,phone,state,total,uid,pid,sid,pname,ecode,price,image,send,active,note) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Date date = new Date();
            Timestamp timeStamep = new Timestamp(date.getTime());
            ps = conn.prepareStatement(sql);
            ps.setString(1, order.getAddr());
            ps.setString(2, order.getBname());
            ps.setTimestamp(3, timeStamep);
            ps.setString(4, order.getPhone());
            ps.setBoolean(5, order.isState());
            ps.setDouble(6, order.getTotal());
            ps.setInt(7,order.getUid());
            ps.setInt(8,order.getPid());
            ps.setInt(9,order.getSid());
            ps.setString(10,order.getPname());
            ps.setString(11,order.getEcode());
            ps.setDouble(12,order.getPrice());
            ps.setString(13,order.getImage());
            ps.setBoolean(14, false);
            ps.setInt(15,0);
            ps.setString(16,order.getNote());

            a = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return a;
    }

    public int[] insertOrders(ArrayList<Order> orders) throws Exception{
        int a[]=new int[orders.size()];
        BascketDao bascketDao=new BascketDao();
        for (int i = 0; i < orders.size(); i++) {
            String sql = "insert into orderMsg(addr,bname,order_time,phone,state,total,uid,pid,sid,pname,ecode,price,image,send,active,note) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Date date = new Date();
            Timestamp timeStamep = new Timestamp(date.getTime());
            ps = conn.prepareStatement(sql);
            ps.setString(1, orders.get(i).getAddr());
            ps.setString(2, orders.get(i).getBname());
            ps.setTimestamp(3, timeStamep);
            ps.setString(4, orders.get(i).getPhone());
            ps.setBoolean(5, orders.get(i).isState());
            ps.setDouble(6, orders.get(i).getTotal());
            ps.setInt(7,orders.get(i).getUid());
            ps.setInt(8,orders.get(i).getPid());
            ps.setInt(9,orders.get(i).getSid());
            ps.setString(10,orders.get(i).getPname());
            ps.setString(11,orders.get(i).getEcode());
            ps.setDouble(12,orders.get(i).getPrice());
            ps.setString(13,orders.get(i).getImage());
            ps.setBoolean(14, false);
            ps.setInt(15,0);
            ps.setString(16,"默认");
            boolean b=bascketDao.deletePro(orders.get(i).getPid());
            System.out.println("delete bckt "+b+","+orders.get(i).getPid());
            a[i] = ps.executeUpdate();

        }
        return a;
    }

    public ArrayList<Order> listPro(int uid){
        ArrayList<Order> list = new ArrayList<Order>();
        try {

            String sql = "SELECT * FROM ordermsg where uid=? or sid=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,uid);
            ps.setInt(2,uid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setAddr(rs.getString("addr"));
                order.setBname(rs.getString("bname"));
                order.setOrder_time(rs.getTimestamp("order_time"));
                order.setPhone(rs.getString("phone"));
                order.setState(rs.getBoolean("state"));
                order.setTotal(rs.getDouble("total"));
                order.setUid(uid);
                order.setPid(rs.getInt("pid"));
                order.setSid(rs.getInt("sid"));
                order.setPname(rs.getString("pname"));
                order.setEcode(rs.getString("ecode"));
                order.setPrice(rs.getDouble("price"));
                order.setImage(rs.getString("image"));
                order.setActive(rs.getInt("active"));
                order.setSend(rs.getBoolean("send"));
                order.setNote(rs.getString("note"));

                list.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean deleteOrder(int id) throws Exception {
        String sql = "delete FROM ordermsg where id=?";
        ps = conn.prepareStatement(sql);
        ps.setInt(1, id);
        boolean a = ps.execute();
        return a;
    }

    public int modifyOrder(Order order) throws Exception{
        String sql = "update ordermsg set bname=?,phone=?,addr=?,note=? where id=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1,order.getBname());
        ps.setString(2,order.getPhone());
        ps.setString(3,order.getAddr());
        ps.setInt(5, order.getId());
        ps.setString(4,order.getNote());
        int a=ps.executeUpdate();
        System.out.println("OrderDao modify "+order.getBname()+order.getPhone()+order.getAddr()+order.getId()+","+a);
        return a;
    }

    public int sendPro(int id) throws Exception{
        String sql = "update ordermsg set send=true where id=?";
        ps = conn.prepareStatement(sql);
        ps.setInt(1,id);
        int a=ps.executeUpdate();
        System.out.println("OrderDao send Modify "+a);
        return a;
    }

    public int closeOrder(int id,int acode) throws Exception{
        String sql = "update ordermsg set active=? where id=?";
        ps = conn.prepareStatement(sql);
        ps.setInt(1,acode);
        ps.setInt(2,id);
        int a=ps.executeUpdate();
        System.out.println("OrderDao closeOrder Modify "+a);
        return a;
    }

    public int confirmPro(int id) throws Exception{
        String sql = "update ordermsg set state=true where id=?";
        ps = conn.prepareStatement(sql);
        ps.setInt(1,id);
        int a=ps.executeUpdate();
        System.out.println("OrderDao state Modify "+a);
        return a;
    }
}
