<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400&display=swap" rel="stylesheet">
    <title>Home page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <style>
        body{
            background-color: #ADD8E6;
        }
        .card{
            background-color:darkblue;
            font-size:larger;
            margin-top:100px;
            font-family:'Roboto',sans-serif;
        }
        #btn-1:hover{
            background-color: white !important;
            color:darkblue !important;
            border:3px solid white;
            border-color:darkblue !important;
        }
    </style>
</head>
<body>
  <center>
    <div class="card" style="width:300px;">
        <img class="card-img-top" src="home.jpg" alt="image is there">
        <div class="card-body">
            <h3 class="card-title text-white">Who are you?</h3>
            <a href="admin.jsp" id="btn-1" class="btn bg-primary text-white">Admin</a>
            <a href="user.jsp" id="btn-1" class="btn bg-primary text-white">User</a>
        </div>
    </div>
    </center>
</body>
</html>