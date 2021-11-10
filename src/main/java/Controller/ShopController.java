package Controller;

import DTO.CategoriesShopDTO;
import DTO.ColorShopDTO;
import DTO.TagShopDTO;
import Model.CategoriesEntity;
import Model.ColorsEntity;
import Model.TagsEntity;
import Utils.SingletonServiceUltils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/shop", "/cua-hang", "/shopController"})
public class ShopController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        List<CategoriesEntity> categoriesEntityList = SingletonServiceUltils.getCategoryDAOImpl().getAll();
        List<ColorsEntity> colorsEntityList = SingletonServiceUltils.getColorDAOImpl().getAll();
        List<TagsEntity> tagsEntityList = SingletonServiceUltils.getTagDAOImpl().getAll();

        List<CategoriesShopDTO> categoriesShopDTOList = this.handleCategoriesShopDTOList(categoriesEntityList);
        List<ColorShopDTO> colorShopDTOList = this.handleColorShopDTO(colorsEntityList);
        List<TagShopDTO> tagShopDTOList = this.handleTagShopDTO(tagsEntityList);
        int allProduct = SingletonServiceUltils.getProductDAOImpl().getAll().size();

        request.setAttribute("allQuantityProduct", allProduct);
        request.setAttribute("categoriesShopDTOList", categoriesShopDTOList);
        request.setAttribute("colorShopDTOList", colorShopDTOList);
        request.setAttribute("tagShopDTOList", tagShopDTOList);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("shop-left-sidebar.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private List<TagShopDTO> handleTagShopDTO(List<TagsEntity> tagsEntityList) {
        List<TagShopDTO> tagShopDTOList = new ArrayList<>();
        for (TagsEntity item:tagsEntityList) {
            TagShopDTO tagShopDTO;
            int id = item.getId();
            String name = item.getName();
            int size = SingletonServiceUltils.getProductDAOImpl().getAllProductByTagId(id).size();
            tagShopDTO = new TagShopDTO(id, name, size);
            tagShopDTOList.add(tagShopDTO);
        }
        return tagShopDTOList;
    }

    private List<ColorShopDTO> handleColorShopDTO(List<ColorsEntity> colorsEntityList) {
        List<ColorShopDTO> colorShopDTOList = new ArrayList<>();
        for (ColorsEntity item:colorsEntityList) {
            ColorShopDTO colorShopDTO;
            int id = item.getId();
            String name = item.getName();
            int size = SingletonServiceUltils.getProductDAOImpl().getAllProductByColorId(id).size();
            colorShopDTO = new ColorShopDTO(id, name, size);
            colorShopDTOList.add(colorShopDTO);
        }
        return colorShopDTOList;
    }

    private List<CategoriesShopDTO> handleCategoriesShopDTOList(List<CategoriesEntity> categoriesEntityList) {
        List<CategoriesShopDTO> categoriesShopDTOList = new ArrayList<>();
        for (CategoriesEntity item:categoriesEntityList) {
            CategoriesShopDTO categoriesShopDTO;
            int id = item.getId();
            String name = item.getName();
            int size = item.getProductsEntities().size();
            categoriesShopDTO = new CategoriesShopDTO(id, name, size);
            categoriesShopDTOList.add(categoriesShopDTO);
        }
        return categoriesShopDTOList;
    }
}
