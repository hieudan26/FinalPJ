package Controller;

import Business.LoginBusiness;
import DTO.AddressDTO;
import DTO.UserAccountDTO;
import Model.UsersEntity;
import Utils.ApplicationUtils;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserAccountDTO user = ApplicationUtils.getLoginedUser(req);
        if(user != null)
        {
            resp.sendRedirect(req.getContextPath() + "/myaccount");
            return;
        }
        else
        {
            RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
            dispatcher.forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String userName = req.getParameter("username");
        String password = req.getParameter("password");

        UserAccountDTO userAccount = LoginBusiness.getUserLogin(userName,password);
        if (userAccount == null) {
            String errorMessage = "Invalid userName or Password";
            DirectEror(errorMessage,req,resp);
            return;
        }

        if(!LoginBusiness.checkActive(userName))
        {
            String errorMessage = "Your account haven't actived! Please Check Your mail!";
            DirectEror(errorMessage,req,resp);
            return;
        }

        if(LoginBusiness.checkBanned(userName))
        {
            String errorMessage = "Your account has been banned! Please contact with Admin!";
            DirectEror(errorMessage,req,resp);
            return;
        }
        ApplicationUtils.storeLoginedUser(req, userAccount);
        //
        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(req.getParameter("redirectId"));
        } catch (Exception e) {
            System.out.println("request don't have redirectId");
        }


        String requestUri = ApplicationUtils.getRedirectAfterLoginUrl(redirectId);

        if (requestUri != null) {
            resp.sendRedirect(requestUri);
        } else {
            if(userAccount.getRoles().size() ==1)
                resp.sendRedirect(req.getContextPath() + "/");
            else if(userAccount.getRoles().size() ==2)
                resp.sendRedirect(req.getContextPath() + "/admin");
            UsersEntity usersEntity = SingletonServiceUltils.getUserDAOImpl().getOneById(userAccount.getId());

            if(usersEntity.getAddress()!=null)
            {
                AddressDTO addressDTO=new AddressDTO(usersEntity.getAddress());
                userAccount.setAddress(addressDTO);
                userAccount.setPhone(usersEntity.getPhone());
                userAccount.setImage(usersEntity.getImage());
                req.getSession().setAttribute("loginedUser",userAccount);

            }
        }
    }
    public void DirectEror(String errorMessage,HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        req.setAttribute("errorMessage", errorMessage);
        System.out.println("Alo:"+errorMessage);
        RequestDispatcher dispatcher //
                = req.getServletContext().getRequestDispatcher("/login.jsp");
        dispatcher.forward(req, resp);
        return;
    }
}
