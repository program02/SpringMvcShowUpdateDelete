/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Student
 */
public class StudentDao {

    public void insert(Student st) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(st);
        s.getTransaction().commit();
        s.close();
    }

    public void delete(Student st) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(st);
        s.getTransaction().commit();
        s.close();
    }

    public void update(Student st) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(st);
        s.getTransaction().commit();
        s.close();
    }

    public List<Student> show() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        List<Student> list;
        Query q = s.createQuery("From Student");
        list = q.list();
        return list;
    }
}
