package Controller;

import Business.RegisterBusiness;
import DAO.AccountDAOImpl;
import DAO.UserDAOImpl;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public @WebServlet("/register")
class RegisterController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = "/login";
        String error="";
        try {
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String email = req.getParameter("email");
            String retypepassword = req.getParameter("retypepassword");

            if(email == null || username.length() < 1 )
            {
                error = "Mail is required";
            }
            else if(username == null || username.length() < 8 )
            {
                error = "username must longer than 8";
            }
            else if(password == null || password.length() < 8 )
            {
                error = "password must longer than 8";
            }
            else if(SingletonServiceUltils.getAccountDAOImpl().CheckUsernameExist(username))
            {
                error = "username is existed";
            }
            else if(SingletonServiceUltils.getUserDAOImpl().getOneByEmail(email) != null)
            {
                error = "email is existed";
            }
            else {
                Boolean hasRegister = RegisterBusiness.regiterUser(username,password,email);
                path = "/account";
                resp.sendRedirect(path);
                return;
            }
        }catch (Exception e){
            System.out.println("Registe failed: "+e);
        }
       DirectEror(error,req,resp);
    }

    public void DirectEror(String errorMessage,HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        req.setAttribute("errorMessage", errorMessage);
        RequestDispatcher dispatcher //
                = req.getServletContext().getRequestDispatcher("/login.jsp");
        dispatcher.forward(req, resp);
        return;
    }
}

