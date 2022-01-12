<?php
?>
<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
			<form action="dutysubmit.php" id="manage_dutylist" method="post">
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
						<h4>Quarter 01</h4>
						<div class="form-group">
							<label for="" class="control-label">Target upto 31.03.2021</label>
							<textarea name="tutq1" class="form-control form-control-sm" required value="<?php echo isset($tutq1) ? $tutq1 : '' ?>"></textarea>
						</div>

						<div class="form-group">
							<label for="" class="control-label">Work Progress up to 31.03.2021</label>
							<div class="form-row">
                            	<div class="form-group col-md-2">
							 		<label for="inputCity">Completed</label>
									<input type="text" name="progq1p" class="form-control form-control-sm" required value="<?php echo isset($progq1p) ? $progq1p : '' ?>">
						  		</div>
						  		<div class="col-md-1 ">
									<label for="inputCity">Balance</label>
									<input type="text" name="progq1l" class="form-control form-control-sm" required value="<?php echo isset($progq1l) ? $progq1l : '' ?>">
						  		</div>
							</div>
						</div>

						<h4>Quarter 02</h4>
						<div class="form-group">
							<label for="" class="control-label">Target upto 30.09.2021</label>
							<textarea name="tutq2" class="form-control form-control-sm" required value="<?php echo isset($tutq2) ? $tutq2 : '' ?>"></textarea>
						</div>

						<div class="form-group">
							<label for="" class="control-label">Work Progress up to 30.09.2021</label>
						  	<div class="form-row">
								<div class="form-group col-md-2">
									<label for="inputCity">Completed</label>
									<input type="text" name="progq2p" class="form-control form-control-sm" required value="<?php echo isset($progq2p) ? $progq2p : '' ?>">
						  		</div>

								<div class="col-md-1 ">
									<label for="inputCity">Balance</label>
									<input type="text" name="progq2l" class="form-control form-control-sm" required value="<?php echo isset($progq2l) ? $progq2l : '' ?>">
								</div>
						 	</div>
						</div>

						<h4>Quarter 03</h4>
						<div class="form-group">
							<label for="" class="control-label">Target up to 31.12.2021</label>
							<textarea name="tutq3" class="form-control form-control-sm" required value="<?php echo isset($tutq3) ? $lastname : '' ?>"></textarea>
						</div>

						<div class="form-group">
							<label for="" class="control-label">Work Progress up to 31.12.2021</label>

							<div class="form-row">
                            	<div class="form-group col-md-2">
									<label for="inputCity">Completed</label>
									<input type="text" name="progq3p" class="form-control form-control-sm" required value="<?php echo isset($progq3p) ? $progq3p : '' ?>">
						    	</div>

						    	<div class="col-md-1 ">
									<label for="inputCity">Balance</label>
									<input type="text" name="progq3l" class="form-control form-control-sm" required value="<?php echo isset($progq3l) ? $progq3l : '' ?>">
						  		</div>
							</div>
					 	</div>
					</div>
				</div> <br>
				
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



