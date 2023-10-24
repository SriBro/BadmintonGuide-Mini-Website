<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
<title>Updating record</title>
<style>
body{
background-color:#ADD8E6;
font-family:'Roboto',sans-serif;
}
.card{
margin-top:150px;
background-color:darkblue;
font-style:italic;
border-radius:9px;
color:yellow;
margin-top:150px;
margin-left:560px;
border-color:black;
border-width:7px;
text-align:center;
}
#update{
font-size:22px;
}
#update:hover{
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
<div class="card-body">
<form action="UpdateController" method="post">
<h2 autocomplete="off">Enter id to update: </h2>
<input type="text" name="id">
<h2 autocomplete="off">Enter updated budget: </h2>
<input type="text" name="budget">
<h2 autocomplete="off">Enter updated weight: </h2>
<input type="text" name="weight">
<h2 autocomplete="off">Enter updated style: </h2>
<input type="text" name="style">
<h2 autocomplete="off">Enter updated link: </h2>
<input type="text" name="link"><br><br>
<input id="update" type="submit" value="Update">
</div>
</form>
</div>
</body>
</html>