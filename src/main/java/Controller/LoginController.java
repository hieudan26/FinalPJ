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

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd=this.getServletContext().getRequestDispatcher("/login.jsp");
        rd.forward(request,response);

    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        UserAccountDTO userAccount = LoginBusiness.getUserLogin(userName,password);

        if (userAccount == null) {
            String errorMessage = "Invalid userName or Password";

            request.setAttribute("errorMessage", errorMessage);

            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/login.jsp");

            dispatcher.forward(request, response);
            return;
        }

        SessionUtils.storeLoginedUser(request.getSession(), userAccount);
        //
        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e) {
            System.out.println("request don't have redirectId");
        }

        String requestUri = SessionUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);

        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
            response.sendRedirect(request.getContextPath() + "/");
        }
    }

    public void destroy() {
    }
}