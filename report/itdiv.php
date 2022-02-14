<?Php
	require '../db_connect.php';
	// include '../topbar.php'; 
    // include '../sidebar.php';

	if($stmt = $conn->query("SELECT empcode,progq1p,progq2p,progq3p FROM duty_list WHERE divisub='ITS Division'")){

	//echo "No of records : ".$stmt->num_rows."<br>";
	$php_data_array = Array(); 


	while ($row = $stmt->fetch_row()) {
	
	$php_data_array[] = $row; 
	}

	}else{
	echo $connection->error;
	}

	echo "<script>
			var my_2d = ".json_encode($php_data_array)."
	</script>";
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>Division Report</title>
	
</head>

<body>

<?Php
require "../db_connect.php";

if($stmt = $conn->query("SELECT empcode,noc,progq1p,progq2p,progq3p FROM duty_list WHERE divisub='ITS division'")){

  //echo "No of records : ".$stmt->num_rows."<br>";
$php_data_array = Array(); 


while ($row = $stmt->fetch_row()) {
   
   $php_data_array[] = $row; 
   }

}else{
echo $connection->error;
}

echo "<script>
        var my_2d = ".json_encode($php_data_array)."
</script>";
?>

<h2>ITS Division Report</h2>

<div id="chart_div" style='width:50%'></div>
<br><br>
<div class="card-body">
<div class="row">
		
		<div class="col-lg-12">
			<table class="table tabe-hover table-bordered" id="list" >
				<thead>
					<tr class="text-center">

						<th rowspan='2'>#</th>
						<th rowspan='2'>EMP Code</th>
						<th rowspan='2'>Name</th>
						<th rowspan='2'>Designation</th>
						<th rowspan='2'>Duty Framework</th>
						<th colspan='2'>Quarter 01 </th>
						<th colspan='2'>Quarter 02</th>
						<th colspan='2'>Quarter 03</th>
						
					</tr>

					<tr>
						
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target </th>
						<th>Progress(%)</th>
						
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					
					$qry = $conn->query("SELECT * FROM duty_list WHERE divisub='ITS Division'");
					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo $row['empcode'] ?></b></td>
						<td><b><?php echo ucwords($row['noc']) ?></b></td>
						<td><b><?php echo $row['desig'] ?></b></td>
						<td><b><?php echo $row['dutyfrm']  ?></b></td>
						<td><?php echo $row['tutq1']  ?></td>
						<td><b><?php echo $row['progq1p']  ?></b></td>
						<td><?php echo $row['tutq2']  ?></td>
						<td><b><?php echo $row['progq2p']  ?></b></td>
						<td><?php echo $row['tutq3']  ?></td>
						<td><b><?php echo $row['progq3p']  ?></b></td>
						
					</tr>	
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
	


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

      
      google.charts.load('current', {packages: ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawChart);
	  
      function drawChart() {

        
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'EMP Code');
        data.addColumn('number', 'Progress Q1');
		data.addColumn('number', 'Progress Q2');
        data.addColumn('number', 'Progress Q3');
        for(i = 0; i < my_2d.length; i++)
        
    data.addRow([my_2d[i][1], parseInt(my_2d[i][2]),parseInt(my_2d[i][3]),parseInt(my_2d[i][4])]);
       var options = {
          title: '',
          hAxis: {title: 'Emp Code',  titleTextStyle: {color: '#666'}},
          vAxis: {minValue: 0},
		  width:1500,
		  height:1000
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
       }

</script>

	
	
	
	

	
			
	

	

</body>
</html>



