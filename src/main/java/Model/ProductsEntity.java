package Model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.Set;

@Entity
@Table(name = "\"products\"", schema = "public", catalog = "Web")
public class ProductsEntity {
    private int id;
    private String name;
    private String description;
    private BigInteger regularPrice;
    private BigInteger discountPrice;
    private Integer quantity;
    private String image;
    private Set<ProductTagsEntity> productTagsEntities;
    private  ProductStatusesEntity productStatusesEntity;
    private  CategoriesEntity categoriesEntity;
    private Set<ProductsColorsEntity> productsColorsEntities;
    private Set<ReviewsEntity> reviewsEntities;


    //One to Many Product-->product tag
    @Fetch(FetchMode.SELECT)
    @OneToMany(mappedBy = "productsEntity",fetch = FetchType.LAZY)
    public Set<ProductTagsEntity> getProductTagsEntities(){
        return this.productTagsEntities;
    }
    public void setProductTagsEntities(Set<ProductTagsEntity> productTagsEntities){
        this.productTagsEntities = productTagsEntities;
    }

    //Many to One Product-->product status
    @Fetch(FetchMode.JOIN)
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "product_status_id")
    public ProductStatusesEntity getProductStatusesEntity() {
        return productStatusesEntity;
    }
    public void setProductStatusesEntity(ProductStatusesEntity productStatusesEntity) {
        this.productStatusesEntity = productStatusesEntity;
    }
    //Many to One Product-->catagory
    @Fetch(FetchMode.JOIN)
    @ManyToOne(fetch =FetchType.EAGER)
    @JoinColumn(name = "category_id")

    public CategoriesEntity getCategoriesEntity() {
        return categoriesEntity;
    }
    public void setCategoriesEntity(CategoriesEntity categoriesEntity) {
        this.categoriesEntity = categoriesEntity;
    }

    //one to many product-->product color
    @Fetch(FetchMode.SELECT)
    @OneToMany(mappedBy = "pk.productsEntity",fetch = FetchType.LAZY)
    public Set<ProductsColorsEntity> getProductsColorsEntities(){
        return this.productsColorsEntities;
    }
    public void setProductsColorsEntities(Set<ProductsColorsEntity> productsColorsEntities){
        this.productsColorsEntities = productsColorsEntities;
    }

    //one to many product-->review
    @Fetch(FetchMode.SELECT)
    @OneToMany(mappedBy = "productsEntity",fetch = FetchType.LAZY)

    public Set<ReviewsEntity> getReviewsEntities(){
        return this.reviewsEntities;
    }
    public void setReviewsEntities(Set<ReviewsEntity> reviewsEntities){
        this.reviewsEntities = reviewsEntities;
    }




    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description", nullable = true, length = -1)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "regular_price", nullable = true, precision = 0)
    public BigInteger getRegularPrice() {
        return regularPrice;
    }

    public void setRegularPrice(BigInteger regularPrice) {
        this.regularPrice = regularPrice;
    }

    @Basic
    @Column(name = "discount_price", nullable = true, precision = 0)
    public BigInteger getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(BigInteger discountPrice) {
        this.discountPrice = discountPrice;
    }

    @Basic
    @Column(name = "quantity", nullable = true)
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "image", nullable = true, length = 255)
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductsEntity that = (ProductsEntity) o;

        if (id != that.id) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (regularPrice != null ? !regularPrice.equals(that.regularPrice) : that.regularPrice != null) return false;
        if (discountPrice != null ? !discountPrice.equals(that.discountPrice) : that.discountPrice != null)
            return false;
        if (quantity != null ? !quantity.equals(that.quantity) : that.quantity != null) return false;
        return image != null ? image.equals(that.image) : that.image == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (regularPrice != null ? regularPrice.hashCode() : 0);
        result = 31 * result + (discountPrice != null ? discountPrice.hashCode() : 0);
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        result = 31 * result + (image != null ? image.hashCode() : 0);
        return result;
    }
}
