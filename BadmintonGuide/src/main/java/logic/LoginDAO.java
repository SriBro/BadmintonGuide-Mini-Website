package logic;

import java.sql.*;

public class LoginDAO {
	String username = "root";
	String password = "sri08#fitness";
	String url = "jdbc:mysql://localhost:3306/admin";
	
	boolean isValidAdmin(Pojo pojo) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement
			("select * from credential where username = ? and password = ?");
			st.setString(1, pojo.getUser());
			st.setString(2, pojo.getPass());
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			
		}
		return false;
	}
	public boolean deleteData(Pojo pojo) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("delete from badminton where id = ?");
			st.setInt(1, pojo.getId());
			int num = st.executeUpdate();
			if(num>0) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean updateData(Pojo pojo2) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("update badminton set budget=?, weight=?, style=?, link=? where id=?");
			st.setInt(1, pojo2.getBudget());
			st.setString(2, pojo2.getWeight());
			st.setString(3, pojo2.getStyle());
			st.setString(4, pojo2.getLink());
			st.setInt(5,pojo2.getId());
			int num = st.executeUpdate();
			System.out.println(num+" no of row/s affected");
			if(num>0) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean insertData(Pojo pojo) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("insert into badminton values (?,?,?,?,?)");
			st.setInt(1, pojo.getId());
			st.setInt(2, pojo.getBudget());
			st.setString(3, pojo.getWeight());
			st.setString(4, pojo.getStyle());
			st.setString(5, pojo.getLink());
			int num = st.executeUpdate();
			System.out.println("Number of row/s affected");
			if(num>0) {
				return true;
			}
		}catch(Exception e) {
			
		}
		return false;
	}
	/*
	public boolean budgetData(Pojo pojo) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("select * from badminton where budget<=?");
			st.setInt(1, pojo.getBudget());
			int num = st.executeUpdate();
			System.out.println(num+" of row/s affected");
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	*/
}
