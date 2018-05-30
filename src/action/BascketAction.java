package action;

import bean.Bascket;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import service.BascketService;

import java.util.ArrayList;

public class BascketAction extends ActionSupport {
    private BascketService bascketService;
    private int pid;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Override
    public String execute() throws Exception {
        bascketService=new BascketService();
        int uid=(Integer) ActionContext.getContext().getSession().get("uid");
        bascketService.insertToBkt(pid,uid);
        return SUCCESS;
    }

    public String listPro(){
        bascketService=new BascketService();
        int uid=(Integer) ActionContext.getContext().getSession().get("uid");
        ArrayList<Bascket> list =bascketService.list(uid);

        ActionContext.getContext().getSession().put("listBsk", list);
        return SUCCESS;
    }

    public String deletePro() throws Exception {
        bascketService=new BascketService();
        bascketService.deletePro(id);
        listPro();
        return SUCCESS;
    }
}
