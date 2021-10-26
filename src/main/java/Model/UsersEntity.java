package Model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "\"users\"", schema = "public", catalog = "Web")
public class UsersEntity {
    private int id;
    private String email;
    private String firstName;
    private String lastName;
    private Boolean active;
    private Integer accId;
    private Set<ReviewsEntity> reviewsEntities;
    private Set<SalesOrdersEntity> salesOrdersEntities;
    private Set<ProductsEntity> productsEntities;
    private  Set<SessionsEntity> sessionsEntities;
    private  AccountsEntity accountsEntity;

    //one to many user-->review
    @OneToMany(mappedBy = "usersEntity",fetch = FetchType.LAZY)

    public Set<ReviewsEntity> getReviewsEntities(){
        return this.reviewsEntities;
    }
    public void setReviewsEntities(Set<ReviewsEntity> reviewsEntities){
        this.reviewsEntities = reviewsEntities;
    }

    //one to many user-->saleoder
    @OneToMany(mappedBy = "usersEntity",fetch = FetchType.LAZY)

    public Set<SalesOrdersEntity> getSalesOrdersEntities(){
        return this.salesOrdersEntities;
    }
    public void setSalesOrdersEntities(Set<SalesOrdersEntity> salesOrdersEntities){
        this.salesOrdersEntities = salesOrdersEntities;
    }



    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "acc_id",insertable = false, updatable = false)
    public AccountsEntity getAccountsEntity(){
        return this.accountsEntity;
    }
    public void setAccountsEntity(AccountsEntity accountsEntity){
        this.accountsEntity =accountsEntity;
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
    @Column(name = "email", nullable = false, length = 255)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "first_name", nullable = true, length = 255)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "last_name", nullable = true, length = 255)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "active", nullable = true)
    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @Basic
    @Column(name = "acc_id", nullable = true)
    public Integer getAccId() {
        return accId;
    }

    public void setAccId(Integer accId) {
        this.accId = accId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UsersEntity that = (UsersEntity) o;

        if (id != that.id) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (firstName != null ? !firstName.equals(that.firstName) : that.firstName != null) return false;
        if (lastName != null ? !lastName.equals(that.lastName) : that.lastName != null) return false;
        if (active != null ? !active.equals(that.active) : that.active != null) return false;
        return accId != null ? accId.equals(that.accId) : that.accId == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (firstName != null ? firstName.hashCode() : 0);
        result = 31 * result + (lastName != null ? lastName.hashCode() : 0);
        result = 31 * result + (active != null ? active.hashCode() : 0);
        result = 31 * result + (accId != null ? accId.hashCode() : 0);
        return result;
    }
}
