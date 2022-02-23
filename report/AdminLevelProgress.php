<!doctype html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

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


<body>


<div class="container">
<form action="" method="post">

<label>Division</label>

<select name="division">
        <option value="" disabled selected>Choose Division</option>

        <option value="ADG Office">ADG Office</option>
        <option value="Chairman Office">Chairman Office</option>
        <option value="Colombo Metro Region Division">Colombo Metro Region Division</option>
        <option value="DG Office">DG Office</option>
        <option value="DDG Planning">DDG Planning</option>
        <option value="Enforcement, Audit & Monitoring Unit">Enforcement, Audit & Monitoring Unit</option>
        <option value="Environment & Landscape Division">Environment & Landscape Division</option>
        <option value="Finance">Finance</option>
        <option value="GIS">GIS</option>
        <option value="HRM">HRM</option>
        <option value="ITS Division">ITS Division</option>
        <option value="Land Development and Management">Land Development and Management</option>
        <option value="Legal">Legal</option>
        <option value="Project Consulting">Project Consulting </option>
        <option value="Real Estate Mgt. & Dev.">Real Estate Mgt. & Dev.</option>
        <option value="Transport">Project Consulting </option>
        <option value="Western Province">Western Province</option>
        <option value="Western Region">Western Region</option>

      </select>
<!-- <input type="text" name="division"><br> -->
<button type="submit" class="btn  btn-warning" >Search</button>
</form> <br><br>
</div>

<?Php
require "config.php";// Database connection

$subdivi =(isset($_POST['division']) ? $_POST['division'] : '');


$emp =(isset($_POST['empcode']) ? $_POST['empcode'] : '');

if($stmt = $connection->query("SELECT desig,noc,progq1p,progq2p,progq3p,progq4p,divisub FROM adminduty_list WHERE divisub='$subdivi'")){

  //echo "No of records : ".$stmt->num_rows."<br>";
$php_data_array = Array(); // create PHP array

//$row2 = mysqli_fetch_array($stmt,MYSQLI_NUM);

echo "<table>
<thead> 
<tr> 
<th>Division</th>
<th>Designation</th>
<th>Name</th>
<th>Q1</th> 
<th>Q2</th> 
<th>Q3</th> 
<th>Q4</th> 
</tr>
</thead>";

   while ($row = $stmt->fetch_row()) {
   echo "<tr>
   <td>$row[6]</td>
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
        
        data.addColumn('number', 'Progress Q4');
        for(i = 0; i < my_2d.length; i++)
        
    data.addRow([my_2d[i][1], parseInt(my_2d[i][5])]);
       var options = {
          title: '',
          hAxis: {title: 'Name',  titleTextStyle: {color: '#666'}},
          vAxis: {minValue: 0},
		  width:1400,
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







