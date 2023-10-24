<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
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
        font-style:italic;
    }
    #btn1:hover{
    background-color:darkblue;
        color:white;
        border-color:white;
        cursor:pointer;
        border-radius:9px;
    }
</style>
<title>Payment Page</title>
<script>
    function fun() {
        var cardNumber = document.getElementsByName("myNumber")[0].value;
        var cardName = document.getElementsByName("myCard")[0].value;
        var cvv = document.getElementsByName("myCVV")[0].value;

        // Validate card number
        if (cardNumber.trim() === '' || cardNumber.length !== 16 || isNaN(cardNumber)) {
            alert("Card number should be a 16-digit numeric value.");
            return;
        }

        // Validate name on the card
        if (cardName.trim() === '' || !/^[a-zA-Z\s]+$/.test(cardName)) {
            alert("Please enter a valid name on the card.");
            return;
        }

        // Validate CVV number
        if (cvv.trim() === '' || cvv.length !== 3 || isNaN(cvv)) {
            alert("CVV number should be a 3-digit numeric value.");
            return;
        }

        // If all validations pass, show success message and redirect
        alert("Your payment has been successful!!");
        event.preventDefault();
        window.location.href = "thanks.jsp";
    }
</script> 
</head>
<body>
<!-- Nav tabs -->
<div class="d-flex justify-content-end">
    <a href="home.jsp"><button id="btn11" style="border:none; font-size:22px;">Home</button></a>
    <a href="admin.jsp"><button id="btn12" style="border:none; font-size:22px;">Admin</button></a>
</div>


<div class="card" style="width:350px">
    <div class="card-body">
        <form method="post" autocomplete="off">
            <h2>Card number:</h2>
            <input type="number" name="myNumber" placeholder="Card number" required><br><br>
            <h2>Name on Card:</h2>
            <input type="text" name="myCard" placeholder="Name as on card" required><br><br>
            <h2>CVV number:</h2>
            <input type="password" name="myCVV" placeholder="CVV" required><br><br>
            <input type="button" onclick="fun()" value="Pay" id="btn1" style="font-size:large; width: 60px;">
        </form>
    </div>
</div>
</body>
</html>
