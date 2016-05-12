package fashionara.dao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import fashionara.model.Dresses;;

@Repository
public class DressesDaoImpl implements DressesDAO
{
	List<Dresses> list;
	
	// auto wired was not on proper place
	@Autowired
	SessionFactory sessionFactory;
	

	
	public DressesDaoImpl()
	{
		list=new ArrayList <Dresses>();
		
	}
	public Session getSession()
    {
    	System.out.println("s:"+sessionFactory);
    	return sessionFactory.openSession();
    }
	public List<Dresses>getAllDresses()
	{
		Session s=getSession();
		Transaction tx=s.beginTransaction();
		List<Dresses>l=s.createQuery("From Dresses").list();
		System.out.println("To check the data "+l);
		return l;
	}
	
	 public boolean addDress(Dresses d)
	 
	{
		 try
		 {
			 System.out.println("Check the data is saved or not");
		
		Session s=getSession();
		Transaction tx=s.beginTransaction();
		s.save(d);
		System.out.println("Check the data is saved or not");
		tx.commit();
		System.out.println("Transaction is committd");
		s.close();
		return true;
		 }
		 catch(Exception ee)
		 {
			 System.out.println(ee);
			 return false;
		 }
		
	}
	public boolean deleteDress(Dresses d)
	{
		Session s=getSession();
		System.out.println("inside dao imple");
		Transaction tx=s.beginTransaction();
		s.delete(d);
		System.out.println("To check data is deleted or not");
		tx.commit();
		System.out.println("Transaction is committed");
		s.close();
		return true;
	}
	public Dresses getDressByID(int id)
	{	
		Session s=getSession();
		Transaction tx=s.beginTransaction();
		
		Dresses d=(Dresses)s.get(Dresses.class,new Integer(id));
		System.out.println("Retrieving the dress by the id");
		tx.commit();
		System.out.println("Committed");
		s.close();
		
		return d;
	}
	public boolean updateDress(Dresses d)
	{
		Session s=getSession();
		Transaction tx=s.beginTransaction();
		System.out.println(tx);
		s.update(d);
		System.out.println("Dress Record is updated in database");
		tx.commit();
		s.close();
		
		return true;
	}
	public int getMaxId()
	{
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Dresses> l =session.createQuery("FROM Dresses WHERE dressid = (SELECT MAX(dressid) FROM Dresses)").list();
		int y=l.get(0).getdressid();
		System.out.println("MAX:ID: "+y);
		tx.commit();
		session.close();
		return y;
}
	
	
	
	public void removeProduct(int id)
	{
		
		System.out.println("inside dao impl");
		Session s=getSession();
		Transaction tx=s.beginTransaction();
		Dresses d=s.load(Dresses.class, new Integer(id));
		if(null!=d)
		{
			s.delete(d);
		}
		tx.commit();
		s.close();
	}
	
	}


