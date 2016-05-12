package fashionara.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Dresses implements Serializable
{
	
//private static final long serialVersionUID = 5000L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int dressid;
	@NotEmpty
	 private String color;
	 private int price;
	 @NotEmpty
	private String size;
	 @NotEmpty
	 private String name;
	 @NotEmpty
	 private String style;
		 
	 @NotEmpty
	 private String gtype;
	@Transient
	 private MultipartFile img;
	 
	
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getGtype() {
		return gtype;
	}
	public void setGtype(String gtype) {
		this.gtype = gtype;
	}
	public Dresses()
	{
		
	}
	public int getdressid() {
		return dressid;
	}
	public void setdressid(int dressid) {
		dressid = dressid;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}
	
	
}
