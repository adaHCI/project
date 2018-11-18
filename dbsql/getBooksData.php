<?php
  require_once("conn.php");
  $sql = "SELECT books.bibID, books.name, books.author,books.year,books.language,items.userID
  FROM books, items
  WHERE books.bibID = items.bibID;";
  $rs = mysqli_query($conn, $sql) or die(mysqli_error($conn));
  echo "<fieldset id='books'><legend align='left'>Books</legend>";
  echo "<table class='myTable'>
        <tr><th>BibID</th><th>Name</th><th>Year</th><th>Author</th><th>available?</th></tr>";
        while($rc = mysqli_fetch_array($rs)){
          echo "<tr>";
          printf(
            "<td>%s<img class='popup' value='%s'
            src='../images/show.png' width='20px' height='20px'/></td><td>%s</td><td>%s</td><td>%s</td>"
            ,$rc['bibID'],$rc['bibID'],$rc['name'],$rc['year'],$rc['author']);
            if($rc['userID'] != null){
              echo "<td><img src='../images/crossbox.png' width='20px' height='20px'/></td>";
            }else{
              echo "<td><img src='../images/tickbox.png' width='20px' height='20px'/></td>";
            }
          echo "</tr>";
        }
  echo "</table>";
  echo "</fieldset>"
?>
