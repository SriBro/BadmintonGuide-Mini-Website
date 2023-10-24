<%@page import="logic.Pojo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
<title>Success</title>
<style>
table,th,td{
border:2px solid black;
border-collapse:collapse;
margin-top:200px;
margin-left:570px;
padding:25px;
}
body{
background-color:#ADD8E6;
color:darkblue;
font-family:'Roboto','sans-serif';
}
#btn1{
color : darkblue;
background-color: #F6BE00;
padding : 10px;
border-radius : 5px;
border: 2px solid black;
cursor : pointer;
font-size:17px;
}
#btn1:hover{
background-color:darkblue;
color:white;
border-color:white;
}
</style>
</head>
<body>
<table>
    <tr>
        <th>Budget</th>
        <th>Weight</th>
        <th>Style</th>
        <th>Link</th>
        <th>Purchase</th>
    </tr>
    <%@ page import="java.sql.*" %>
    <% 
    int rowCount = 0;
    try{
    	int budget = Integer.parseInt(request.getParameter("budget"));	
    	String weight = request.getParameter("racket");
        String style = request.getParameter("play");
    	//String weight = request.getParameter("racket");
    	//String style = request.getParameter("play");
        String url = "jdbc:mysql://localhost:3306/admin";
        String username = "root";
        String password = "sri08#fitness";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st3 = con.prepareStatement("SELECT count(*) as count FROM badminton WHERE budget <= ? and weight=? and style=?");
            st3.setInt(1, budget);
            st3.setString(2, weight);
            st3.setString(3, style);
            PreparedStatement st = con.prepareStatement("SELECT * FROM badminton WHERE budget >= ? and budget <= ? AND weight = ? AND style = ?");
            	
                st.setInt(1, budget-1000);
                st.setInt(2, budget);
                st.setString(3, weight);
                st.setString(4, style);
                ResultSet rs3 = st3.executeQuery();
                ResultSet rs = st.executeQuery();
                
                if(rs3.next()){
                	rowCount = rs3.getInt("count");
                }
                if(rowCount > 0){
                	while (rs.next()) {
                        int budget2 = rs.getInt("budget");
                        String weight2 = rs.getString("weight");
                        String style2 = rs.getString("style");
                        String link2 = rs.getString("link");
                        out.println("<tr><td>" + budget2 + "</td><td>"+weight2+"</td><td>"+style2+"</td><td><a href="+link2+">Amazon</a></td><td><a href='pay.jsp'><button id='btn1'>Buy now!</button></a></td></tr>");
                    }
                    out.println("<br><br>");
   			    }
                else{
                	response.sendRedirect("error2.jsp");
                }
                }
                	 catch (Exception e) {
            e.printStackTrace();
        }
    }catch(NumberFormatException e){
    	String weight = request.getParameter("racket");
        String style = request.getParameter("play");
    	//String weight = request.getParameter("racket");
    	//String style = request.getParameter("play");
        String url = "jdbc:mysql://localhost:3306/admin";
        String username = "root";
        String password = "sri08#fitness";
    	Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
        PreparedStatement st2 = con.prepareStatement("SELECT count(*) as count FROM badminton WHERE budget >= 6000 and weight=? and style=?");
        st2.setString(1, weight);
    	st2.setString(2, style);
        PreparedStatement st = con.prepareStatement("SELECT * FROM badminton WHERE budget >= 6000 and weight=? and style=?");
        	st.setString(1, weight);
            st.setString(2, style);
            ResultSet rs2 = st2.executeQuery();
            ResultSet rs = st.executeQuery();
            
            if(rs2.next()){
            	rowCount = rs2.getInt("count");
            }
            if(rowCount > 0){
            	while (rs.next()) {
                    int budget2 = rs.getInt("budget");
                    String weight2 = rs.getString("weight");
                    String style2 = rs.getString("style");
                    String link2 = rs.getString("link");
                    out.println("<tr><td>" + budget2 + "</td><td>"+weight2+"</td><td>"+style2+"</td><td><a href="+link2+">Amazon</a></td><td><a href='pay.jsp'><button id='btn1'>Buy now!</button></td></a></tr></tr>");
                }
                out.println("<br><br>");
        }
            else{
            	response.sendRedirect("error2.jsp");
            }
      }
            
    %>
</table>
</body>
</html>
