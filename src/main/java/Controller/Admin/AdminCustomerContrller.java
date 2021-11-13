package Controller.Admin;

import Model.UsersEntity;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/customer")
public class AdminCustomerContrller extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher dispatcher = req.getRequestDispatcher("/Admin/Customer.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("Id");
        if(id != null)
        {
            try{
                int idCustomer = Integer.parseInt(id);
                UsersEntity users = SingletonServiceUltils.getUserDAOImpl().getOneById(idCustomer);
                if(users != null){
                    users.setActive(false);
                    SingletonServiceUltils.getUserDAOImpl().update(users);
                }
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }

        resp.sendRedirect("/admin/customer");
    }
}
