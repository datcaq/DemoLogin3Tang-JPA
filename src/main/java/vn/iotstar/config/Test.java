package vn.iotstar.config;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.iotstar.entity.Category;

public class Test {
    public static void main(String[] args) {
        EntityManager enma = JpaConfig.getEntityManager();
        EntityTransaction trans = enma.getTransaction();
        
        Category cate = new Category();
        cate.setCategoryname("Iphone 15");
        cate.setImages("iphone.jpg");
        cate.setStatus(1);

        try {
            trans.begin();
            enma.persist(cate);
            trans.commit();
            System.out.println(">>> KET NOI JPA VA TAO BANG THANH CONG! <<<");
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        } finally {
            enma.close();
        }
    }
}