<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .body{
            background-color:#ADD8E6;
        }
            .thank-you {
        font-size: 30px;
        text-align: center;
        margin-top:150px;
        color:darkblue;
      }
      
      .thank-you h1 {
        animation: thank-you-animation 5s linear infinite;
      }
      
      @keyframes thank-you-animation {
        from {
          opacity: 0;
          transform: translateY(-100px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
    </style>
</head>
<body>
    <div class="thank-you">
        <h1>Thank you very much for buying our product!</h1>
      </div>      
</body>
</html>