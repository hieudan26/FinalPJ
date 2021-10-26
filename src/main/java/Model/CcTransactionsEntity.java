package Model;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.Date;

@Entity
@Table(name = "\"cc_transactions\"", schema = "public", catalog = "Web")
public class CcTransactionsEntity {
    private int id;
    private Date transdate;
    private Integer amount;
    private SalesOrdersEntity salesOrdersEntity;

    //many to one cc-->sale_oder
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
    @Column(name = "transdate", nullable = true)
    public Date getTransdate() {
        return transdate;
    }

    public void setTransdate(Date transdate) {
        this.transdate = transdate;
    }

    @Basic
    @Column(name = "amount", nullable = false, precision = 0)
    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CcTransactionsEntity that = (CcTransactionsEntity) o;

        if (id != that.id) return false;
        if (transdate != null ? !transdate.equals(that.transdate) : that.transdate != null) return false;
        return amount != null ? amount.equals(that.amount) : that.amount == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (transdate != null ? transdate.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        return result;
    }
}
