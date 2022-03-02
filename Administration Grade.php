<?php

?>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Ajax Insert || Update || Delete</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		.box-title{
			border-radius: 5px;
			box-shadow: 0px 0px 3px 1px gray;
			padding: 10px 0px;
		}
		.error-msg{
			color: #dc3545;
			font-weight: 600;
		}
		.success-msg{
			color: green;
			font-weight: 600;
		}
	</style>
</head>

<body>
	
	<div class="container-fluid">
		<div class="container">
			<div class="row m-3 text-center">
				<div class="col-lg-12">
					
				</div>
			</div>
			<div  class="row justify-content-center">
				<div class="col-lg-6">
				<!-- <button type="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#exampleModalCenter" >Add Record</button>	 -->
				</div>
				<div class="col-lg-6">
					<!-- <input type="text" id="search" class="form-control" placeholder="Search Now"> -->
				</div>
			</div>
			<div class="row mt-5" id="tbl_rec">
		
			</div>
		</div>
	</div>
	
<!-- Insert Design Modal -->
	
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      	<div class="modal-header">
        	<h5 class="modal-title" id="exampleModalCenterTitle">Add New Record</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
      	</div>
      	<form method="POST" id="ins_rec">
	      	<div class="modal-body">
		       	<div class="form-group">
					<label><b>Emp Code</b></label>
					<input type="text" name="empcode" class="form-control" placeholder="Emp Code">
					<span class="error-msg" id="msg_1"></span>
			  	</div>

			  	<div class="form-group">
					<label><b> Full Name</b></label>
					<input type="text" name="noc" class="form-control" placeholder="Username">
					<span class="error-msg" id="msg_1"></span>
			  	</div>

			  	<div class="form-group">
					<label><b>Email</b></label>
					<input type="text" name="email" class="form-control" placeholder="YourEmail@email.com">
					<span class="error-msg" id="msg_2"></span>
			  	</div>

				<div class="form-group">
					<label><b>Date Of Join</b></label>
					<input type="text" name="doj" class="form-control" placeholder="DOJ">
					<span class="error-msg" id="msg_2"></span>
			  	</div>

				<div class="form-group">
					<label><b>Designation</b></label>
					<input type="text" name="desig" class="form-control" placeholder="Username">
					<span class="error-msg" id="msg_1"></span>
			  	</div>
				  <div class="form-group">
					<label><b>Length Of service</b></label>
					<input type="text" name="los" class="form-control" placeholder="Username">
					<span class="error-msg" id="msg_1"></span>
			  	</div>

				
				<div class="form-group">
					<span class="success-msg" id="sc_msg"></span>
				</div>
	      	</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-secondary" id="close_click" data-dismiss="modal">Close</button>
	       	 <button type="submit" class="btn btn-primary" >Add Record</button>
	      	</div>
      </form>
    </div>
  </div>
</div>
	
<!-- End Insert Modal -->
		
<!-- Update Design Modal -->
	
<div class="modal fade" id="updateModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="updateModalCenterTitle">Update Grade</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<form method="POST" id="updata">
					<div class="modal-body">
						<h5>Human Resources Department</h5> <br>

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label><b>Length of Service</b></label>
									<select class="custom-select" id="los" name="los">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_1"></span>
								</div>

								<div class="form-group">
									<label><b>Special Work Appreciation</b></label>
									<select class="custom-select" id="swa" name="swa">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_2"></span>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label><b>Attendance</b></label>
									<select class="custom-select" id="attend" name="attend">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_3"></span>
								</div>

								<div class="form-group">
									<label><b>Disciplinary Action Taken</b></label>
									<select class="custom-select" id="dat" name="dat">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_4"></span>
								</div>
							</div>
						</div> <br>

						<h5>In Charge of the Department</h5> <br>

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label><b>Knowledge of Work</b></label>
									<select class="custom-select" id="kow" name="kow">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_5"></span>
								</div>

								<div class="form-group">
									<label><b>loyalty</b></label>
									<select class="custom-select" id="loyalty" name="loyalty">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_6"></span>
								</div>

								<div class="form-group">
									<label><b>Cooperation</b></label>
									<select class="custom-select" id="coop" name="coop">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_7"></span>
								</div>


							</div>

							<div class="col-md-6">

								<div class="form-group">
									<label><b>Efficiency</b></label>
									<select class="custom-select" id="effi" name="effi">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_8"></span>
								</div>

								<div class="form-group">
									<label><b>Creativity</b></label>
									<select class="custom-select" id="crtvt" name="crtvt">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_9"></span>
								</div>

								<div class="form-group">
									<label><b>Target Achievement</b></label>
									<select class="custom-select" id="ta" name="ta">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_10"></span>
								</div>

							</div>
						</div>

						<h5>Senior Incharge</h5> <br>

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label><b>Initiative</b></label>
									<select class="custom-select" id="initia" name="initia">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_11"></span>
								</div>
								<div class="form-group">
									<label><b>Willing to Take Responsibility</b></label>
									<select class="custom-select" id="wtr" name="wtr">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_12"></span>
								</div>
								<div class="form-group">
									<label><b>Attitude</b></label>
									<select class="custom-select" id="att" name="att">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_13"></span>
								</div>
								<div class="form-group">
									<label><b>Planning Skills</b></label>
									<select class="custom-select" id="ps" name="ps">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_14"></span>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label><b>Communication</b></label>
									<select class="custom-select" id="com" name="com">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_14"></span>
								</div>

								<div class="form-group">
									<label><b>Problem Solving</b></label>
									<select class="custom-select" id="probs" name="probs">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_14"></span>
								</div>

								<div class="form-group">
									<label><b>Bearing</b></label>
									<select class="custom-select" id="bear" name="bear">
										<option value="" selected>Select</option>
										<option value="5">A</option>
										<option value="4">B</option>
										<option value="3">C</option>
										<option value="2">D</option>
										<option value="1">E</option>
									</select>
									<span class="error-msg" id="msg_14"></span>
								</div>
							</div>
						</div>
				
				
				

						

						

						

						



						<div class="form-group">
							<input type="hidden" name="dataval" id="upd_7">
							<span class="success-msg" id="umsg_6"></span>			
						</div>
					</div>
			
    	
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal" id="up_cancle">Cancle</button>
						<button type="submit" class="btn btn-primary">Update Record</button>
					</div>
      		</form>	
		</div>
  	</div>
