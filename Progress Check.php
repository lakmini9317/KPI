<!doctype html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>


<body>


<div class="container pt-5">
<form action="" method="post">
             
<label>EMP Code</label>
<input type="text" name="empcode"><br>
<button type="submit" class="btn btn-warning" >Search</button>

</form> <br><br>
</div>
<?Php
require "config.php";// Database connection

$emp =(isset($_POST['empcode']) ? $_POST['empcode'] : '');

if($stmt = $connection->query("SELECT empcode,noc,progq1p,progq2p,progq3p,progq4p FROM duty_list WHERE empcode='$emp'")){

  //echo "No of records : ".$stmt->num_rows."<br>";
$php_data_array = Array(); // create PHP array

//$row2 = mysqli_fetch_array($stmt,MYSQLI_NUM);

echo "<table>
<thead> 
<tr> 
<th>Emp No</th>
 <th>Name</th>
 <th>Q1</th> 
 <th>Q2</th> 
 <th>Q3</th> 
 <th>Q4</th> 
</tr>
</thead>";

   while ($row = $stmt->fetch_row()) {
   echo "<tr>
   <td>$row[0]</td>
   <td>$row[1]</td>
   <td>$row[2]</td>
   <td>$row[3]</td>
   <td>$row[4]</td>
   <td>$row[5]</td>
   </tr>";
   $php_data_array[] = $row; // Adding to array
   }
echo "</table>";
  }else{ 
echo $connection->error;
}
//print_r( $php_data_array);
// You can display the json_encode output here. 
//echo json_encode($php_data_array); 

// Transfor PHP array to JavaScript two dimensional array 

echo "<script>
        var my_2d = ".json_encode($php_data_array)."
</script>";
?>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {packages: ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawChart);
	  
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'EMP Code');
        data.addColumn('number', 'Progress Q1');
		  data.addColumn('number', 'Progress Q2');
        data.addColumn('number', 'Progress Q3');
        for(i = 0; i < my_2d.length; i++)
        
    data.addRow([my_2d[i][1], parseInt(my_2d[i][2]),parseInt(my_2d[i][3]),parseInt(my_2d[i][4])]);
       var options = {
          title: '',
          hAxis: {title: 'Name',  titleTextStyle: {color: '#666'}},
          vAxis: {minValue: 0},
		  width:1000,
		  height:700
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
       }

</script>
<div class="row">

   <div id="chart_div"></div>
   </div>


<!-- <div class="container mt-2">
    <div class="row">
      <div class="col-md-12">
        <div class="page-header">
            <h2>Individual Progress</h2>
        </div>
        <table class="table">
          <thead>
            <tr>
              <th scope="col">EMP Code</th>
              <th scope="col">Name</th>
              <th scope="col">Tasks Q1</th>
              <th scope="col">Progress Q1</th>
                  
            </tr>
          </thead>
          <tbody>
            
            
            <tr>
                <th><?php echo $row[0];?></th>
                <td><?php echo $row[1];?></td>
                <td><?php echo $row[2];?></td>
                <td><?php echo $row[3];?></td>
                
            </tr> -->


</body></html>







