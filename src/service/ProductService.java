package service;

import bean.Product;
import dao.ProductDao;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private ProductDao dao;

    public void insert(Product product) throws Exception {
        dao = new ProductDao();
        dao.insertPro(product);
    }

    public ArrayList<Product> list() {
        dao = new ProductDao();
        return dao.listPro();
    }

    public Product findOne(int pid) {
        dao = new ProductDao();
        return dao.findOne(pid);
    }

    public List<Product> searchProduct(String message) {
        dao = new ProductDao();
        return dao.findProduct(message);
    }

    public List<Product> uerProList(int id) {
        dao = new ProductDao();
        return dao.userProList(id);
    }

    public void deletePro(int id) throws Exception{
        dao=new ProductDao();
        dao.deletePro(id);
    }

    public void modifyPro(Product product) throws Exception{
        dao=new ProductDao();
        dao.modifyPro(product);
    }

    public List<Product> searchUPro(String message,int sid) {
        dao = new ProductDao();
        return dao.findUPro(message,sid);
    }
}
