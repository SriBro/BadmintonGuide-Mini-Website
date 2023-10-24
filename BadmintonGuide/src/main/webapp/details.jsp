<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <title>details page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
	</script>
<link rel="stylesheet" href="style.css">   
<style>
body{
font-family:'Roboto','sans-serif';
background-color:#ADD8E6;
}    
.card{
background-color:darkblue;
border-radius:9px;
color:yellow;
margin-top:150px;
margin-left:600px;
}
#budget{
padding-top:30px;
}
#weight{
padding-top:30px;
}
#style{
padding-top:30px;
}
#viewid:hover{
background-color:darkblue;
color:white;
border-color:white;
cursor:pointer;
border-radius:9px;
}
</style>
</head>
<body>
<div class="d-flex justify-content-end">
    <a href="home.jsp"><button id="btn11" style="border:none; font-size:22px;">Home</button></a>
    <a href="admin.jsp"><button id="btn12" style="border:none; font-size:22px;">Admin</button></a>
</div>
	<div class="card" style="width:300px";>
	<div class="card-body">
    <form action="success2.jsp" method="post">
        <h2 id="budget">Enter budget: </h2>
        <select name="budget">
            <option>1000</option>
            <option>2000</option>
            <option>3000</option>
            <option>4000</option>
            <option>5000</option>
            <option>6000</option>
            <option>>6000</option>
        </select>
        <h2 id="weight">Kind of racket: </h2>
        <select name="racket">
            <option class="bg-primary">Heavyweight</option>
            <option>Lightweight</option>
        </select>
        <h2 id="style">Style of play: </h2>
        <select name="play">
            <option>Attacking</option>
            <option>Defensive</option>
        </select><br><br>
        <input type="submit" id="viewid" value="view">
    </form>
    </div>
   </div>
</body>
</html>