<!doctype html public "-//w3c//dtd html 3.2//en">
<html>
<head>
<title></title>

</head>
<body >


<div class="container" style=''>
<form action="" method="post">

<label>Select Designation</label>

<select name="division">
        <option value="" disabled selected>Choose Designation</option>

        <option value="0001">Charirman</option>
        <option value="8293">Director General</option>
        <option value="9185">Act. Additional Director General</option>
        <option value="8652">Deputy Director General (Planning)</option>
        <option value="9344">Deputy Director General (Consultancy)</option>
        <option value="1807">Deputy Director General (Finance)</option>
        <option value="1810">Deputy Director General (HRM & Administration)</option>
        <option value="8154">Act. Deputy Director General (Project)'e</option>
        <option value="9282">Act. Deputy Director General (Planning)</option>
        <option value="9309">Acting-Deputy Director General (Real Estate & land Mgt)</option>
        <option value="8650">Director (Facility Management)</option>
        <option value="8654">Director (Uva Province)</option>
        <option value="2175">Director (Real Easte &  Land Development)</option>
        <option value="8184">Director (Northern Centeral Province) </option>
        <option value="8190">Director (Northern Province)</option>
        <option value="9750">Director (GIS) </option>
        <option value="9761">Director (CMR)</option>
        <option value="8242">Director (North Western Province)</option>
        <option value="8241">Director (Eastern  Province)</option>
        <option value="8271">Director (Southern  Province)</option>
        <option value="9774">Director (Project Management-Western  Region)</option>
        <option value="9795">Director (Land Development & Mgt)</option>
        <option value="3918">Director (Enviromental &Landscape)</option>
        <option value="3853">Director (Strategic Planning)</option>
        <option value="9771">Director (Project Management-Southern Region)</option>
        <option value="2181">Director (Engineering Services)</option>
        <option value="1751">Director (Architectural Consultancy)</option>
        <option value="3906">Director (Project Management-Northern Region)</option>
        <option value="4810">Director (Research & Development)</option>
        <option value="8338">Director (Finance)</option>
        <option value="3986">Director (Administration)</option>
        <option value="1805">Director (Legal)</option>
        <option value="1809">Director (ICT)</option>
        <option value="1801">Chief Internal Auditor</option>
        <option value="8236">Deputy Director (Planning)- Acting Director (Sabaragamuwa Province)</option>
        <option value="9796">Performing Director (Western Province)- Deputy Director (Planning)</option>
        <option value="1758">Acct. Director (PPM)- Deputy Director (HRM)</option>
        <option value="9458">Performing Director (Central Province)- Assistant Director (Planning)</option>
        <option value="6766">test</option>

      </select>
      <button type="submit" class="btn btn-primary btn-sm" >Search</button>
</form> <br><br>
</div>


<div id ='rslt' style="padding-left:20px;padding-top:20px;background-color:white;">

<?php
require "config.php";// Database connection

$subdivi =(isset($_POST['division']) ? $_POST['division'] : '');

if($stmt1 = $connection->query("SELECT SUM(los+swa+attend+dat+kow+loyalty+coop+effi+crtvt+ta+initia+wtr+att+ps+com+probs+bear )AS abc FROM superadminduty_list WHERE empcode='$subdivi'")){

  while ($row = $stmt1->fetch_row()) {

    $arow = $row[0]; 
    $brow= ($arow/17)*20 ;
    $NumOfDecimals =2;
    $crow1 = number_format($brow, $NumOfDecimals);
    echo '<b> Baseline Performance : </b> ' .$crow1 .' % ';
    echo "<div id='progressbar' style='width: 50%; height: 20px;border-radius: 10px;border: solid 1px #000000; overflow: hidden;'>";
    echo "<div id='completed' style='width: ".$crow1."% !important; position: relative; height: 100%; background-color: #3358FF;'></div>";
    echo "</div>";
 
    echo '<br><br>';
  }
}



if($stmt2 = $connection->query("SELECT SUM((los*losw)+(swa*swaw)+(attend*attendw)+(dat*datw)+(kow*koww)+(loyalty*loyaltyw)+(coop*coopw)+(effi*effiw)+(crtvt*crtvtw)+(ta*taw)+(initia*initiaw)+(wtr*wtrw)+(att*attw)+(ps*psw)+(com*comw)+(probs*probsw)+(bear*bearw) )AS abc FROM superadminduty_list WHERE empcode='$subdivi'")){

  while ($row2 = $stmt2->fetch_row()) {

    $arow2 = $row2[0]; 
    $brow2= ($arow2) ;
    $NumOfDecimals =2;
    $crow2 = number_format($brow2, $NumOfDecimals);
    echo '<b>Weighted Performance : </b> ' .$crow2 .'%';
     
    echo '<br>';
  }
}




if($stmt = $connection->query("SELECT noc,los,swa,attend,dat,kow,loyalty,coop,effi,crtvt,ta,initia,wtr,att,ps,com,probs,bear  FROM superadminduty_list WHERE empcode='$subdivi'")){

 
// echo "No of records : ".$stmt->num_rows."<br>";
$php_data_array = Array(); // create PHP array

//$row2 = mysqli_fetch_array($stmt,MYSQLI_NUM);

// echo "<table>
// <tr>
// <th>j</th>
// <th>j</th>
// <th>j</th>
// </tr>";


while ($row = $stmt->fetch_row()) {

    
  //  echo "<tr>
  //  <td>$row[0]</td>
  //  <td>$row[1]</td>
  //  <td>$row[2]</td>
  //  </tr>";
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
</div>

<br>
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
        data.addColumn('string', 'Employee Name');
        data.addColumn('number', 'Length Of Service');
		    data.addColumn('number', 'Special Work Appreciation');
        data.addColumn('number', 'Attendance');
        data.addColumn('number', 'Disciplinary Action Take');
        data.addColumn('number', 'Knowledge Of Work');
        data.addColumn('number', 'Loyalty');
        data.addColumn('number', 'Cooperation');
        data.addColumn('number', 'Efficiency');
        data.addColumn('number', 'Creativity');
        data.addColumn('number', 'Target Achievement');
        data.addColumn('number', 'Initiative');
        data.addColumn('number', 'Willing to take Resp');
        data.addColumn('number', 'Attitude');
        data.addColumn('number', 'Planning Skill');
        data.addColumn('number', 'Communication');
        data.addColumn('number', 'Probloem Solving');
        data.addColumn('number', 'Bearing');
        
        for(i = 0; i < my_2d.length; i++)
        data.addRow([my_2d[i][0], parseInt(my_2d[i][1]),parseInt(my_2d[i][2]),parseInt(my_2d[i][3]),parseInt(my_2d[i][4]),parseInt(my_2d[i][5]),parseInt(my_2d[i][6]),parseInt(my_2d[i][7]),parseInt(my_2d[i][8]),parseInt(my_2d[i][9]),parseInt(my_2d[i][10]),parseInt(my_2d[i][11]),parseInt(my_2d[i][12]),parseInt(my_2d[i][13]),parseInt(my_2d[i][14]),parseInt(my_2d[i][15]),parseInt(my_2d[i][16]),parseInt(my_2d[i][17])]);

       var options = {
          title: '',
          hAxis: {title: 'Employee Name',  titleTextStyle: {color: '#3A5795'}},
          vAxis: {title: 'Value',minValue: 0},
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







