<!DOCTYPE html>
 <html>
 <body>
 <?php
 $output = shell_exec('gpio mode '.$_GET['pin'].' out');
 $output = shell_exec('gpio write '.$_GET['pin'].' '.$_GET['status']);

 for ($i = 0; $i < 32; $i++){
	  $output = shell_exec("gpio read ".$i);
	   echo "Relay ".$i.":".$output."<br>";
	   }
  ?>
 </body>
 </html>
