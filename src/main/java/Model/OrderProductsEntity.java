package Model;

import javax.persistence.*;
import java.math.BigInteger;

@Entity
@Table(name = "\"order_products\"", schema = "public", catalog = "Web")
public class OrderProductsEntity {
    private int id;
    private String name;
    private String description;
    private Integer price;
    private int quantity;
    private Integer subtotal;
    private SalesOrdersEntity salesOrdersEntity;


    //many to one oderpro-->sale_oder
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "order_id")

    public SalesOrdersEntity getSalesOrdersEntity() {
        return this.salesOrdersEntity;
    }
    public void setSalesOrdersEntity(SalesOrdersEntity salesOrdersEntity) {
        this.salesOrdersEntity =salesOrdersEntity;
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
    @Column(name = "price", nullable = false, precision = 0)
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @Basic
    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "subtotal", nullable = false, precision = 0)
    public Integer getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Integer subtotal) {
        this.subtotal = subtotal;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderProductsEntity that = (OrderProductsEntity) o;

        if (id != that.id) return false;
        if (quantity != that.quantity) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        return subtotal != null ? subtotal.equals(that.subtotal) : that.subtotal == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + quantity;
        result = 31 * result + (subtotal != null ? subtotal.hashCode() : 0);
        return result;
    }
}
