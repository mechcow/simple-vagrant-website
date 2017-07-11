<?php

// connect to DB and pull out some info
// Joel Heenan 11/7/17

$link = mysql_connect('localhost', 'mysql_user', 'Al0K1*K%')
  or die('Could not connect: ' . mysql_error());

mysql_select_db('vibrato') 
  or die('Could not select database');

$query = 'SELECT * FROM info';
$result = mysql_query($query) 
  or die('Could not run query');

echo "<table>\n";
while($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
  echo "\t<tr>\n";
  foreach ($line as $col_value) {
    echo "\t\t<td>$col_value</td>\n";
  }
  echo "\t</tr>\n";
}
echo "</table>\n";

mysql_free_result($result);

mysql_close($link);
?>
