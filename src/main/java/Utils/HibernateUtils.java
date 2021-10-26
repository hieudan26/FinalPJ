package Utils;

import java.util.Properties;

import Model.*;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;

public class HibernateUtils {
    public static SessionFactory sessionFactory;
    public static SessionFactory getSessionFactory(){
        if (sessionFactory == null){
            Configuration cfg = new Configuration();
            Properties settings = new Properties();
            settings.setProperty(Environment.DRIVER,"org.postgresql.Driver");
            settings.setProperty(Environment.URL,"jdbc:postgresql://localhost:5432/Web");
            settings.setProperty(Environment.USER,"postgres");
            settings.setProperty(Environment.PASS,"123");
            settings.setProperty(Environment.DIALECT,"org.hibernate.dialect.PostgreSQLDialect");

            settings.put(Environment.SHOW_SQL,"true");
            settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS,"thread");
            settings.put(Environment.HBM2DDL_AUTO,"none");

            cfg.setProperties(settings);
            cfg.addAnnotatedClass(AccountsEntity.class);
            cfg.addAnnotatedClass(CategoriesEntity.class);
            cfg.addAnnotatedClass(CcTransactionsEntity.class);
            cfg.addAnnotatedClass(ColorsEntity.class);
            cfg.addAnnotatedClass(OrderProductsEntity.class);
            cfg.addAnnotatedClass(ProductsEntity.class);
            cfg.addAnnotatedClass(ProductsColorsEntity.class);
            cfg.addAnnotatedClass(ProductTagsEntity.class);
            cfg.addAnnotatedClass(ProductStatusesEntity.class);
            cfg.addAnnotatedClass(ReviewsEntity.class);
            cfg.addAnnotatedClass(RolesEntity.class);
            cfg.addAnnotatedClass(SalesOrdersEntity.class);
            cfg.addAnnotatedClass(SessionsEntity.class);
            cfg.addAnnotatedClass(TagsEntity.class);
            cfg.addAnnotatedClass(UsersEntity.class);


            StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(cfg.getProperties()).build();

            sessionFactory = cfg.buildSessionFactory(serviceRegistry);
        }
        return sessionFactory;
    }



}
