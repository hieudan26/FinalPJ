package Controller;

import DAO.ColorDAOImpl;
import DAO.ProductDAOImpl;
import DAO.ReviewDAOImpl;
import Model.ProductsEntity;
import Model.ReviewsEntity;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/singleproduct")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {
        //Tieng Viet
        resp.setContentType("text/htm");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //get lấy cái id bên trang home click vào sản phẩm chuyền qua
       //int pid = Integer.parseInt(req.getParameter("pid"));
       int pid=3;
        //lấy ra các thông tin của sản phẩm này
        ProductsEntity product= SingletonServiceUltils.getProductDAOImpl().getProductbyID(pid);
        // lấy ra cate name
        String cateName= SingletonServiceUltils.getProductDAOImpl().getCategoryNamebyProductId(pid);
        //lay ra cac san pham cung cate
        List<ProductsEntity> listp= SingletonServiceUltils.getProductDAOImpl().getProductbyCategorytName(cateName);
        //lấy ra color của sản phẩm
        List<String> colorPro=new ArrayList<>();

        Set<Integer> idColor= SingletonServiceUltils.getProductDAOImpl().getProductbyID(1).getColorsEntities().stream().map(item -> item.getId()).collect(Collectors.toSet());
        for (Integer i:idColor
        ) {
            colorPro.add(SingletonServiceUltils.getColorDAOImpl().getNameColorbyColorsId(i));
        }
        // lấy ra tổng số review
        Long sumReview= SingletonServiceUltils.getReviewDAOImpl().countReivewbyProductId(pid);
        //trung bình rating
        double avgrating= SingletonServiceUltils.getReviewDAOImpl().getAVGRatingbyProductId(pid);
        List<Integer> lrid= SingletonServiceUltils.getReviewDAOImpl().getReviewIdByProductId(pid);
        List<ReviewsEntity> lrv=new ArrayList<>();
        //lay ra ca review entity theo id
        for (Integer i:lrid
             ) {
            ReviewsEntity r= SingletonServiceUltils.getReviewDAOImpl().getOneById(i);
            lrv.add(r);
        }
        //remove cai san pham dang xet
        listp.remove(product);

        //cai modal id nay de xai cho quick view

        req.setAttribute("product",product);
        req.setAttribute("catename",cateName);
        req.setAttribute("listColor", colorPro);
        req.setAttribute("sumre",sumReview);
        req.setAttribute("avgrat",avgrating);
        req.setAttribute("listrv",lrv);
        req.setAttribute("listp",listp);

        //trả về trang product
        RequestDispatcher rd= req.getRequestDispatcher("/single-product.jsp");
        rd.forward(req,resp);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
