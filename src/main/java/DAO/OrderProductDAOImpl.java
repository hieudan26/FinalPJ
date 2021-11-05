package DAO;

import DAO.DAOImpl.AbstractDAO;
import DAO.DAOImpl.AccountDAO;
import DAO.DAOImpl.OrderProductDAO;
import Model.AccountsEntity;
import Model.OrderProductsEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class OrderProductDAOImpl extends AbstractDAO<Integer, OrderProductsEntity> implements OrderProductDAO {
    @Override
    public List<OrderProductsEntity> getAllbySaleOrderId(int saleid){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        List<OrderProductsEntity> orderProductsEntityList= new ArrayList<>();
        try{

            transaction = session.beginTransaction();
            Query<OrderProductsEntity> orderProductsEntityQuery = session.createQuery("FROM OrderProductsEntity o where o.salesOrdersEntity.id=:sId ");
            orderProductsEntityQuery.setParameter("sId",saleid);
            orderProductsEntityList = orderProductsEntityQuery.getResultList();
            transaction.commit();

        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return orderProductsEntityList;
    }
    @Override
    public Long SumSubTotalBySaleId(int saleid){

        Transaction transaction = null;
        Session session =HibernateUtils.getSessionFactory().openSession();
        long sum=0;
        try{

            transaction = session.beginTransaction();
            Query<Long> orderProductsEntityQuery = session.createQuery("select sum(o.subtotal) FROM OrderProductsEntity o where o.salesOrdersEntity.id=:sId ");
            orderProductsEntityQuery.setParameter("sId",saleid);
            sum= orderProductsEntityQuery.getSingleResult();
            transaction.commit();

        }catch (Exception e){

            if (transaction != null){

                transaction.rollback();
            }
            e.printStackTrace();
        }finally {

            session.close();
        }
        return sum;
    }

}
