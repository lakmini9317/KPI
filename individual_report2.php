<?php
include 'db_connect.php';

$emp =(isset($_POST['empcode']) ? $_POST['empcode'] : '');
$division =(isset($_POST['division']) ? $_POST['division'] : '');

$query="select empcode,noc,tutq1,progq1p from duty_list where empcode=$emp"; 
$result=mysqli_query($conn,$query);

$chartQuery = "SELECT * FROM duty_list where division=$division";
$chartQueryRecords = mysqli_query($conn,$chartQuery);




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Individual Report</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


    <script type="text/javascript">

      google.charts.load('current', {
        'packages':['imagebarchart'],
        'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
      });

      google.charts.setOnLoadCallback(drawRegionsMap);


    function drawRegionsMap() {

      var data = google.visualization.arrayToDataTable([
          ['empcode', 'target', 'progress'],
          <?php

              while($row = mysqli_fetch_assoc($chartQueryRecords)){

                  echo "['".$row['empcode']."',".$row['tutq1']."],".$row['progq1p']."";
              }
          ?>
      ]);


      var options = {
      };

      var chart = new google.visualization.ImageBarChart(document.getElementById('divisionChart'));
      chart.draw(data, options);

    }

</script>






</head>
</head>
<body>


  <form action="" method="post">
             
      <label>EMP Code</label>
      <input type="text" name="empcode"><br>
      <label>Division</label>
      <input type="text" name="division"><br>
      <button type="submit" class="btn btn-md btn-primary" >Search</button>
    
  </form> <br><br>


  <div class="container mt-2">
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
              <th scope="col">Tasks Q1

              </th>
              <th scope="col">Progress</th>
            </tr>
          </thead>
          <tbody>
            
            <?php if ($result->num_rows > 0): ?>
            <?php while($array=mysqli_fetch_row($result)): ?>
            <tr>
                <th scope="row"><?php echo $array[0];?></th>
                <td><?php echo $array[1];?></td>
                <td><?php echo $array[2];?></td>
                <td><?php echo $array[3];?></td>
            </tr>
            <?php endwhile; ?>
            <?php else: ?>
            <tr>
              <td colspan="3" rowspan="1" headers="">No Data Found</td>
            </tr>
            <?php endif; ?>
            <?php mysqli_free_result($result); ?>
          </tbody>
        </table>
      </div>
    </div>        
  </div> <br><br>

  



  <div id="divisionChart" style="width: 900px; height: 500px;"></div>

</body>
</html>