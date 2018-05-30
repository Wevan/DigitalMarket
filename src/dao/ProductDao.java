package dao;

import bean.Product;
import utils.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private Connection conn = JDBCUtil.getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public int insertPro(Product product) throws Exception {
        int a = 0;


        String sql = "insert into product(sid,description,image,price,totalnum,pname) values(?,?,?,?,?,?)";
        System.out.println("dao is " + product.getDesc() + product.getPname());

        ps = conn.prepareStatement(sql);
        ps.setLong(1, product.getSid());
        ps.setString(2, product.getDesc());
        ps.setString(3, product.getImage());
        ps.setDouble(4, product.getPrice());
        ps.setInt(5, product.getTotalNum());
        ps.setString(6, product.getPname());
        a = ps.executeUpdate();

        return a;
    }

    public ArrayList<Product> listPro() {
        ArrayList<Product> list = new ArrayList<Product>();
        try {

            String sql = "SELECT * FROM product";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
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

    public Product findOne(int pid) {
        Product product = new Product();
        try {

            String sql = "SELECT * FROM product where id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                product.setImage(rs.getString("image"));
                product.setPname(rs.getString("pname"));
                product.setPrice(rs.getDouble("price"));
                product.setSid(rs.getInt("sid"));
                product.setDesc(rs.getString("description"));
                product.setId(pid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }


    public List<Product> findProduct(String message) {
        List<Product> productList = new ArrayList<>();
        //language=MySQL
        String sql = "select *\n" +
                "from product\n" +
                "where pname like ?\n" +
                "   or description like ?;";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + message + "%");
            ps.setString(2, "%" + message + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setImage(rs.getString("image"));
                product.setPname(rs.getString("pname"));
                product.setPrice(rs.getDouble("price"));
                product.setSid(rs.getInt("sid"));
                product.setDesc(rs.getString("description"));
                product.setId(rs.getInt("id"));
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }
}
