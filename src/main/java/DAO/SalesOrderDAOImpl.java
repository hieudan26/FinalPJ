package DAO;

import DAO.DAOImpl.AbstractDAO;
import DAO.DAOImpl.ReviewDAO;
import DAO.DAOImpl.SalesOrderDAO;
import Model.ReviewsEntity;
import Model.SalesOrdersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class SalesOrderDAOImpl extends AbstractDAO<Integer, SalesOrdersEntity> implements SalesOrderDAO {
    @Override
    public SalesOrdersEntity getOnebyId(int cartid)
    {
        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
       SalesOrdersEntity salesOrdersEntity= new SalesOrdersEntity();
        try{

            transaction = session.beginTransaction();
            Query<SalesOrdersEntity> salesOrdersEntityQuery = session.createQuery("FROM SalesOrdersEntity s where s.id=:cId ");
            salesOrdersEntityQuery.setParameter("cId",cartid);
            salesOrdersEntity = salesOrdersEntityQuery.getSingleResult();
            transaction.commit();
        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return salesOrdersEntity;
    }
}
