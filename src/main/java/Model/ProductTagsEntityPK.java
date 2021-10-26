package Model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;


public class ProductTagsEntityPK implements Serializable {
    private int productId;
    private int tagId;

    @Column(name = "product_id", nullable = false)
    @Id
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Column(name = "tag_id", nullable = false)
    @Id
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

        ProductTagsEntityPK that = (ProductTagsEntityPK) o;

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
