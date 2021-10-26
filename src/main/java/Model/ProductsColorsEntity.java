package Model;

import javax.persistence.*;

@Entity
@Table(name = "\"products_colors\"", schema = "public", catalog = "Web")
@AssociationOverrides({
        @AssociationOverride(name = "pk.colorsEntity",
                joinColumns = @JoinColumn(name = "color_id")),
        @AssociationOverride(name = "pk.productsEntity",
                joinColumns = @JoinColumn(name = "product_id")) })
public class ProductsColorsEntity {

    private ProductsColorsEntityPK pk = new ProductsColorsEntityPK();

    public ProductsColorsEntity()
    {

    }
    @EmbeddedId
    public ProductsColorsEntityPK getPk() {
        return pk;
    }

    public void setPk(ProductsColorsEntityPK pk) {
        this.pk = pk;
    }
    @Transient
    public ColorsEntity getColorEntity() {
        return getPk().getColorsEntity();
    }

    public void setColorEntity(ColorsEntity colorsEntity) {
        getPk().setColorsEntity(colorsEntity);
    }

    @Transient
    public ProductsEntity getProductEntity() {
        return getPk().getProductsEntity();
    }

    public void setProductEntity(ProductsEntity productsEntity) {
        getPk().setProductsEntity(productsEntity);
    }

}
