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
    public List<ProductsEntity> getAllProductByTagId(int tagId) {
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("select p from ProductsEntity p " +
                    "join fetch p.tagsEntities t where t.id=:tagId");
            productsEntityQuery.setParameter("tagId", tagId);
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
    public List<ProductsEntity> getAllProductByColorId(int colorId) {
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("select p from ProductsEntity p " +
                    "join fetch p.colorsEntities c where c.id=:colorId");
            productsEntityQuery.setParameter("colorId", colorId);
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
    public List<ProductsEntity> getTopLimitProductByCategorytID_Except(int categoryID, int productID, int limit) {
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity p " +
                    "where p.categoriesEntity.id=:categoryID and p.id!=:productID " +
                    "order by p.productStatusesEntity.id desc").setMaxResults(limit);
            productsEntityQuery.setParameter("productID", productID);
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
    public List<ProductsEntity> getTopLimitProductByCategorytID(int categoryID, int limit) {
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        List<ProductsEntity> productsEntityList = new ArrayList<>();
        try {
            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity p " +
                    "where p.categoriesEntity.id=:categoryID " +
                    "order by p.productStatusesEntity.id desc").setMaxResults(limit);
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
    public List<ProductsEntity> getAllProductByCategoryID(int categoryID) {
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
}
