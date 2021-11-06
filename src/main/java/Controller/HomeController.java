package Controller;

import DAO.*;
import DTO.ProductDisplayDTO;
import Model.CategoriesEntity;
import Model.ColorsEntity;
import Model.ProductsEntity;
import Model.TagsEntity;
import Utils.SingletonServiceUltils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = {"/home", "/trang-chu", "/nha", "/index"})
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //Create new list all category
        //Call method getAll to return list in Class STATIC CategoryDAO
        List<CategoriesEntity> categoriesEntityList = SingletonServiceUltils.getCategoryDAOImpl().getAll();

        //Create new list top 4 popular - means have more product in class STATIC CategoryDAO
        List<CategoriesEntity> categoriesTop4EntityList = SingletonServiceUltils.getCategoryDAOImpl().top4PopularCategories();

        //set data to JSP
        int categoriesEntityList_firstIndex = categoriesEntityList.get(0).getId();
        int categoriesTop4EntityList_firstIndex = categoriesTop4EntityList.get(0).getId();

        req.setAttribute("categoriesEntityList_firstIndex", categoriesEntityList_firstIndex);
        req.setAttribute("categoriesTop4EntityList_firstIndex", categoriesTop4EntityList_firstIndex);

        req.setAttribute("categoriesEntityList", categoriesEntityList);
        req.setAttribute("categoriesTop4EntityList", categoriesTop4EntityList);
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab1", this.handleDataTop8ProductsTab(SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(0).getId())));
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab2", this.handleDataTop8ProductsTab(SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(1).getId())));
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab3", this.handleDataTop8ProductsTab(SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(2).getId())));
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab4", this.handleDataTop8ProductsTab(SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(3).getId())));

        RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    private List<ProductDisplayDTO> handleDataTop8ProductsTab(List<ProductsEntity> top8ProductsInTop4Categories) {
        List<ProductsEntity> productsEntityList = top8ProductsInTop4Categories;
        List<ProductDisplayDTO> productDisplayDTOList = new ArrayList<>();
        for (ProductsEntity item:productsEntityList) {
            ProductDisplayDTO productDisplayDTO = this.handleDataOneProductTab(item);
            productDisplayDTOList.add(productDisplayDTO);

        }
        return productDisplayDTOList;
    }

    private ProductDisplayDTO handleDataOneProductTab(ProductsEntity productsEntity) {
        ProductDisplayDTO productDisplayDTO;
        int id = productsEntity.getId();
        String name = productsEntity.getName();
        BigDecimal regularPrice = productsEntity.getRegularPrice();
        BigDecimal discountPrice = productsEntity.getDiscountPrice();
        String image = productsEntity.getImage();
        int discount_percent = productsEntity.getDiscount_percent();
        boolean status = productsEntity.getProductStatusesEntity().isId();
        int avgReview = SingletonServiceUltils.getReviewDAOImpl().getAVGRatingbyProductId(productsEntity.getId());

        List<String> tagsName = new ArrayList<>();
        for (TagsEntity item:productsEntity.getTagsEntities()) {
            tagsName.add(item.getName());
        }

        productDisplayDTO = new ProductDisplayDTO(id, name, regularPrice, discountPrice, image,
                discount_percent, tagsName, status, avgReview);

        return productDisplayDTO;
    }
}
