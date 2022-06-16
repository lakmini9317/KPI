<?php include'db_connect2.php' ?>
<head>


<style>



</style>

</head>

<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<div class="card-tools">
				
			</div>
		</div>	

		<div class="card-body">
			<table class="table table-bordered" id="list" style="width:50%">
				<thead>
					<tr class="text-center">

						<th rowspan='2'>#</th>
						<th rowspan='2'>Division</th>
						<th rowspan='2'>EMP Code</th>
						<th rowspan='2'>Name</th>
						<th rowspan='2'>Designation</th>
						<th rowspan='2'>Duty Framework</th>
						<th rowspan='2'>Task </th>
						<!-- <th width="25%">Acitvity</th>
						<th rowspan='2'>Sub Acitvity</th> -->
						<th rowspan='2'>Jan</th>
						<th rowspan='2'>Feb</th>
						<th rowspan='2'>March</th>
					</tr>

					<!-- <tr>
						
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target  </th>
						<th>Progress(%)</th>
						<th>Target </th>
						<th>Progress(%)</th>
						
					</tr> -->

				</thead>
				<tbody>
					<?php
					$i = 1;
					
					$qry = $conn->query("SELECT  * FROM suboffice_2022 where j_total not in (0) ");
					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo $row['division'] ?></b></td>
						<td><b><?php echo $row['empcode'] ?></b></td>
						<td><b><?php echo ucwords($row['noc']) ?></b></td>
						<td><b><?php echo $row['desig'] ?></b></td>
						<td><b><?php echo $row['df']  ?></b></td>
						<td><b><?php echo $row['task']  ?></b></td>
						<!-- <td><?php echo $row['activity']  ?></td>
						<td><b><?php echo $row['sactivity']  ?></b></td> -->
						<td><?php echo $row['j_total']  ?></td>
						<td><b><?php echo $row['f_total']  ?></b></td>
						<td><b><?php echo $row['m_total']  ?></b></td>
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
	
<style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
	</>
</>
