package Controller;

import DAO.OrderProductDAOImpl;
import DAO.ProductDAOImpl;
import DAO.SalesOrderDAOImpl;
import DTO.UserAccountDTO;
import Model.OrderProductsEntity;
import Model.ProductsEntity;
import Model.SalesOrdersEntity;
import Utils.ApplicationUtils;
import Utils.SingletonServiceUltils;
import org.checkerframework.checker.units.qual.C;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.Application;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "AddorCheckRedirectController", urlPatterns = {"/AddorCheckRedirectController", "/AddorCheckRedirectController/editQuantity"})
public class AddorCheckRedirectController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        try {
            switch (path) {
                case "/AddorCheckRedirectController/editQuantity":
                    editQuantityOfProduct(request, response);
                    break;
                default:
                    processRequest(request, response, "");
                    break;
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response, "");
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, String quantityInCart)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String productId = request.getParameter("productId");
        String quantity = "";
        if(quantityInCart == "")
            quantity = request.getParameter("quantity");
        else
            quantity = quantityInCart;
        String colorId = request.getParameter("colorId");
        UserAccountDTO userAccountDTO = ApplicationUtils.getLoginedUser(request);
        if(userAccountDTO == null) {
            Cookie[] cookies = request.getCookies();
            String context = "";
            for (Cookie cookie: cookies
            ) {
                if(cookie.getName().equals("products")) {
                    context += cookie.getValue();
                    cookie.setMaxAge(0);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                }
            }
            String productIds = "";
            for (int i = 0; i < Integer.parseInt(quantity); i++) {
                if(i == 0) {
                    productIds += productId + "q" + colorId;
                }
                else {
                    productIds = productIds + "p" + productId + "q" + colorId;
                }
            }
            if(context.isEmpty()) {
                context += productIds;
            }
            else {
                context = context + "p" + productIds;
            }
            Cookie cookie = new Cookie("products", context);
            cookie.setPath("/");
            cookie.setMaxAge(60 * 60 * 24);
            response.addCookie(cookie);

            response.sendRedirect("/cart");
        }
    }
    private void editQuantityOfProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String productId = request.getParameter("productId");
        String quantity = request.getParameter("quantity");
        String colorId = request.getParameter("colorId");
        String inputQuantity = request.getParameter("inputQuantity");
        Integer diffQuantity = (Integer.parseInt(inputQuantity) - Integer.parseInt(quantity));
        if(diffQuantity > 0) {
            processRequest(request, response, diffQuantity.toString());
        }
        else {
            UserAccountDTO userAccountDTO = ApplicationUtils.getLoginedUser(request);
            if(userAccountDTO == null) {
                Cookie[] cookies = request.getCookies();
                String context = "";
                for (Cookie cookie: cookies
                ) {
                    if(cookie.getName().equals("products")) {
                        context += cookie.getValue();
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);
                    }
                }
                if(diffQuantity < 0) {
                    diffQuantity = -diffQuantity;
                    String[] contextProducts = context.split("p");
                    String newContext = "";
                    for (int i = 0; i < contextProducts.length; i++) {
                        String[] productAndColor = contextProducts[i].split("q");
                        if(productAndColor[0].equals(productId) && productAndColor[1].equals(colorId)) {
                            if(diffQuantity > 0)
                                diffQuantity--;
                            else {
                                if(newContext.isEmpty()) {
                                    newContext = contextProducts[i];
                                }
                                else {
                                    newContext += "p" + contextProducts[i];
                                }
                            }
                        }
                        else{
                            if(newContext.isEmpty()) {
                                newContext = contextProducts[i];
                            }
                            else {
                                newContext += "p" + contextProducts[i];
                            }
                        }
                    }
                    Cookie cookie = new Cookie("products", newContext);
                    cookie.setMaxAge(60 * 60 * 24);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                    response.sendRedirect("/cart");
                }
            }
        }
    }
}