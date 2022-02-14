<?php include'../db_connect.php' ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js"> </script>
	<script type = "text/javascript">
		google.charts.load('current', {packages: ['corechart']});     
    </script>



	<title>Division Report</title>
</head>
<body>
<h4>Division Report</h4> <br>

<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				
			</div>
		</div>	



		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr class="text-center">

						<th rowspan='2'>#</th>
						<th rowspan='2'>EMP Code</th>
						<th rowspan='2'>Name</th>
						<th rowspan='2'>Designation</th>
						<th rowspan='2'>Duty Framework</th>
						<th colspan='2'>Quarter 01 </th>
						<th colspan='2'>Quarter 02</th>
						<th colspan='2'>Quarter 03</th>
						<th colspan='2'>Quarter 04</th>
						
					</tr>

					<tr>
						
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target </th>
						<th>Progress(%)</th>
						<th>Target </th>
						<th>Progress(%)</th>
						
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					
					$qry = $conn->query("SELECT * FROM duty_list WHERE divisub='ADG Office'");
					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo $row['empcode'] ?></b></td>
						<td><b><?php echo ucwords($row['noc']) ?></b></td>
						<td><b><?php echo $row['desig'] ?></b></td>
						<td><b><?php echo $row['dutyfrm']  ?></b></td>
						<td><?php echo $row['tutq1']  ?></td>
						<td><b><?php echo $row['progq1p']  ?></b></td>
						<td><?php echo $row['tutq2']  ?></td>
						<td><b><?php echo $row['progq2p']  ?></b></td>
						<td><?php echo $row['tutq3']  ?></td>
						<td><b><?php echo $row['progq3p']  ?></b></td>
						<td><?php echo $row['tutq4']  ?></td>
						<td><b><?php echo $row['progq4p']  ?></b></td>
						
					</tr>	
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	$('.view_employee').click(function(){
		uni_modal("<i class='fa fa-id-card'></i> Employee Details","view_employee.php?id="+$(this).attr('data-id'))
	})
	$('.delete_employee').click(function(){
	_conf("Are you sure to delete this Employee?","delete_employee",[$(this).attr('data-id')])
	})
	})
	function delete_employee($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_employee',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>
