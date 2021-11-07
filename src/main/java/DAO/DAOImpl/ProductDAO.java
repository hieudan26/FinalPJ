package DAO.DAOImpl;

import Model.AccountsEntity;
import Model.ProductsEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public interface ProductDAO extends GenericDAO<Integer, ProductsEntity>{

    List<ProductsEntity> getTop8ProductByCategorytID_Except(int categoryID, int productID);

    ProductsEntity getProductbyID(int ID) ;

    //Get 8 product by id of category and sort by discount.
    List<ProductsEntity> getTop8ProductByCategorytID(int categoryID);

    //Get all product by id of category and dont sort - mean random
    List<ProductsEntity> getAllProductByCategorytID(int categoryID);

    String getCategoryNamebyProductId(int ID);

    List<ProductsEntity> getProductbyCategorytName(String CategoryName);

    Integer getpricebyProductIdandStatus(int pID,String stt);

}
