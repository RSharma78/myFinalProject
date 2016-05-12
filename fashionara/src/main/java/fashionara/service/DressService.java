package fashionara.service;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import fashionara.dao.DressesDAO;
import fashionara.dao.DressesDaoImpl;
import fashionara.model.Dresses;



@Service
@Transactional
public class DressService
{
	@Autowired
	DressesDaoImpl dressImpl;
	
	public List<Dresses>getAllDresses()
	{
		return dressImpl.getAllDresses();
	}
	public boolean addDress(Dresses d)
	{
		return dressImpl.addDress(d);
		
	}
	
	public boolean deleteDress(Dresses d)
	{
		System.out.println("inside service");
		return dressImpl.deleteDress(d);
	}
	public boolean updateDress(Dresses d)
	{
		return dressImpl.updateDress(d);
	}
	public int getMaxId()
	{
		return dressImpl.getMaxId();
	}
	public void removeProduct(int id)
	{
		System.out.println("inside service");
		dressImpl.removeProduct(id);
	}
	public Dresses getDressByID(int id)
	{	
		
		return dressImpl.getDressByID(id);
	}

}
