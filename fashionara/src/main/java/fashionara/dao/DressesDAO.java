package fashionara.dao;
import java.util.*;
import fashionara.model.Dresses;

public interface DressesDAO 
{
	public List<Dresses> getAllDresses();
	public boolean addDress(Dresses dress);
	public boolean deleteDress(Dresses d);
	public Dresses getDressByID(int id);
	public boolean updateDress(Dresses dress);
	
	public void removeProduct(int id);

}
