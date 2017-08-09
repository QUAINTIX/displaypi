<!DOCTYPE html>
<html>
	<head>
		<title>index</title>
			<?php
				/* Verbindung aufbauen */
				$con = mysqli_connect("", "root", "quaintsql007");
				
				/* Datenbank auswaehlen */
				mysqli_select_db($con, "displaypi");
				
				$result = mysqli_query($con, 'SELECT* FROM displaypi WHERE id > "'. $_GET['id'] .'" LIMIT 1');
				
				/* Alle Eintraege durchlaufen */
				if($result && mysqli_num_rows($result) > 0){
					while($row = mysqli_fetch_assoc($result)) {
						echo "<meta  http-equiv='refresh' content='".$row['dauer']."; url=./index.php?id=".$row['id']."'>";
						echo "</head><body style='padding: 0; margin: 0; background-color: #000000; overflow: hidden;'>";
						if($row["typ"] == "image") {
							echo "<img  height='100%' src='".$row['url']."' />";
						} elseif($row["typ"] == "video") {
							echo "<video autoplay  height='100%'>
									 <source src='".$row['url']."' type='video/mp4'>
								 </video> ";
						} else {
							echo "http://192.168.7.81/Thorben/videotest/error.php";
						}
					}
				}
				else{
					echo "<meta  http-equiv='refresh' content='0; url=./index.php?id=0'>";
				}
			?>
	</body>
</html>