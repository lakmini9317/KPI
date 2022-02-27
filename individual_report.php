<?php
include 'db_connect.php';

$emp =(isset($_POST['empcode']) ? $_POST['empcode'] : '');

$query="select empcode,noc,tutq1,progq1p,tutq2,progq2p,tutq3,progq3p from duty_list where empcode='$emp'"; 
$result=mysqli_query($conn,$query);


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Individual Report</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
    border-collapse: collapse;
    width: 100%;
  }
  
  th:nth-child(odd) {
    background-color: #fce6c7;
  }
  th:nth-child(even) {
    background-color: #fce6c7;
  }
</style>
</head>

<body>


  <form action="" method="post">
             
      <label>EMP Code</label>
      <input type="text" name="empcode"><br>
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
              <th scope="col">Tasks Q1</th>
              <th scope="col">Progress Q1</th>
              <th scope="col">Tasks Q2</th>
              <th scope="col">Progress Q2</th>
              <th scope="col">Tasks Q3</th>
              <th scope="col">Progress Q3</th>
                 
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
                <td><?php echo $array[4];?></td>
                <td><?php echo $array[5];?></td>
                <td><?php echo $array[6];?></td>
                <td><?php echo $array[7];?></td>
                
            </tr>
            <?php endwhile; ?>
            <?php else: ?>
            <tr>
              <td colspan="3" rowspan="1" headers="">No Data Found</td>
            </tr>
            <?php endif; ?>
            <?php
            //  mysqli_free_result($result);
              ?>
          </tbody>
        </table>
      </div>
    </div>        
  </div> <br><br>

  




</body>
</html>