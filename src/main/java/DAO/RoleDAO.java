package DAO;

import Model.AccountsEntity;
import Model.RolesEntity;
import Model.RolesEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class RoleDAO {
    
    public static boolean insert(RolesEntity rolesEntity){
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.save(rolesEntity);
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
    public static boolean update(RolesEntity rolesEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{
            transaction = session.beginTransaction();
            session.update(rolesEntity);
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
    public static boolean delete(RolesEntity rolesEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.delete(rolesEntity);
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
    public static List<RolesEntity> getAll(){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<RolesEntity> rolesEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<RolesEntity> rolesEntityQuery = session.createQuery("FROM RolesEntity ");
            transaction.commit();
            rolesEntityList = rolesEntityQuery.getResultList();


        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return rolesEntityList;
    }

    public static RolesEntity getOneByID(int roleid){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<RolesEntity> rolesEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<RolesEntity> rolesEntityQuery= session.createQuery("FROM RolesEntity role " +
                    "WHERE role.id =: roleid");
            rolesEntityQuery.setParameter("roleid",roleid);
            transaction.commit();
            rolesEntityList = rolesEntityQuery.getResultList();
        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        if(rolesEntityList.size() == 0)
            return null;
        else
            return rolesEntityList.get(0);
    }
}
