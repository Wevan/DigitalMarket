package service;

import bean.Bascket;
import bean.Product;
import dao.BascketDao;
import dao.ProductDao;

import java.util.ArrayList;

public class BascketService {
    private BascketDao bascketDao;

    public void insertToBkt(int pid,int uid) throws Exception{
        bascketDao=new BascketDao();
        bascketDao.insertToBkt(pid,uid);
    }

    public ArrayList<Bascket> list(int uid){
        bascketDao=new BascketDao();
        return bascketDao.listPro(uid);
    }
}
