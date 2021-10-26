package DAO;

import Model.ReviewsEntity;
import Model.UsersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
    public static boolean insert(ReviewsEntity reviewsEntity){
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.save(reviewsEntity);
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
    public static boolean update(ReviewsEntity reviewsEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{
            transaction = session.beginTransaction();
            session.update(reviewsEntity);
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
    public static boolean delete(ReviewsEntity reviewsEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.delete(reviewsEntity);
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
    public static List<ReviewsEntity> getAll(){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<ReviewsEntity> reviewsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<ReviewsEntity> reviewsEntityQuery = session.createQuery("FROM ReviewsEntity");
            transaction.commit();
            reviewsEntityList = reviewsEntityQuery.getResultList();


        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return reviewsEntityList;
    }

    public static List<ReviewsEntity> getAllbyProductId(int productId)
    {

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<ReviewsEntity> reviewsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<ReviewsEntity> reviewsEntityQuery = session.createQuery("FROM ReviewsEntity r where r.productsEntity.id=:pId");
            reviewsEntityQuery.setParameter("pId",productId);
            reviewsEntityList = reviewsEntityQuery.getResultList();
            transaction.commit();


        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return reviewsEntityList;
    }


}
