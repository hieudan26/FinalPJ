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

@WebServlet(name = "AddorCheckRedirectController", value = "/AddorCheckRedirectController")
public class AddorCheckRedirectController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productIdString = request.getParameter("productId");
        String colorIdString = request.getParameter("colorId");
        String quantityString = request.getParameter("quantity");

        int productId = Integer.parseInt(productIdString);
        int colorId = Integer.parseInt(colorIdString);
        int quantity = Integer.parseInt(quantityString);

        String action = request.getParameter("action");
        if (action.equals("addCart")) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("cart.jsp");
            requestDispatcher.forward(request, response);
        }
        else {      //buyNow
            response.sendRedirect("checkout.jsp");
        }
    }
}
