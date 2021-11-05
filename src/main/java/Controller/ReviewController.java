package Controller;

import DAO.ProductDAOImpl;
import DAO.ReviewDAOImpl;
import Model.ProductsEntity;
import Model.ReviewsEntity;
import Model.UsersEntity;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ReviewController", value = "/ReviewController")
public class ReviewController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //lay ra cac thanh input
        String email = request.getParameter("email");
        String comment = request.getParameter("review");
        int rating= Integer.parseInt(request.getParameter("rate"));
        // lay ra use theo email
        UsersEntity users= SingletonServiceUltils.getUserDAOImpl().getOneByEmail(email);
        // lay theo product id
        int pid = Integer.parseInt(request.getParameter("pid"));
        ProductsEntity products= SingletonServiceUltils.getProductDAOImpl().getProductbyID(pid);
        ReviewsEntity r=new ReviewsEntity();
        r.setComment(comment);
        r.setUsersEntity(users);
        r.setProductsEntity(products);
        r.setRating(rating);
        SingletonServiceUltils.getReviewDAOImpl().insert(r);
        RequestDispatcher rd= request.getRequestDispatcher("/singleproduct");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
