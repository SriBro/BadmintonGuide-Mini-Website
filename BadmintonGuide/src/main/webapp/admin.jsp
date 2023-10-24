<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <style>
        body{
            background-color: #ADD8E6;
        }
        .card{
            background-color:darkblue;
            margin-top:100px;
            font-family:'Roboto',sans-serif;
            color:#FFF44F;
            font-style:italic;
            margin-left:550px;
        }
        #submit1:hover{
            background-color:darkblue;
			color:white;
			border-color:white;
			cursor:pointer;
			border-radius:9px;
        }
        #uname{
        margin-top:27px;
        }
        #middle{
        margin-left:90px;
        }
    </style>
</head>
<body>
<div class="d-flex justify-content-end">
    <a href="home.jsp"><button id="btn11" style="border:none; font-size:27px; margin-right:8px;">Home</button></a>
</div>
    <div class="card" style="width:400px;">
        <div class="card-body">
            <img class="card-img-top" src="admin.jpeg" alt="image is there"
             style="width:150px" id="middle">
            <form action="LoginController" method="post">
                <h2 id="uname" autocomplete="off" class="card-title text-white" style="margin-left:90px;">username:</h2><input type="text" name="username" id="middle"><br><br>
                <h2 autocomplete="off" class="card-title text-white" id="middle">password:</h2><input type="password" name="password" id="middle"><br><br>
                <input id="submit1" type="submit" value="Submit" style="margin-left:90px;">
            </form>
        </div>
    </div>
</body>
</html>