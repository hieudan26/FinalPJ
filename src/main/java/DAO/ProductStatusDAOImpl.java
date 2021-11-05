package DAO;

import DAO.DAOImpl.AbstractDAO;
import DAO.DAOImpl.ProductDAO;
import DAO.DAOImpl.ProductStatusDAO;
import Model.ProductStatusesEntity;
import Model.ProductsEntity;
import Model.UsersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class ProductStatusDAOImpl extends AbstractDAO<Integer, ProductStatusesEntity> implements ProductStatusDAO {

}
