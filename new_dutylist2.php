<?php
?>
<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
			<form action="" id="manage_dutylist">
				<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
				<div class="row">
			      <div class="col-md-6 border-right">
						<div class="form-group">
								<label for="" class="control-label">EMP Code</label>
								<input type="text" name="empcode" class="form-control form-control-sm" required value="<?php echo isset($empcode) ? $empcode : '' ?>">
							</div>
							<div class="form-group">
								<label for="" class="control-label">Name of the officer</label>
								<input type="text" name="noc" class="form-control form-control-sm" value="<?php echo isset($noc) ? $noc : '' ?>">
							</div>
							<div class="form-group">
								<label for="" class="control-label">Designation</label>
								<input type="text" name="desig" class="form-control form-control-sm" required value="<?php echo isset($desig) ? $desig : '' ?>">
							</div>
							<div class="form-group">
								<label for="" class="control-label">Duties  framework</label>
								<input type="text" name="dutyfrm" class="form-control form-control-sm" required value="<?php echo isset($dutyfrm) ? $dutyfrm : '' ?>">
							</div>
						</div>

					<div class="col-md-6">

						<div class="form-group">
							<label for="" class="control-label">Target upto 31.03.2021</label>
							<textarea name="tutq1" class="form-control form-control-sm" required value="<?php echo isset($tutq1) ? $tutq1 : '' ?>"></textarea>
						</div>

						<div class="form-group">
						<label for="" class="control-label">Work Progress up to 31.03.2021</label>
						  <div class="col-md-2 ">
							<input type="text" name="progq1p" class="form-control form-control-sm" required value="<?php echo isset($progq1p) ? $progq1p : '' ?>">
						  </div>
						  <div class="col-md-2 ">
							<input type="text" name="progq1l" class="form-control form-control-sm" required value="<?php echo isset($progq1l) ? $progq1l : '' ?>">
						  </div>
						</div>

						<div class="form-group">
								<label for="" class="control-label">Target upto 30.09.2021</label>
								<textarea name="tutq2" class="form-control form-control-sm" required value="<?php echo isset($tutq2) ? $tutq2 : '' ?>"></textarea>
						</div>

						<div class="form-group">
							<label for="" class="control-label">Work Progress up to 30.09.2021</label>
						  <div class="col-md-2 ">
							<input type="text" name="progq2p" class="form-control form-control-sm" required value="<?php echo isset($progq2p) ? $progq2p : '' ?>">
						  </div>
						  <div class="col-md-2 ">
							<input type="text" name="progq2l" class="form-control form-control-sm" required value="<?php echo isset($progq2l) ? $progq2l : '' ?>">
						  </div>
						</div>

						<div class="form-group">
								<label for="" class="control-label">Target up to 31.12.2021</label>
								<textarea name="tutq3" class="form-control form-control-sm" required value="<?php echo isset($tutq3) ? $lastname : '' ?>"></textarea>
						</div>
						<div class="form-group">
							<label for="" class="control-label">Work Progress up to 31.12.2021</label>
							<div class="col-md-2 ">
							<input type="text" name="progq3p" class="form-control form-control-sm" required value="<?php echo isset($progq3p) ? $progq3p : '' ?>">
						</div>
						<div class="col-md-2 ">
							<input type="text" name="progq3l" class="form-control form-control-sm" required value="<?php echo isset($progq3l) ? $progq3l : '' ?>">
						 </div>
					 </div>

				</div>
				<hr>
				<div class="col-lg-12 text-right justify-content-center d-flex">
					<button class="btn btn-primary mr-2">Save</button>
					<button class="btn btn-secondary" type="button" onclick="location.href = 'index.php?page=view_dutylist'">Cancel</button>
				</div>
			</form>
		</div>
	</div>
</div>
<style>
	img#cimg{
		height: 15vh;
		width: 15vh;
		object-fit: cover;
		border-radius: 100% 100%;
	}
</style>
<script>

		$.ajax({
			url:'ajax.php?action=save_dutylist',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp == 1){
					alert_toast('Data successfully saved.',"success");
					setTimeout(function(){
						location.replace('index.php?page=new_dutylist')
					},750)
				}else if(resp == 2){
					$('#msg').html("<div class='alert alert-danger'>Email already exist.</div>");
					$('[name="email"]').addClass("border-danger")
					end_load()
				}
			}
		})
	})
</script>

<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <a class="dropdown-item view_employee" href="./index.php?page=display_dutylist&id=<?php echo $row['id']?>" data-id="<?php echo $row['id'] ?>">View</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item" href="./index.php?page=edit_dutylist&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_employee" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
		                    </div>
						</td>