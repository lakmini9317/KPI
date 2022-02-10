<?php
include 'db_connect.php';

$emp = $_POST['empcode'];

$query="select empcode,noc,taskq1,progq1 from duty_list2 where empcode=$emp"; 
$result=mysqli_query($conn,$query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Individual Report</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
                  <th scope="col">Quarter 1</th>
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
</div>
</body>
</html>