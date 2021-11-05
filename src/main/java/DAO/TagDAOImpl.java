package DAO;

import DAO.DAOImpl.AbstractDAO;
import DAO.DAOImpl.ReviewDAO;
import DAO.DAOImpl.TagDAO;
import Model.ReviewsEntity;
import Model.TagsEntity;
import Model.UsersEntity;
import Utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class TagDAOImpl extends AbstractDAO<Integer, TagsEntity> implements TagDAO {

}
