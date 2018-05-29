package service;

import bean.Product;
import dao.ProductDao;

import java.util.ArrayList;

public class ProductService {
    private ProductDao dao;
    public void insert(Product product) throws Exception {
        dao=new ProductDao();
        dao.insertPro(product);
    }

    public ArrayList<Product> list(){
        dao=new ProductDao();
        return dao.listPro();
    }

    public Product findOne(int pid){
        dao=new ProductDao();
        return dao.findOne(pid);
    }
}
