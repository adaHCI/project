<?php
/*editOldPwd editNewPwd*/
$type = "";
$userID = "";
if(isset($_SESSION["table"])){
  $type = $_SESSION["table"];
}
if(isset($_SESSION["userID"])){
  $userID = $_SESSION["userID"];
}
$form = <<<EOD
<form method="post" action="../sqlHandling/changePassword.php">
  <input type="text" name="type" value="$type" style="visibility: hidden" readonly/>
  <input type="text" name="userID" value="$userID" style="visibility: hidden" readonly/>
  <table>
    <tr><th colspan="2">Change Password</th></tr>
    <tr><td align="right">Your old password:</td><td><input name="editOldPwd" type="password" required="required"/></td></tr>
    <tr></tr>
    <tr><td align="right">Retype password:</td><td><input type="password" required="required"/></td></tr>
    <tr></tr>
    <tr><td align="right">New password:</td><td><input name="editNewPwd" type="password" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="at least one number and one letter, and at least 8 or more characters" required="required"/></td></tr>
    <tr><td colspan="2"><input type="submit" style="float: right"/></td></tr>
  </table>
</form>
EOD;
echo $form;
?>
