<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				
			</div>
		</div>

	

		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>EMP Code</th>
						<th>Name</th>
						<th>Designation</th>
						<th>Duty Framework</th>
						<th>Target up to Q1 </th>
						<th>Work Progress Q1 (%)</th>
						<th>Target up to Q2 </th>
						<th>Work Progress up to Q2 (%)</th>
						<th>Target up to Q3</th>
						<th>Work Progress up to Q3 (%)</th>
						
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					
					$qry = $conn->query("SELECT * FROM duty_list");
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
