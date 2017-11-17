<?php
@
include('session.php');
$connection = mysqli_connect('localhost', 'root', 'root', 'hologram');

?>
<!DOCTYPE html>
<html>
<head>
<title>Your Home Page</title>
<link href="style/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="profile">
<b id="welcome">Welcome  <i><?php echo $login_session1; ?></i></b>
<b id="logout"><a href="logout.php">Log Out</a></b>


<div id="tab">
	<table width="80%" border="1">
    <tr>
    <th colspan="4">Check your videos.<label></label></th>
    </tr>
    <tr>
    <td>File Name</td>
    
    <td>View</td>
    </tr>
    <?php
    @
	
	$sql="SELECT finalVideo  FROM product WHERE idUser_id ='$login_session' ";
	$result_set=mysql_query($sql);
	while($row=mysql_fetch_array($result_set))
	{
		?>
        <tr>
        <td><?php echo $row['finalVideo'] ?></td>
     
        <td><a href="uploads/<?php echo $row['finalVideo'] ?>" target="_blank">view file</a></td>
        </tr>
        <?php
	}
	?>
    </table>
    </div>





</div>
<audio autoplay loop>
      <source src="music.mp3">
</audio>
</body>
</html>