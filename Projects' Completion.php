<!doctype html public "-//w3c//dtd html 3.2//en">
<html>
<head>
<title></title>

<style>
  table,tr,th,td{
    border:1px solid black;
    padding:10px;
    margin-bottom:20px;
  }

  table{
    margin-bottom:20px;
  }
</style>
</head>
<body >


<div class="container pt-5">
<form action="" method="post">
             
<label>Select Project Region</label>

<select name="division">
        <option value="" disabled selected>Choose Region</option>
        <option value="R-1 -Director - Project Management Western Region">Western Region</option>
        <option value="R-2-Director - Project Management Northern Region">Nothern  Region</option>
        <option value="R-3  Director - Project Management Southern Region">Southern Region</option>
        <option value="Western Province">Western Province</option>
        <option value="Central Province">Central Province</option>
        <option value="Northern Province">Northern Province</option>
        <option value="North Central Province">North Central Province</option>
        <option value="North Western Province">North Western Province</option>
        <option value="Sabaragamuwa Province">Sabaragamuwa Province</option>
        <option value="Southern Province">Southern Province</option>
        <option value="Uva Province">Uva Province</option>
        <option value="Eastern Province">Eastern Province</option>
        <option value="CMR">Colombo Metro Region</option>

</select>

<button type="submit" class="btn btn-warning" >Search</button>

</form> <br><br>
</div>

<?Php
require "config.php";// Database connection

$subdivi =(isset($_POST['division']) ? $_POST['division'] : '');

if($stmt = $connection->query("SELECT noc,comprto FROM projectstatus WHERE divisub='$subdivi'")){

//   echo "No of records : ".$stmt->num_rows."<br>";
$php_data_array = Array(); // create PHP array

$row2 = mysqli_fetch_array($stmt,MYSQLI_NUM);

echo "<table>
<tr>

<th>Name Of Employee</th>
<th>Complete </th>

</tr>";
while ($row = $stmt->fetch_row()) {
  
   echo "<tr>
   <td>$row[0]</td>
   <td>$row[1]</td>
   <
   
   </tr>";
   $php_data_array[] = $row; // Adding to array
   }
echo "</table>";
}else{
echo $connection->error;
}
//print_r( $php_data_array);
// You can display the json_encode output here. 
// echo json_encode($php_data_array); 

// Transfor PHP array to JavaScript two dimensional array 
echo "<script>
        var my_2d = ".json_encode($php_data_array)."
</script>";
?>


<div id="chart_div"></div>
<br><br>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {packages: ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawChart);
	  
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Project Name');
        data.addColumn('number', 'Lagging Region');
	      
      
       
        
        
        for(i = 0; i < my_2d.length; i++)
        data.addRow([my_2d[i][0], parseInt(my_2d[i][1])]);

       var options = {
          title: '',
          hAxis: {title: 'Province',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0},
		  width:1500,
		  height:700
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
       }
	///////////////////////////////
////////////////////////////////////	
</script>
</body></html>







