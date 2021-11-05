package Controller;

import DAO.OrderProductDAOImpl;
import DAO.SalesOrderDAOImpl;
import Model.OrderProductsEntity;
import Model.SalesOrdersEntity;
import Utils.SingletonServiceUltils;

import javax.ejb.Singleton;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SaleOrderController", value = "/SaleOrderController")
public class SaleOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //lay ra cai cart id
        //int cartid = Integer.parseInt(request.getParameter("cartid"));
        int cartid=1;
        //lay ra danh sach san pham trong cart
        List<OrderProductsEntity> list= SingletonServiceUltils.getOrderProductDAOImpl().getAllbySaleOrderId(cartid);
        // tong tien tat ca
        long sumtotal= SingletonServiceUltils.getOrderProductDAOImpl().SumSubTotalBySaleId(cartid);
        // lay ra cai saleorder cua user
        SalesOrdersEntity s= SingletonServiceUltils.getSalesOrderDAOImpl().getOnebyId(cartid);
        request.setAttribute("lproduct",list);
        request.setAttribute("sumtotal",sumtotal);
        request.setAttribute("saleorder",s);

        RequestDispatcher rd=request.getRequestDispatcher("/checkout.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
