<!doctype html>
<html>
<head>
  <link rel="stylesheet" type="text/css" media="screen" href="css/bg.css"/>
  <link rel="stylesheet" type="text/css" media="screen" href="css/table.css"/>
  <link rel="stylesheet" type="text/css" media="screen" href="css/input.css"/>
  <style>
  table tr td{
    padding: 2px;
    vertical-align: top;
    text-align: right;
  }
  .contentBorder{
    margin-top: 10%;
  }
  </style>
</head>

<body>
  <div class="contentBorder">
    <form method="post" action="mail.php">
      <p><b>Forget Password</b></p>
      <p>please enter your registered email to get your password.</p>
      <p><input class="input" name="userEmail" type="email" /></p>
      <p><a href="index.php" style="float:left">Back</a>
	  <input type="submit" value="Send" style="float:right"/></p>


    </form>

  </div>
</body>
</html>
