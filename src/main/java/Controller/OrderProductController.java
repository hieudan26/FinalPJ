package Controller;

import DAO.OrderProductDAOImpl;
import DAO.ProductDAOImpl;
import DAO.SalesOrderDAOImpl;
import Model.OrderProductsEntity;
import Model.ProductsEntity;
import Model.SalesOrdersEntity;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrderProductController", value = "/OrderProductController")
public class OrderProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    //khi add to cart thi bắt duoc giữ liệu
        //pid
    int pid= Integer.parseInt(request.getParameter("productid"));
    //so luong
    int qty= Integer.parseInt(request.getParameter("qtybutton"));
    ProductsEntity p= SingletonServiceUltils.getProductDAOImpl().getProductbyID(pid);
    OrderProductsEntity or=new OrderProductsEntity();
    or.setId(pid);
    //lay ra gia theo status cua pid
    int price= SingletonServiceUltils.getProductDAOImpl().getpricebyProductIdandStatus(p.getId(),p.getProductStatusesEntity().getName());
    or.setSubtotal(price*qty);
    or.setPrice(price);
    or.setName(p.getName());
    or.setQuantity(qty);
    or.setDescription(p.getDescription());
    // dang thu voi cartid 1
    SalesOrdersEntity so= SingletonServiceUltils.getSalesOrderDAOImpl().getOnebyId(1);
    or.setSalesOrdersEntity(so);
    //insert vo order product
    SingletonServiceUltils.getOrderProductDAOImpl().insert(or);

    RequestDispatcher rd=request.getRequestDispatcher("/singleproduct");
    rd.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
