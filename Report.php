<?php  
 $connect = mysqli_connect("localhost", "root", "", "kpi eps");  
 
 $query = "SELECT dutyfrm, count(*) as number FROM duty_list GROUP BY dutyfrm";  
 $result = mysqli_query($connect, $query); 
 
 
 $query2 = "SELECT progq1p, count(*) as number FROM duty_list GROUP BY progq1p";  
 $result2 = mysqli_query($connect, $query2);  

 $query3 = "SELECT progq2p, count(*) as number FROM duty_list GROUP BY progq2p";  
 $result3 = mysqli_query($connect, $query3);  


 $query4 = "SELECT progq3p, count(*) as number FROM duty_list GROUP BY progq3p";  
 $result4 = mysqli_query($connect, $query4);  

 $query5 = "SELECT progq3p, count(*) as number FROM duty_list GROUP BY progq3p" ;  
 $result5 = mysqli_query($connect, $query5);

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
           google.charts.setOnLoadCallback(drawChart2);
           google.charts.setOnLoadCallback(drawChart3);
           google.charts.setOnLoadCallback(drawChart4);
           google.charts.setOnLoadCallback(drawChart5);

           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Duty', 'Duty Frameworks'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["dutyfrm"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]); 
                      
                var options = {  
                      title: 'Percentages ',  
                      is3D:true,  
                      pieHole: 0.5  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));  
                chart.draw(data, options);  
           } 

           function drawChart2()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Duty', 'Progress'],  
                          <?php  
                          while($row = mysqli_fetch_array($result2))  
                          {  
                               echo "['".$row["progq1p"]."', ".$row["number"]."],";  
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

           function drawChart3()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Duty', 'Progress'],  
                          <?php  
                          while($row = mysqli_fetch_array($result3))  
                          {  
                               echo "['".$row["progq2p"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  

                var options = {  
                      title: 'Quater 02 Progress ',  
                      is3D:true,  
                      pieHole: 0.5  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart3'));  
                chart.draw(data, options);  
           } 

            function drawChart4()  
            {  
                 var data = google.visualization.arrayToDataTable([  
                           ['Duty', 'Progress'],  
                           <?php  
                           while($row = mysqli_fetch_array($result4))  
                           {  
                                echo "['".$row["progq3p"]."', ".$row["number"]."],";  
                           }  
                           ?>  
                      ]);  

                 var options = {  
                       title: 'Quater 03 Progress ',  
                       is3D:true,  
                       pieHole: 0.5  
                      };  
                 var chart = new google.visualization.PieChart(document.getElementById('piechart4'));  
                 chart.draw(data, options);  
            } 

            function drawChart5()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Duty', 'EMP Count'],  
                          <?php  
                          while($row = mysqli_fetch_array($result5) )  
                          {  
                               echo "['".$row["progq3p"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  

                var options = {  
                      title: 'Percentages ',  
                      is3D:true,  
                      pieHole: 0.5,
                      vAxis: {title: 'Percentage'},
                      hAxis: {title: 'Progress'}  
                     };  
                var chart = new google.visualization.BarChart(document.getElementById('piechart5'));  
                chart.draw(data, options);  
           } 
           

           </script>  

     </head>  

     <body>  
           <br /> <br/> 
           
          <div class="row">
               <div class="col-md-6 col-sm-12 col-lg-6" >  
                    <h3>Duties Report </h3>  
                    <br/>  
                    <div id="piechart" style=" height: 500px;"></div>  
               </div>            	
           
               <div class="col-md-6 col-sm-12 col-lg-6">  
                    <h3>Quarter 01 Completion Report</h3>  
                    <br/>  
                    <div id="piechart2" style="height: 500px;"></div>  
               </div>  <br>
               
               <div class="col-lg-6 col-md-6" style="padding-top:100px;">  
                    <h3>Quarter 02 Completion Report </h3>  
                    <br/>  
                    <div id="piechart3" style=" height: 500px;"></div>  
               </div>            	
           
                <div class="col-lg-6 col-md-6" style="padding-top:100px;">  
                    <h3>Quarter 03 Completion Report</h3>  
                    <br/>  
                    <div id="piechart4" style="height: 500px;"></div>  
               </div> 

               <div class="col-lg-6 col-md-6" style="padding-top:100px;">  
                    <h3>Quarter 04 Completion Report</h3>  
                    <br/>  
                    <div id="piechart5" style="height: 500px;"></div>  
               </div>

          <div> <br/>

          
                
               

     </body>  
 </html>

 
