<?php
  require_once('dbsql/conn.php');
$email=$_REQUEST["userEmail"];
$sql = "select * from forget where userEmail='$email'";
$query = mysqli_query($conn, $sql);
$row=mysqli_fetch_array($query);

require 'PHPMailer-master/PHPMailerAutoload.php';
$mail = new PHPMailer();

  //Enable SMTP debugging.
  $mail->SMTPDebug = 0;
  //Set PHPMailer to use SMTP.
  $mail->isSMTP();
  //Set SMTP host name
  $mail->Host = "smtp.gmail.com";
  $mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false,
                        'allow_self_signed' => true
                    )
                );
  //Set this to true if SMTP host requires authentication to send email
  $mail->SMTPAuth = TRUE;
  //Provide username and password
  $mail->Username = "1701859@gmail.com";
  $mail->Password = "qwe1701859";
  //If SMTP requires TLS encryption then set it
  $mail->SMTPSecure = "false";
  $mail->Port = 587;
  //Set TCP port to connect to

  $mail->From = "1701859@gmail.com";
  $mail->FromName = "KB sam";

  $mail->addAddress($row["userEmail"]);

  $mail->isHTML(true);

  $mail->Subject = "It is forget password!";
  $mail->Body = "<i>HI,<br />This is your password:</i>".$row["userPwd"]."<br />==============================================<br />go http://localhost/project/";
  $mail->AltBody = "This is the plain text version of the email content <a href=''>";
  if(!$mail->Send())
  {
   echo "Mailer Error: " . $mail->ErrorInfo;
  }
  else
  {
   echo "Message has been sent successfully. Please go to the email to check your <a href='https://mail.google.com/mail' target='blank'>email.</a><br />
   <a href='index.php'>Home</a>";
  }
?>
