package action;

import bean.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import service.ProductService;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

public class ProductAction extends ActionSupport {
    private Product product;
    private String message;
    private File uploadImage; //得到上传的文件
    private String uploadImageContentType; //得到文件的类型
    private String uploadImageFileName; //得到文件的名称
    private ProductService productService;


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public File getUploadImage() {
        return uploadImage;
    }

    public void setUploadImage(File uploadImage) {
        this.uploadImage = uploadImage;
    }

    public String getUploadImageContentType() {
        return uploadImageContentType;
    }

    public void setUploadImageContentType(String uploadImageContentType) {
        this.uploadImageContentType = uploadImageContentType;
    }

    public String getUploadImageFileName() {
        return uploadImageFileName;
    }

    public void setUploadImageFileName(String uploadImageFileName) {
        this.uploadImageFileName = uploadImageFileName;
    }


    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String execute() throws Exception {
        productService = new ProductService();
        ArrayList<Product> list = productService.list();
        ActionContext.getContext().put("listpro", list);
        return SUCCESS;


    }

    public String upload() throws Exception {
        System.out.println("product img is " + getUploadImageContentType() + getUploadImageFileName());
        //获取要保存文件夹的物理路径(绝对路径)
        String realPath = ServletActionContext.getServletContext().getRealPath("/upload");
        File file = new File(realPath);
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if (!file.exists()) {
            file.mkdirs();
        }

        try {
            //保存文件
            FileUtils.copyFile(uploadImage, new File(file, uploadImageFileName));
            System.out.println("path is " + realPath);
        } catch (IOException e) {
            e.printStackTrace();
        }
        getProduct().setImage("\\upload\\" + uploadImageFileName);
        int uid=(Integer) ActionContext.getContext().getSession().get("uid");
        getProduct().setSid(uid);
        productService = new ProductService();
        productService.insert(product);
        ActionContext.getContext().getSession().put("product", product);
        return SUCCESS;
    }

    public String findOne() {
        productService = new ProductService();
        int pid = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
        Product product = productService.findOne(pid);
        ActionContext.getContext().put("proone", product);
        return SUCCESS;
    }

    public String search() {
        System.out.println(message);
        productService = new ProductService();
        ActionContext.getContext().put("products", productService.searchProduct(message));
        return SUCCESS;
    }

    public String userProList(){
        productService=new ProductService();
        int uid=(Integer) ActionContext.getContext().getSession().get("uid");
        ActionContext.getContext().getSession().put("userProList", productService.uerProList(uid));
        ArrayList<Product> productList= (ArrayList<Product>) productService.uerProList(uid);

        return SUCCESS;
    }

    public String deletePro() throws Exception {
        productService=new ProductService();
        productService.deletePro(product.getId());
        userProList();
        return SUCCESS;
    }

    public String modifyPro() throws Exception{
        productService=new ProductService();
        productService.modifyPro(product);
        System.out.println("modify msg "+product.getTotalNum());
        userProList();
        return SUCCESS;
    }

    public String searchUPro() {
        System.out.println(message);
        productService = new ProductService();
        int uid=(Integer) ActionContext.getContext().getSession().get("uid");
        ActionContext.getContext().put("uproducts", productService.searchUPro(message,uid));
        return SUCCESS;
    }
}
