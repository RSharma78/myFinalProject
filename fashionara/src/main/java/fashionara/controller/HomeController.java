package fashionara.controller;
import java.io.*;
import java.util.*;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;

import fashionara.model.Dresses;
import fashionara.service.DressService;

@Controller
public class HomeController
{
	DressService service;
	@Autowired
	public HomeController(DressService service)
	{
		this.service=service;
	}
	@RequestMapping()
	public ModelAndView test()
	{
		System.out.println("Inside home aontroller");
		return new ModelAndView("index");
	}
	
	
	@RequestMapping("/Register")
	public ModelAndView register(HttpServletResponse response)throws Exception
	{
		return  new ModelAndView("Register");
	}
	@RequestMapping("/AboutUs")
	public ModelAndView about(HttpServletResponse response)throws Exception
	{
		return  new ModelAndView("AboutUs");
	}
	@RequestMapping("/Login")
	public ModelAndView login(HttpServletResponse response)throws Exception
	{
		return  new ModelAndView("Login");
	}
	@RequestMapping("/ContactUs")
	public ModelAndView contact(HttpServletResponse response)throws Exception
	{
		return  new ModelAndView("ContactUs");
	}
	
	@RequestMapping("/productdetail")
	public ModelAndView contact2(HttpServletResponse response)throws Exception
	{
		return  new ModelAndView("ContactUs");
	}
	
	
	
	
	@RequestMapping(value="/dress_details")
	public ModelAndView getData(HttpServletResponse response)throws Exception
	{
		return new ModelAndView("dress_details");
	}
	@RequestMapping(value="/dress")
	public ModelAndView returnData(HttpServletResponse response)throws Exception
	{
		ModelAndView mv=new ModelAndView("dresss");
		ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
		Gson gson=new Gson();
		String json=gson.toJson(p);
		System.out.println("JSON: "+json);
		mv.addObject("list",json);
		return mv;
		
	}
	@RequestMapping(value="/addDress")
	public ModelAndView addDress(HttpServletResponse response)throws Exception
	{
		ModelAndView mav=new ModelAndView("dress");
		return null;
	}
	@RequestMapping(value="dress/displayDress")
	public ModelAndView displayProduct(@ModelAttribute("dress") Dresses d) throws IOException{
		ModelAndView m=new ModelAndView("displayDress");
		return m;
	}
	@RequestMapping(value="/getdata")
	public ModelAndView showProduct(HttpServletResponse response) throws IOException{
		ModelAndView m=new ModelAndView("getdata");
		ArrayList<Dresses> p= (ArrayList<Dresses>) service.getAllDresses();
		
		Iterator i=p.iterator();
		while(i.hasNext())
		{
			Dresses x=(Dresses) i.next();
			System.out.println(x.getdressid());
			System.out.println(x.getSize());
			System.out.println(x.getName());
			System.out.println(x.getPrice());
			System.out.println(x.getColor());
			
		}
		m.addObject("list",p);
		return m;
	}
	
	
}
