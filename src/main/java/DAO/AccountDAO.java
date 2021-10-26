package DAO;

import Model.AccountsEntity;
import Model.AccountsEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class AccountDAO {
    public static boolean insert(AccountsEntity accountsEntity){
        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.save(accountsEntity);
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
    public static boolean update(AccountsEntity accountsEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{
            transaction = session.beginTransaction();
            session.update(accountsEntity);
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
    public static boolean delete(AccountsEntity accountsEntity){

        Transaction transaction = null;
        Session session = HibernateUtils.getSessionFactory().openSession();

        try{

            transaction = session.beginTransaction();
            session.delete(accountsEntity);
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
    public static List<AccountsEntity> getAll(){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<AccountsEntity> accountsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<AccountsEntity> accountsEntityQuery = session.createQuery("FROM AccountsEntity ");
            transaction.commit();
            accountsEntityList = accountsEntityQuery.getResultList();


        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return accountsEntityList;
    }

    public static AccountsEntity Login(String username, String password){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<AccountsEntity> accountsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<AccountsEntity> accountsEntityQuery = session.createQuery("FROM AccountsEntity acc " +
                    "WHERE acc.username =: username AND acc.password =: password");
            accountsEntityQuery.setParameter("username",username);
            accountsEntityQuery.setParameter("password",password);
            transaction.commit();
            accountsEntityList = accountsEntityQuery.getResultList();
        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        if(accountsEntityList.size() == 0)
            return null;
        else
            return accountsEntityList.get(0);
    }

    public static boolean CheckUsernameExist(String username){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<AccountsEntity> accountsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<AccountsEntity> accountsEntityQuery = session.createQuery("FROM AccountsEntity acc " +
                    "WHERE acc.username =: username");
            accountsEntityQuery.setParameter("username",username);
            transaction.commit();
            accountsEntityList = accountsEntityQuery.getResultList();
        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        if(accountsEntityList.size() == 0)
            return false;
        else
            return true;
    }

    public static AccountsEntity getOneByID(int accid){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<AccountsEntity> accountsEntityList = new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<AccountsEntity> accountsEntityQuery = session.createQuery("FROM AccountsEntity acc " +
                    "WHERE acc.id =: accid");
            accountsEntityQuery.setParameter("accid",accid);
            transaction.commit();
            accountsEntityList = accountsEntityQuery.getResultList();
        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        if(accountsEntityList.size() == 0)
            return null;
        else
            return accountsEntityList.get(0);
    }
}
