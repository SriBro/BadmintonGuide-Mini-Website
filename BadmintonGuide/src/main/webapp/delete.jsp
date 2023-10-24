<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
<title>Delete Data</title>
<style>
body{
background-color:#ADD8E6;
font-family:'Roboto',sans-serif;
}
.card{
font-style:italic;
background-color:darkblue;
border-radius:9px;
color:yellow;
margin-top:150px;
margin-left:auto;
margin-right:auto;
border-width:7px;
width:300px; 
height:200px;
text-align:center;
}
#delete{
font-size:22px;
}
#delete:hover{
background-color:darkblue;
color:white;
cursor:pointer;
border-radius:9px;
border-color:white;
}
</style>
</head>
<body>
<div class="card">
<div class="card-body">
<form action="DeleteController" method="post">
<h2 id="deleteid" autocomplete="off">Enter id to delete: </h2>
<input type="text" name="delete1"><br><br>
<input id="delete" type="submit" value="Delete">
</form>
</div>
</div>
</body>
</html>