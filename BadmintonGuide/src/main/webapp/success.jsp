<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success</title>
<link rel="stylesheet" href="style.css">
<style>
#btnlogout{
border:none; font-size:27px; margin-right:8px; color:darkblue;
    position : absolute;
    top : 0;
    right : 0; 
}
#btnlogout:hover{
background-color:darkblue;
color:white;
border-color:white;
cursor:pointer;
border-radius:9px;
margin-right:2px;
}
table,th,td{
border:2px solid black;
border-collapse:collapse;
margin-top:2px;
margin-left:350px;
padding:25px;
font-size:22px;
}
#delete{
margin-left:510px;
margin-top:25px;
border:2px solid blue;
onclick:hover;
cursor:pointer;
border-radius:9px;
font-size:22px;
}
#delete:hover{
background-color:darkblue;
color:white;
border-color:white;
border-radius:9px;
}
#update{
border:2px solid blue;
font-size:22px;
margin-left:40px;
cursor:pointer;
border-radius:9px;
}
#update:hover{
background-color:darkblue;
color:white;
border-color:white;
}
#insert{
border:2px solid blue;
font-size:22px;
cursor:pointer;
margin-left:40px;
border-radius:9px;
}
#insert:hover{
background-color:darkblue;
color:white;
border-color:white;
}
body{
background-color:#ADD8E6;
color:darkblue;
font-family:'Roboto','sans-serif';
font-size:37px;
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
    <a href="home.jsp"><button id="btnlogout">Log Out</button></a>

	<table>
		<tr>
			<th>id</th>
			<th>Budget</th>
			<th>Weight</th>
			<th>Style</th>
			<th>Link</th>
		</tr>
		<%@ page import="java.sql.*" %>
		<%
		if(session.getAttribute("uname") == null){
            response.sendRedirect("admin.jsp");
        }
        else{
            // Check for cache control headers from the browser
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
            String cacheControl = request.getHeader("Cache-Control");
            if (cacheControl != null && (cacheControl.contains("no-cache") || cacheControl.contains("no-store"))) {
                // The browser is caching, redirect to error.jsp
                response.sendRedirect("error.jsp");
            } else {
            	//response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
        		//String cacheDirectoryPath = "http://localhost:8080/Jay/success.jsp";
        		//boolean noCacheFiles = checkNoCacheFiles(cacheDirectoryPath);
        		//response.setHeader("Pragma","no-cache");
        		//response.setHeader("Expires","0");
        		String url = "jdbc:mysql://localhost:3306/admin";
        			String username = "root";
        			String password = "sri08#fitness";
        			try{
        				Class.forName("com.mysql.cj.jdbc.Driver");
        				Connection con = DriverManager.getConnection(url,username,password);
        				Statement st = con.createStatement();
        				ResultSet rs = st.executeQuery("select * from badminton");
        				while(rs.next()){
        					int id = rs.getInt("id");
        					int budget = rs.getInt("budget");
        					String weight = rs.getString("weight");
        					String style = rs.getString("style");
        					String link = rs.getString("link");
        					out.println("<tr><td>"+id+"</td><td>"+budget+"</td><td>"+weight+"</td><td>"+style+"</td><td><a href= "+link+">Amazon</a></td></tr>");
        				}
        				out.println("<br><br>");
        			}catch(Exception e){
        				e.printStackTrace();
        			}
            }
        }
		%>
	</table>
	<button type="button" id="delete" onclick="location.href='delete.jsp'">Delete</button>
	<button type="button" id="update" onclick="location.href='update.jsp'">Update</button>
	<button type="button" id="insert" onclick="location.href='insert.jsp'">Insert</button>
</body>
</html>