</div>	
	
<!-- End Update Design Modal -->
	
<!-- Delete Design Modal -->
	
<div class="modal fade" id="deleteModalCenter" tabindex="-1" role="dialog" aria-labelledby="deleteModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteModalCenterTitle">Are You Sure Delete This Record ?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		  <p>If You Click On Delete Button Record Will Be Deleted. We Don't have Backup So Be Carefull.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="de_cancle" data-dismiss="modal">Cancle</button>
        <button type="button" class="btn btn-primary" id="deleterec">Delete Now</button>
      </div>
    </div>
  </div>
</div>	
	
<!-- End Delete Design Modal -->
	
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" type="text/javascript"></script>


<script type="text/javascript">
	
$(document).ready(function (){
	$('#tbl_rec').load('record.php');

	$('#search').keyup(function (){
		var search_data = $(this).val();
		$('#tbl_rec').load('record.php', {keyword:search_data});
	});

	//insert Record

	$('#ins_rec').on("submit", function(e){
		e.preventDefault();
		$.ajax({

			type:'POST',
			url:'insprocess.php',
			data:$(this).serialize(),
			success:function(vardata){

				var json = JSON.parse(vardata);

				if(json.status == 101){
					console.log(json.msg);
					$('#tbl_rec').load('record.php');
					$('#ins_rec').trigger('reset');
					$('#close_click').trigger('click');
				}
				else if(json.status == 102){
					$('#sc_msg').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 103){
					$('#msg_1').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 104){
					$('#msg_2').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 105){
					$('#msg_3').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 106){
					$('#msg_4').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 107){
					$('#msg_5').text(json.msg);
					console.log(json.msg);
				}
				else{
					console.log(json.msg);
				}

			}

		});

	});

	//select data

	$(document).on("click", "button.editdata", function(){
		$('#umsg_1').text("");
		$('#umsg_2').text("");
		$('#umsg_3').text("");
		$('#umsg_4').text("");
		$('#umsg_5').text("");
		$('#umsg_6').text("");
		$('#umsg_7').text("");
		var check_id = $(this).data('dataid');
		$.getJSON("updateprocess.php", {checkid : check_id}, function(json){
			if(json.status == 0){
				$('#upd_1').val(json.username);
				$('#upd_2').val(json.email);
				$('#upd_3').val(json.country);
				$('#upd_4').val(json.bod);
				$('#upd_7').val(check_id);
				if(json.gender == 'Male'){
					$('#upd_5').prop("checked", true);
				}
				else{
					$('#upd_6').prop("checked", true);
				}
			}
			else{
				console.log(json.msg);
			}
		});
	});

	//Update Record

	$('#updata').on("submit", function(e){
		e.preventDefault();

		$.ajax({

			type:'POST',
			url:'updateprocess2.php',
			data:$(this).serialize(),
			success:function(vardata){

				var json = JSON.parse(vardata);

				if(json.status == 101){
					console.log(json.msg);
					$('#tbl_rec').load('record.php');
					$('#ins_rec').trigger('reset');
					$('#up_cancle').trigger('click');
				}
				else if(json.status == 102){
					$('#umsg_6').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 103){
					$('#umsg_1').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 104){
					$('#umsg_2').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 105){
					$('#umsg_3').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 107){
					$('#umsg_4').text(json.msg);
					console.log(json.msg);
				}
				else if(json.status == 106){
					$('#umsg_5').text(json.msg);
					console.log(json.msg);
				}

				else{
					console.log(json.msg);
				}

			}

		});

	});

	//delete record

	var deleteid;

	$(document).on("click", "button.deletedata", function(){
		deleteid = $(this).data("dataid");
	});

	$('#deleterec').click(function (){
		$.ajax({
			type:'POST',
			url:'deleteprocess.php',
			data:{delete_id : deleteid},
			success:function(data){
				var json = JSON.parse(data);
				if(json.status == 0){
					$('#tbl_rec').load('record.php');
					$('#de_cancle').trigger("click");
					console.log(json.msg);
				}
				else{
					console.log(json.msg);
				}
			}
		});
	});


});

</script>

</body>
</html>
