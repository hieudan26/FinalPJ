package Model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Embeddable
public class ProductsColorsEntityPK implements Serializable {


    ProductsEntity productsEntity;
    ColorsEntity colorsEntity;

    @ManyToOne
    public ProductsEntity getProductsEntity() {
        return productsEntity;
    }

    public void setProductsEntity(ProductsEntity productsEntity) {
        this.productsEntity = productsEntity;
    }

    @ManyToOne
    public ColorsEntity getColorsEntity() {
        return colorsEntity;
    }

    public void setColorsEntity(ColorsEntity colorsEntity) {
        this.colorsEntity = colorsEntity;
    }


    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductsColorsEntityPK that = (ProductsColorsEntityPK) o;

        if (productsEntity != that.productsEntity) return false;
        return colorsEntity == that.colorsEntity;
    }

    @Override
    public int hashCode() {
        int result = productsEntity.getId();
        result = (productsEntity != null ? productsEntity.hashCode() : 0);
        result = 31 * result + (colorsEntity != null ? colorsEntity.hashCode() : 0);
        return  result;
    }
}
