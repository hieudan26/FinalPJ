package DAO;

import DAO.DAOImpl.AbstractDAO;
import DAO.DAOImpl.AccountDAO;
import DAO.DAOImpl.ProductDAO;
import Model.AccountsEntity;
import Model.ProductsEntity;
import Model.UsersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ProductDAOImpl extends AbstractDAO<Integer, ProductsEntity> implements ProductDAO {
    @Override
    public ProductsEntity getProductbyID(int ID) {
        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        ProductsEntity productsEntity = new ProductsEntity();
        try{

            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity p where p.id=:pId ");
            productsEntityQuery.setParameter("pId",ID);
            productsEntity=productsEntityQuery.getSingleResult();
            transaction.commit();

        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return productsEntity;
    }
    //Get 8 product by id of category and sort by discount.
    @Override
    public List<ProductsEntity> getTop8ProductByCategorytID(int categoryID) {
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity p " +
                    "where p.categoriesEntity.id=:categoryID " +
                    "order by p.productStatusesEntity.id desc").setMaxResults(8);
            productsEntityQuery.setParameter("categoryID", categoryID);
            productsEntityList = productsEntityQuery.getResultList();
            transaction.commit();
        }
        catch (Exception e) {
            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        return productsEntityList;
    }
    //Get all product by id of category and dont sort - mean random
    @Override
    public List<ProductsEntity> getAllProductByCategorytID(int categoryID) {
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity p " +
                    "where p.categoriesEntity.id=:categoryID");
            productsEntityQuery.setParameter("categoryID", categoryID);
            productsEntityList = productsEntityQuery.getResultList();
            transaction.commit();
        }
        catch (Exception e) {
            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        return productsEntityList;
    }
    @Override
    public String getCategoryNamebyProductId(int ID)
    {
        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        String name=null;
        try{

            transaction = session.beginTransaction();
            Query<String> productsEntityQuery = session.createQuery("select c.name FROM ProductsEntity p,CategoriesEntity  c where p.categoriesEntity.id=c.id and  p.id=:pId ");
            productsEntityQuery.setParameter("pId",ID);
            name=productsEntityQuery.getSingleResult();
            transaction.commit();

        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return name;
    }
    @Override
    //lấy ra tat ca sản phẩm co trong category theo category id
    public List<ProductsEntity> getProductbyCategorytName(String CategoryName)
    {
        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity p where p.categoriesEntity.name=:CategoryName ");
            productsEntityQuery.setParameter("CategoryName",CategoryName);
            productsEntityList=productsEntityQuery.getResultList();
            transaction.commit();

        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return productsEntityList;
    }
    @Override
    public Integer getpricebyProductIdandStatus(int pID,String stt)
    {
        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        Integer price= 0;
        try{

            transaction = session.beginTransaction();
            Query<BigDecimal> productsEntityQuery=null;
            if(stt.equals("discount"))
            {
                productsEntityQuery = session.createQuery("select p.discountPrice FROM ProductsEntity p where p.id=:pId");
            }
            else if(stt.equals("no discount"))
            {
                productsEntityQuery = session.createQuery("select p.regularPrice FROM ProductsEntity p where p.id=:pId");
            }
            productsEntityQuery.setParameter("pId",pID);
            price= (productsEntityQuery.getSingleResult()).intValue();
            transaction.commit();

        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return price;
    }

}
