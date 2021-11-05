package Controller;

import DAO.*;
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
import java.util.ArrayList;
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
        //check
        //categoriesEntityList.forEach(a -> System.out.println(a.getProductsEntities().size()));

        //Create new list top 4 popular - means have more product in class STATIC CategoryDAO
        List<CategoriesEntity> categoriesTop4EntityList = SingletonServiceUltils.getCategoryDAOImpl().top4PopularCategories();
        //check
        //categoriesEntityList.forEach(a -> System.out.println(a.getName()));

        //set data to JSP
        //
        int categoriesEntityList_firstIndex = categoriesEntityList.get(0).getId();
        int categoriesTop4EntityList_firstIndex = categoriesTop4EntityList.get(0).getId();

        req.setAttribute("categoriesEntityList_firstIndex", categoriesEntityList_firstIndex);
        req.setAttribute("categoriesTop4EntityList_firstIndex", categoriesTop4EntityList_firstIndex);

        req.setAttribute("categoriesEntityList", categoriesEntityList);
        req.setAttribute("categoriesTop4EntityList", categoriesTop4EntityList);
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab1", SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(0).getId()));
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab2", SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(1).getId()));
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab3", SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(2).getId()));
        req.setAttribute("Top8Product_categoriesTop4EntityList_tab4", SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoriesTop4EntityList.get(3).getId()));

        RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action").trim();

        if (action.equals("tab-data")) {
            String s_categoriesEntityID = req.getParameter("ID");
            int i_categoriesEntityID = Integer.parseInt(s_categoriesEntityID);
            this.loadTop8ProductByCategoryID(resp, i_categoriesEntityID);
        }
        else if (action.equals("modal")) {
            String s_productsEntityID = req.getParameter("ID");
            int i_productsEntityID = Integer.parseInt(s_productsEntityID);
            this.loadModal(resp, i_productsEntityID);
        }
    }

    private void loadModal(HttpServletResponse response, int i_productsEntityID) throws IOException {
        ProductsEntity productsEntity = SingletonServiceUltils.getProductDAOImpl().getProductbyID(i_productsEntityID);
        try (PrintWriter out = response.getWriter()) {
            out.println("<div class=\"col-lg-6 col-sm-12 col-xs-12 mb-lm-30px mb-md-30px mb-sm-30px\">\n" +
                    "                        <!-- Swiper -->\n" +
                    "                        <div class=\"swiper-container gallery-top\">\n" +
                    "                            <div class=\"swiper-slide\">\n" +
                    "                                <img class=\"img-responsive m-auto\"\n" +
                    "                                     src=\"assets/images/product-image/zoom-image/1.jpg\" alt=\"\">\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                    <div class=\"col-lg-6 col-sm-12 col-xs-12\" data-aos=\"fade-up\" data-aos-delay=\"200\">\n" +
                    "                        <div class=\"product-details-content quickview-content\">\n" +
                    "                            <h2>" + productsEntity.getName() + "</h2>\n" +
                    "                            <div class=\"pricing-meta\">\n" +
                    "                                <ul class=\"d-flex\">\n" +
                    this.priceDiscount(productsEntity, "modal")  +
                    "                                </ul>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"pro-details-rating-wrap\">\n" +
                    "                                <div class=\"rating-product\">\n" +
                    this.loadRating(productsEntity) +
                    "                                </div>\n" +
                    "                                <span class=\"read-review\"><a class=\"reviews\" href>( " + SingletonServiceUltils.getReviewDAOImpl().getAllbyProductId(productsEntity.getId()).size() + " Review )</a></span>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"stock mt-30px\">\n" +
                    this.loadStockStatus(productsEntity) +
                    "                            </div>\n" +
                    "\n" +
                    "                            <div class=\"color-group mt-30px\">\n" +
                                                    this.loadColor(productsEntity) +
                    "                            </div>\n" +
                    "\n" +
                    "                            <script>\n" +
                    "                                const onClickColor = (event, idColor) => {\n" +
                    "                                    event.preventDefault();\n" +
                    "                                    for (var i = 1; i <= 5; i++) {\n" +
                    "                                        var temp = \"color-\" + i;\n" +
                    "                                        if (temp === idColor) {\n" +
                    "                                            document.getElementById(temp).style.transform = \"scale(1.3,1.3)\"\n" +
                    "                                        }\n" +
                    "                                        else {\n" +
                    "                                            document.getElementById(temp).style.transform = \"scale(1,1)\";\n" +
                    "                                        }\n" +
                    "                                    }\n" +
                    "                                }\n" +
                    "                            </script>\n" +
                    "\n" +
                    "                            <p class=\"mt-20px mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\n" +
                    "                                eiusmodol tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni\n" +
                    "                                nostrud exercitation ullamco laboris </p>\n" +
                    "                            <div class=\"pro-details-quality\">\n" +
                    "                                <div class=\"pro-details-cart\">\n" +
                    "                                    <button class=\"add-cart\">Detail</button>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"pro-details-compare-wishlist pro-details-wishlist \">\n" +
                    "                                    <a href=\"wishlist.html\"><i class=\"pe-7s-like\"></i></a>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"pro-details-categories-info pro-details-same-style d-flex\">\n" +
                    "                                <span>Categories: </span>\n" +
                    "                                <ul class=\"d-flex\">\n" +
                    "                                    <li>\n" +
                    "                                        <a href=\"#\">" + productsEntity.getCategoriesEntity().getName() + "</a>\n" +
                    "                                    </li>\n" +
                    "                                </ul>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>");
        }
    }

    private void loadTop8ProductByCategoryID(HttpServletResponse response, int categoryID) {
        //Create new list get top 8 product by category id
        //First get categoryID from request
        //String categoryID = req.getParameter("")
        //Call method getTop8ProductByCategorytID to return a list have 8 records in Class STATIC ProductDAO
        List<ProductsEntity> top8ProductsEntityList = SingletonServiceUltils.getProductDAOImpl().getTop8ProductByCategorytID(categoryID);

        try (PrintWriter out = response.getWriter()) {
            for (ProductsEntity productsEntity : top8ProductsEntityList) {
                out.println(
                        "                            <div class=\"col-lg-4 col-xl-3 col-md-6 col-sm-6 col-xs-6 mb-30px\">\n" +
                                "                                <!-- Single Prodect -->\n" +
                                "                                <div class=\"product\">\n" +
                                "                                    <div class=\"thumb\">\n" +
                                "                                        <a href=\"singleproduct?productCode=" + productsEntity.getId() + "\" class=\"image\">\n" +
                                "                                            <img src=\"" + productsEntity.getImage() + "\" alt=\"Product\" />\n" +
                                "                                            <img class=\"hover-image\" src=\"" + productsEntity.getImage() + "\"\n" +
                                "                                                 alt=\"Product\" />\n" +
                                "                                        </a>\n" +
                                "                                        <span class=\"badges\">\n" +
                                this.loadThumbOfProduct(productsEntity)  +
                                "                                        </span>\n" +
                                "                                        <div class=\"actions\">\n" +
                                "                                            <a href=\"wishlist.jsp\" class=\"action wishlist\" title=\"Wishlist\"><i\n" +
                                "                                                    class=\"pe-7s-like\"></i></a>\n" +
                                "                                            <a onclick=\"onClickLoadData(" + productsEntity.getId() + ", 2);\" href=\"#\" class=\"action quickview\"\n" +
                                "                                               title=\"Quick view\" data-bs-toggle=\"modal\" data-link-action=\"quickview\"\n" +
                                "                                               data-bs-target=\"#exampleModal\"><i class=\"pe-7s-look\"></i></a>\n" +
                                "                                            <a href=\"compare.jsp\" class=\"action compare\" title=\"Compare\"><i\n" +
                                "                                                    class=\"pe-7s-refresh-2\"></i></a>\n" +
                                "                                        </div>\n" +
                                "                                    </div>\n" +
                                "                                    <div class=\"content\">\n" +
                                "                                        <div class=\"rating-product\">\n" +
                                this.loadRating(productsEntity) +
                                "                                        </div>\n" +
                                "                                        <h5 class=\"title\"><a href=\"single-product.jsp\">" + productsEntity.getName() + "\n" +
                                "                                        </a>\n" +
                                "                                        </h5>\n" +
                                "                                        <span class=\"price\">\n" +
                                this.priceDiscount(productsEntity, "tab-data") +
                                "                                        </span>\n" +
                                "                                    </div>\n" +
                                "                                    <button onclick=\"window.location.href='singleproduct?productCode=" + productsEntity.getId() + "'\" title=\"Add To Cart\" class=\" add-to-cart\">Add\n" +
                                "                                        To Cart</button>\n" +
                                "                                </div>\n" +
                                "                            </div>\n"
                );
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String loadColor(ProductsEntity productsEntity) {
        String html = "";

        String[] colors = {"warning", "danger", "success", "info", "dark"};
        Set<ColorsEntity> colorsEntitySet = productsEntity.getColorsEntities();
        List<ColorsEntity> colorsEntityList = new ArrayList<>(colorsEntitySet);
        for (int i = 0; i < colorsEntityList.size(); i++) {
            int indexColor = colorsEntityList.get(i).getId();
            html += "<a id=\"color-" + (indexColor + 1) + "\" href=\"#\" class=\"color-block bg-" + colors[indexColor].toString() + "\" onclick=\"onClickColor(event, this.id);\"></a>\n";
        }

        return html;
    }

    private String loadStockStatus(ProductsEntity productsEntity) {
        String html = "<span class=\"avallabillty\">Availability: <span class=\"in-stock\"><i\n" +
                "class=\"fa fa-check\"></i>In Stock</span></span>\n";

        if (productsEntity.getQuantity() == 0) {
            html = "<span class=\"avallabillty\">Availability: <span class=\"out-of-stock\"><i\n" +
                    "class=\"fa fa-times\"></i>Out Of Stock</span></span>\n";
        }

        return html;
    }

    private String loadRating(ProductsEntity productsEntity) {
        String html = "";

        int avg_rating = SingletonServiceUltils.getReviewDAOImpl().getAVGRatingbyProductId(productsEntity.getId());
        for (int i = 1; i <= avg_rating; i++) {
            html += "<i class=\"fa fa-star\" style=\"color: #ffde00\"></i>\n";
        }

        for (int i = avg_rating + 1; i <= 5; i++) {
            html += "<i class=\"fa fa-star\" style=\"color: #bcbebf\"></i>\n";
        }
        return html;
    }

    private String priceDiscount(ProductsEntity productsEntity, String state) {
        String htmlTag = "";

        if (state.equals("tab-data")) {
            if (productsEntity.getProductStatusesEntity().isId()) {
                htmlTag += "<span class=\"new\">$" + productsEntity.getDiscountPrice() + "</span>\n";
                htmlTag += "<span class=\"old\">$" + productsEntity.getRegularPrice()  + "</span>\n";
            }
            else {
                htmlTag += "<span class=\"new\">$" + productsEntity.getRegularPrice()  + "</span>\n";
            }
        }
        else if (state.equals("modal")) {
            if (productsEntity.getProductStatusesEntity().isId()) {
                htmlTag += "<li class=\"new-price\">$" + productsEntity.getDiscountPrice() + "</li>\n";
                htmlTag += "<li class=\"old-price\"><del>$" + productsEntity.getRegularPrice()  + "</del></li>\n";
            }
            else {
                htmlTag += "<li class=\"new-price\">$" + productsEntity.getRegularPrice() + "</li>\n";
            }
        }
        return htmlTag;
    }

    private String loadThumbOfProduct(ProductsEntity productsEntity) {
        List<TagsEntity> productTagsEntityList = productsEntity.getTagsEntities().stream().collect(Collectors.toList());
        String htmlTag = "";

        //set status discout
        if (productsEntity.getProductStatusesEntity().isId()) {
            htmlTag += "<span class=\"sale\">-" + productsEntity.getDiscount_percent() + "%</span>\n";
        }

        //set tag for product
        for (TagsEntity productTagsEntity : productTagsEntityList) {
            htmlTag += "<span class=\"new\">" + productTagsEntity.getName() + "</span>\n";
        }

        return htmlTag;
    }
}
