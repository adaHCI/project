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
    <!-- values: userType username userpwd-->
    <form method="post" action="login.php">
      <table>
      <tr><th colspan='2'>Welcome!</th></tr>
      <tr><td>User type:</td><td>
        <select name="userType">
          <option value="staff_teaching">Staff(teaching)</option>
          <option value="staff_nonTeaching">Staff(non-teaching)</option>
          <option value="student">Student</option>
          <option value="alumni">Alumni</option>
        </select>
      </td></tr>
      <tr><td colspan="2"><input class="input" type="text"  name ="username" required="required" placeholder="Please enter username"/></td></tr>
      <tr><td colspan="2"><input class="input" type="password"  name= "userpwd" required="required" placeholder="Please enter Password"/></td></tr>
      <tr><td><a href="forgetPasswordForm.php">Forget Password?</a></td><td><input type='Submit' style='float: right;' /></td></tr>
      </table>
    </form>

  </div>
</body>
</html>
