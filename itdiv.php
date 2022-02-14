<?php include'./db_connect.php' ?>


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
						
					</tr>

					<tr>
						
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target </th>
						<th>Progress(%)</th>
						
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					
					$qry = $conn->query("SELECT * FROM duty_list WHERE divisub='ITS Division'");
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
