package logic;

public class Pojo {
	private String user;
	private String pass;
	private int budget,id;
	private String weight,style,link,purchase;
	
	public String getUser() {
		return user;
	}
	public String getPass() {
		return pass;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public void setPass(String pass) {
		this.pass=pass;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
