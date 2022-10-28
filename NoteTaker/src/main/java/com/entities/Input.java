package com.entities;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Input {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();
		
		Note n = new Note();
		n.setContents("vivek");
		n.setTitles("hi");
		
		
		
		Session s = factory.openSession();
		 Query q = s.createQuery("from Notes");
		Transaction tx = s.beginTransaction();
		s.save(n);
		
		tx.commit();
		s.close();
	}

}
