package dao;

import bean.Bascket;
import bean.Product;
import utils.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BascketDao {
    private Connection conn = JDBCUtil.getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ProductDao productDao;

    public int insertToBkt(int pid,int uid) throws Exception{
        productDao=new ProductDao();
        Product product=productDao.findOne(pid);
        int a = 0;
        String sql = "insert into bascket(sid,description,image,price,pid,pname,uid) values(?,?,?,?,?,?,?)";
        ps = conn.prepareStatement(sql);
        ps.setLong(1, product.getSid());
        ps.setString(2, product.getDesc());
        ps.setString(3, product.getImage());
        ps.setDouble(4, product.getPrice());
        ps.setInt(5, product.getId());
        ps.setString(6, product.getPname());
        ps.setInt(7,uid);
        a = ps.executeUpdate();
        return a;
    }

    public ArrayList<Bascket> listPro(int uid){
        ArrayList<Bascket> list = new ArrayList<Bascket>();
        try {

            String sql = "SELECT * FROM bascket";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Bascket product = new Bascket();
                product.setImage(rs.getString("image"));
                product.setPname(rs.getString("pname"));
                product.setPrice(rs.getDouble("price"));
                product.setId(rs.getInt("id"));
                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
