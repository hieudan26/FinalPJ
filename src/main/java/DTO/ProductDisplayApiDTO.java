package DTO;

import Model.*;

import java.math.BigDecimal;
import java.util.Set;

public class ProductDisplayApiDTO {
    private int id;
    private String name;
    private String description;
    private BigDecimal regularPrice;
    private BigDecimal discountPrice;
    private Integer quantity;
    private String image;
    private Integer discount_percent;
    private String information;
    private Set<String> tagsName;
    private boolean productStatus;
    private String categoriesName;
    private Set<String> colorsName;
    private int totalReviews;
    private int avgReview;

    public ProductDisplayApiDTO() {
    }

    public ProductDisplayApiDTO(int id, String name, String description, BigDecimal regularPrice, BigDecimal discountPrice,
                                Integer quantity, String image, Integer discount_percent, String information,
                                Set<String> tagsName, boolean productStatus, String categoriesName, Set<String> colorsName,
                                int totalReviews, int avgReview) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.regularPrice = regularPrice;
        this.discountPrice = discountPrice;
        this.quantity = quantity;
        this.image = image;
        this.discount_percent = discount_percent;
        this.information = information;
        this.tagsName = tagsName;
        this.productStatus = productStatus;
        this.categoriesName = categoriesName;
        this.colorsName = colorsName;
        this.totalReviews = totalReviews;
        this.avgReview = avgReview;
    }

    public int getTotalReviews() {
        return totalReviews;
    }

    public void setTotalReviews(int totalReviews) {
        this.totalReviews = totalReviews;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getRegularPrice() {
        return regularPrice;
    }

    public void setRegularPrice(BigDecimal regularPrice) {
        this.regularPrice = regularPrice;
    }

    public BigDecimal getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(BigDecimal discountPrice) {
        this.discountPrice = discountPrice;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getDiscount_percent() {
        return discount_percent;
    }

    public void setDiscount_percent(Integer discount_percent) {
        this.discount_percent = discount_percent;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public Set<String> getTagsName() {
        return tagsName;
    }

    public void setTagsName(Set<String> tagsName) {
        this.tagsName = tagsName;
    }

    public boolean isProductStatus() {
        return productStatus;
    }

    public void setProductStatus(boolean productStatus) {
        this.productStatus = productStatus;
    }

    public String getCategoriesName() {
        return categoriesName;
    }

    public void setCategoriesName(String categoriesName) {
        this.categoriesName = categoriesName;
    }

    public Set<String> getColorsName() {
        return colorsName;
    }

    public void setColorsName(Set<String> colorsName) {
        this.colorsName = colorsName;
    }

    public int getAvgReview() {
        return avgReview;
    }

    public void setAvgReview(int avgReview) {
        this.avgReview = avgReview;
    }
}
