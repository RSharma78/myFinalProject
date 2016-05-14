package fashionara.controller;
import java.io.*;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import fashionara.dao.*;
import fashionara.model.*;
import fashionara.service.*;

@Controller
public class AdminController  
{

	@Autowired
	DressService service;
	
	/*public AdminController(DressService service) 
	{
		this.service=service;
		
		
	}*/
/*	
	@RequestMapping(value="/uploadImage",method=RequestMethod.POST)
	public String insertProduct(@Valid @ModelAttribute("product") Dresses p, HttpServletRequest request, BindingResult result,ModelMap model) throws IOException
	{
	boolean res=false;
	res=service.addDress(p);
	
	ServletContext context=request.getServletContext();
	String rootPath=context.getRealPath("/resources/images/"+service.getMaxId()+".jpg");
	System.out.println("Path = "+rootPath);
	
	MultipartFile m=p.getImg();
	System.out.println(m.toString());
	File dir = new File(rootPath);
	if(!m.isEmpty())
	{
	try
	{
	byte[] bytes = p.getImg().getBytes();
	        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(dir));
	        stream.write(bytes);
	        stream.close();
	System.out.println("Image uploaded");
	System.out.println("Image is  Inserted");
	}
	catch(Exception ex)
	{
	System.out.println(ex.getMessage());
	}
	}
	else
	{
	res=false;
	}
	if(res)
	{
	ArrayList<Dresses> pr= (ArrayList<Dresses>) service.getAllDresses();
	  Gson gson=new Gson();
	  String json=gson.toJson(pr);
	  System.out.println("ajson: "+json);
	  model.addAttribute("list",json);
	return "adminhomepage";
	}
	else
	{
	return "adminhomepage";
	}
	
	}
	*/

	@RequestMapping("/adminpa")
	public String getAdminLandingPage(@ModelAttribute("dress") Dresses dresses,BindingResult result,ModelMap model)
	{
		
		
		model.addAttribute("mprod", dresses);
	    ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
		Gson gson=new Gson();
		String json=gson.toJson(p);
			
				model.addAttribute("list",json);
		        return "adminpage";
	}
	      
	
	
	@RequestMapping(value="/Login",method=RequestMethod.POST)
	public String getFormData(@RequestParam("username") String user, @RequestParam("password") String pass, Model model)
	{
		model.addAttribute("dress", new Dresses());
		 ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			
			model.addAttribute("list",json);
			return "/adminpa";
		
	}

	
	 @RequestMapping(value = "/addnewdress", method = RequestMethod.POST)
	    public String submit(@Valid @ModelAttribute("dress") Dresses dress, BindingResult result, ModelMap model,HttpServletRequest request) 
	 {
	    	
	    	if(dress.getdressid()==0){
		          
	    		model.addAttribute("mprod", dress);
	    	      boolean x=service.addDress(dress);
	    	      
	    	  	String rootPath=request.getSession().getServletContext().getRealPath("/resources/images/"+dress.getdressid()+".jpg");
	    	  	System.out.println("Path = "+rootPath);
	    	  	
	    	  	MultipartFile m=dress.getImg();
	    	  	System.out.println(m.toString());
	    	  	try
	    		{
	    		byte[] bytes = dress.getImg().getBytes();
	    		        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(rootPath));
	    		        stream.write(bytes);
	    		        stream.close();
	    		System.out.println("Image uploaded");
	    		System.out.println("Image is  Inserted");
	    		}
	    		catch(Exception ex)
	    		{
	    		System.out.println(ex.getMessage());
	    		}
	    	      
	    	      ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
	    			Gson gson=new Gson();
	    			String json=gson.toJson(p);
	    	
	    			System.out.println("inserted");;
	    			model.addAttribute("list",json);
	    	      if(x)
	    	        return "adminpage";
	    	      else
	    	    	  return "index";
	    			}
	    			else
	    			{
	           
	        	model.addAttribute("mprod", dress);
	            boolean x=service.updateDress(dress);
	            ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
	      		Gson gson=new Gson();
	      		String json=gson.toJson(p);
	      		System.out.println("ajson: "+json);
	      		model.addAttribute("list",json);
	            if(x)
	              return "adminpage";
	            else
	          	  return "index";
	                }
	 }
	 

/*		    
	    @RequestMapping(value = "/updateDress", method = RequestMethod.POST)
	    public String edit(@ModelAttribute("dress")Dresses dress,BindingResult result, ModelMap model) 
	    {
	    	System.out.println("updated ");
	    	
	      model.addAttribute("mprod", dress);
	      ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			service.updateDress(dress);
			System.out.println("ajson: "+json);
			model.addAttribute("list",json);
			Gson g=new Gson();
			String j=g.toJson(dress);
			model.addAttribute("alist",json);
	        return "adminpage";
	    }
		 
	    */
	    
	    
	    @RequestMapping("/remove/{id}")
	    public String removeProduct(@PathVariable("id") int id)
	    {
	         
	        
	    	System.out.println("inside remove admin ");
	        this.service.removeProduct(id);
	        return "redirect:/adminpage";
	    }
	 
	    
	    @RequestMapping("/edit/{id}")
	    public String editProduct(@PathVariable("id") int id,BindingResult result, Model model)
	    {
	    	Dresses d=new Dresses();
	    	System.out.println("inside edit");
	    	this.service.updateDress(d);
	   
	        model.addAttribute("product", this.service.getDressByID(id));
	        
	        model.addAttribute("list", this.service.getAllDresses());
	        return "redirect:/adminpage";
	    }
	   
	    
	    
	    
	    
		@RequestMapping("/retrieve/{id}")
		public String retrieve(@PathVariable("id") int id, Model model)
		{
			System.out.println("Retreiving data");
			
			model.addAttribute("mprod", this.service.getDressByID(id));
			System.out.println("Retreiving data");
			
		    ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			//model.addAttribute("list",json);
			
			//model.addAttribute("mprod",json);
			
			
			return "productdetails";
			
		}
	    
	    
	    
		
	    
	    
	    
	    }

	
	