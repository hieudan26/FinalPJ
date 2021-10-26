package Model;

import javax.persistence.*;

@Entity
@Table(name = "\"product_tags\"", schema = "public", catalog = "Web")
@IdClass(ProductTagsEntityPK.class)
public class ProductTagsEntity {
    private int productId;
    private int tagId;
    private  ProductsEntity productsEntity;
    private TagsEntity tagsEntity;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "tag_id", insertable = false, updatable = false)

    public TagsEntity getTagsEntity() {
        return tagsEntity;
    }
    public void setTagsEntity(TagsEntity tagsEntity) {
        this.tagsEntity = tagsEntity;
    }


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "product_id", insertable = false, updatable = false)

    public ProductsEntity getProductsEntity() {
        return productsEntity;
    }
    public void setProductsEntity(ProductsEntity products) {
        this.productsEntity = products;
    }




    @Id
    @Column(name = "product_id", nullable = false)
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Id
    @Column(name = "tag_id", nullable = false)
    public int getTagId() {
        return tagId;
    }

    public void setTagId(int tagId) {
        this.tagId = tagId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductTagsEntity that = (ProductTagsEntity) o;

        if (productId != that.productId) return false;
        return tagId == that.tagId;
    }

    @Override
    public int hashCode() {
        int result = productId;
        result = 31 * result + tagId;
        return result;
    }
}
