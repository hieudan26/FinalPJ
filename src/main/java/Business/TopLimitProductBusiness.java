package Business;

import DTO.ProductDisplayDTO;
import Model.ProductsEntity;
import Model.TagsEntity;
import Utils.SingletonServiceUltils;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class TopLimitProductBusiness {
    public static List<ProductDisplayDTO> handleDataTopLimitProductsTab(List<ProductsEntity> topLimitProductsInTopLimitCategories) {
        List<ProductsEntity> productsEntityList = topLimitProductsInTopLimitCategories;
        List<ProductDisplayDTO> productDisplayDTOList = new ArrayList<>();
        for (ProductsEntity item:productsEntityList) {
            ProductDisplayDTO productDisplayDTO = TopLimitProductBusiness.handleDataOneProductTab(item);
            productDisplayDTOList.add(productDisplayDTO);
        }
        return productDisplayDTOList;
    }

    public static ProductDisplayDTO handleDataOneProductTab(ProductsEntity productsEntity) {
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
        for (TagsEntity item:SingletonServiceUltils.getTagDAOImpl().getAllTagsByProductId(id)) {
            tagsName.add(item.getName());
        }

        productDisplayDTO = new ProductDisplayDTO(id, name, regularPrice, discountPrice, image,
                discount_percent, tagsName, status, avgReview);

        return productDisplayDTO;
    }
}
