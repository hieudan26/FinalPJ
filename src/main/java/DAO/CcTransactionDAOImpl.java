package DAO;

import DAO.DAOImpl.AbstractDAO;
import DAO.DAOImpl.AccountDAO;
import DAO.DAOImpl.CcTransactionDAO;
import Model.AccountsEntity;
import Model.CcTransactionsEntity;
import Model.UsersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class CcTransactionDAOImpl extends AbstractDAO<Integer, CcTransactionsEntity> implements CcTransactionDAO {

}
