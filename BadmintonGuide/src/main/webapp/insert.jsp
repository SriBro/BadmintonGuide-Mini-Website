<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
<title>Inserting record</title>
<style>
body{
background-color:#ADD8E6;
font-family: 'Roboto', sans-serif;
}
.card{
color:#FFF44F;
font-style:italic;
background-color:darkblue;
font-weight:light;
border-radius:9px;
margin-top:150px;
margin-left:560px;
border-color:black;
border-width:7px;
text-align:center;
}
#insert{
font-size:22px;
}
#insert:hover{
background-color:darkblue;
color:white;
border-color:white;
cursor:pointer;
border-radius:9px;
}
</style>
</head>
<body>
<div class="card" style="width:350px;">
<form action="InsertController" method="post">
<h2 autocomplete="off">Enter id: </h2>
<input type="text" name="id2">
<h2 autocomplete="off">Enter budget: </h2>
<input type="text" name="budget2">
<h2 autocomplete="off">Enter weight: </h2>
<input type="text" name="weight2">
<h2 autocomplete="off">Enter style: </h2>
<input type="text" name="style2">
<h2 autocomplete="off">Enter link: </h2>
<input type="text" name="link2"><br><br>
<input id="insert" type="submit" value="Insert">
</form>
</div>
</body>
</html>