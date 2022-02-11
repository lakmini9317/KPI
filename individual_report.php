<?php
$emp =(isset($_POST['empcode']) ? $_POST['empcode'] : '');

$connect = mysqli_connect("localhost", "root", "admin", "kpi_eps"); 

$query2 = "SELECT progq1, count(*) as number FROM duty_list2 where empcode=$emp GROUP BY progq1";  
$result2 = mysqli_query($connect, $query2); 

 
// $connect->close();
?> 

<!DOCTYPE html>  
<html>  
    <head>  
        <title>Report Dashboard</title>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
          
        <script type="text/javascript"> 
                  
            google.charts.load('current', {'packages':['corechart']}); 
            google.charts.setOnLoadCallback(drawChart);
          
            function drawChart()  
            {  
                var data = google.visualization.arrayToDataTable([  
                    ['Duty', 'Progress'],  
                    <?php  
                    while($row = mysqli_fetch_array($result2))  
                    {  
                        echo "['".$row["progq1"]."', ".$row["number"]."],";  
                    }  
                    ?>  
                ]);

                var options = {  
                    title: 'Quater 01 Progress ',  
                    is3D:true,  
                    pieHole: 0.5  
                };  

                var chart = new google.visualization.PieChart(document.getElementById('piechart2'));  
                chart.draw(data, options);  
            }       

        </script> 

            
    </head>  

    <body>  

    
        <form action="" method="post">
             
            <label>EMP Code</label>
            <input type="text" name="empcode"><br>
            <button type="submit" class="btn btn-md btn-primary" >Search</button>
           
        </form> <br><br>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6">  
                <h3>Quarter 01 Progress</h3>  
                <br/>  
                <div id="piechart2" style="height: 500px;"></div>  
            </div>  <br>
        </div> 
        
         


    </body>  
 </html>

 
