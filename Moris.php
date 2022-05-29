<?php 
//index.php
$connect = mysqli_connect("localhost", "root", "", "kpi eps");
$query = "SELECT * FROM dutiesho2022";
$result = mysqli_query($connect, $query);
$chart_data = '';
while($row = mysqli_fetch_array($result))
{
 $chart_data .= "{ year:'".$row["empcode"]."', jan:".$row["j_total"].", feb:".$row["f_total"].", march:".$row["m_total"]."}, ";
}
$chart_data = substr($chart_data, 0, -2);
?>


<!DOCTYPE html>
<html>
 <head>
  <title></title>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
  
 </head>
 <body>
  <br /><br />
  <div class="container" style="width:900px;">
   <h2 align="center"></h2>
   <h3 align="center"></h3>   
   <br /><br />
   <div id="chart" style="height: 500px; width: 2000px;"></div>
  </div>
 </body>
</html>

<script>
 Morris.Bar({
 element : 'chart',
 data:[<?php echo $chart_data; ?>],
 xkey:'year',
 ykeys:['jan'],
 labels:['Jan', 'Feb', 'March'],
 hideHover:'auto',
 
});
</script>
