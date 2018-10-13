<!doctype html>
<html>

<head>
  <link rel="stylesheet" type="text/css" media="screen" href="css/bg.css"/>
  <link rel="stylesheet" type="text/css" media="screen" href="css/table.css"/>
  <style>
  table tr td{
    padding: 2px;
    vertical-align: top;
    text-align: right;
  }
  </style>
</head>

<body>
  <div class="contentBorder">
    <!-- values: userType username userpwd-->
    <form method="post" action="login.php">
      <table>
      <tr><th colspan='2'>Login</th></tr>
      <tr><td>User type:</td><td>
        <input name="userType" list="type" type="text"/>
      </td></tr>
      <tr><td>User name:</td><td><input name='username' type='text' /></td></tr>
      <tr><td>Password:</td><td><input name='userpwd' type='password' /></td></tr>
      <tr><td></td><td><input type='Submit' style='float: right;' /></td></tr>
      </table>
    </form>

  </div>

  <!-- datalist-->
  <datalist id="type">
  <option value="Staff(teaching)"/>
  <option value="Staff(non-teaching)"/>
  <option value="Student"/>
  <option value="Alumni"/>
  </datalist>
</body>
</html>
