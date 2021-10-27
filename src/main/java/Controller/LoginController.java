package Controller;

import Business.LoginBusiness;
import DTO.UserAccountDTO;
import Utils.SessionUtils;

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
        RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String password = req.getParameter("password");

        UserAccountDTO userAccount = LoginBusiness.getUserLogin(userName,password);

        if (userAccount == null) {
            String errorMessage = "Invalid userName or Password";

            req.setAttribute("errorMessage", errorMessage);

            RequestDispatcher dispatcher //
                    = req.getServletContext().getRequestDispatcher("/login.jsp");

            dispatcher.forward(req, resp);
            return;
        }

        SessionUtils.storeLoginedUser(req.getSession(), userAccount);
        //
        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(req.getParameter("redirectId"));
        } catch (Exception e) {
            System.out.println("request don't have redirectId");
        }

        String requestUri = SessionUtils.getRedirectAfterLoginUrl(req.getSession(), redirectId);

        if (requestUri != null) {
            resp.sendRedirect(requestUri);
        } else {
            resp.sendRedirect(req.getContextPath() + "/");
        }
    }
}
