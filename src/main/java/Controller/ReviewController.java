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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String URL = "/singleproduct?productCode=";

        String emailString = request.getParameter("email");
        String commentString = request.getParameter("review");
        String ratingString = request.getParameter("rate");
        String productIdString = request.getParameter("productId");

        int rating = Integer.parseInt(ratingString);
        int productId = Integer.parseInt(productIdString);

        UsersEntity usersEntity = SingletonServiceUltils.getUserDAOImpl().getOneByEmail(emailString);
        ProductsEntity productsEntity = SingletonServiceUltils.getProductDAOImpl().getProductbyID(productId);

        ReviewsEntity reviewsEntity = new ReviewsEntity();
        reviewsEntity.setComment(commentString);
        reviewsEntity.setUsersEntity(usersEntity);
        reviewsEntity.setProductsEntity(productsEntity);
        reviewsEntity.setRating(rating);

        try {
            SingletonServiceUltils.getReviewDAOImpl().insert(reviewsEntity);
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
        URL += productId;
        response.sendRedirect(URL);
    }
}
