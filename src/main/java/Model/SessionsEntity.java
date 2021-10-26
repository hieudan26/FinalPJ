package Model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "\"sessions\"", schema = "public", catalog = "Web")
public class SessionsEntity {
    private String id;
    private String data;
    private Set<SalesOrdersEntity> salesOrdersEntities;
    private  Set<UsersEntity> usersEntities;

    //one to many session-->saleoder
    @OneToMany(mappedBy = "sessionsEntity",fetch = FetchType.LAZY)
    public Set<SalesOrdersEntity> getSalesOrdersEntities(){
        return this.salesOrdersEntities;
    }
    public void setSalesOrdersEntities(Set<SalesOrdersEntity> salesOrdersEntities){
        this.salesOrdersEntities = salesOrdersEntities;
    }


    @Id
    @Column(name = "id", nullable = false, length = 255)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "data", nullable = true, length = -1)
    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SessionsEntity that = (SessionsEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        return data != null ? data.equals(that.data) : that.data == null;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (data != null ? data.hashCode() : 0);
        return result;
    }
}
