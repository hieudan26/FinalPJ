package DAO;

import Model.ProductsEntity;
import Model.UsersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ProductDAO {
    public static boolean insert(ProductsEntity productsEntity){
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();
        try{
            transaction = session.beginTransaction();
            session.save(productsEntity);
            transaction.commit();
            return true;
        }catch (Exception e){
            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }
    public static boolean update(ProductsEntity productsEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{
            transaction = session.beginTransaction();
            session.update(productsEntity);
            transaction.commit();

            return true;
        }catch (Exception e){

            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }
    public static boolean delete(ProductsEntity productsEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.delete(productsEntity);
            transaction.commit();

            return true;
        }catch (Exception e){
            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }
    public static List<ProductsEntity> getAll(){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
       List<ProductsEntity>productsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<ProductsEntity> productsEntityQuery = session.createQuery("FROM ProductsEntity ");
            transaction.commit();
            productsEntityList = productsEntityQuery.getResultList();


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
    public static ProductsEntity getProductbyID(int ID)
    {
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




}
