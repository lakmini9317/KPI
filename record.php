<?php

include_once('gr_config.php');
$user_fun = new Userfunction();
$counter = 1;

if(isset($_POST['keyword']) && !empty(trim($_POST['keyword']))){

	$keyword = $user_fun->htmlvalidation($_POST['keyword']);

	$match_field['name'] = $keyword;
	$match_field['email'] = $keyword;
	$select = $user_fun->search("superadminduty_list", $match_field, "OR");

}
else{

	$select = $user_fun->select("superadminduty_list");

}


?>

				<table class="table" style="vertical-align: middle; text-align: left;">
				  <thead class="thead-dark">
					<tr>
					  	<th scope="col">#</th>
					  	<th scope="col">Emp No</th>
					  	<th scope="col">Name Of Employee</th>
						<th scope="col">Designation</th>
					  	<th scope="col">Salary Scale</th>
						<th scope="col">Division</th>
						<th scope="col">Date Joined</th>
						<th scope="col">Service Period</th>
						<th scope="col">Grade</th>
					</tr>
				  </thead>
				  <tbody>
				  	<?php if($select){ foreach($select as $se_data){ ?>
					<tr>
					  <th scope="row"><?php echo $counter; $counter++; ?></th>
					  	<td><?php echo $se_data['empcode']; ?></td>
					  	<td><?php echo $se_data['noc']; ?></td>
					  	<td><?php echo $se_data['desig']; ?></td>
						<td><?php echo $se_data['salaryscale']; ?></td>
						<td><?php echo $se_data['divisub']; ?></td>
						<td><?php echo $se_data['doj']; ?></td>
						<td><?php echo $se_data['serveduration']; ?></td>
						<td>
							<button type="button" class="btn btn-danger editdata" data-dataid="<?php echo $se_data['id']; ?>" data-toggle="modal" data-target="#updateModalCenter">Update</button>
							<!-- <button type="button" class="btn btn-danger deletedata" data-dataid="<?php echo $se_data['id']; ?>" data-toggle="modal" data-target="#deleteModalCenter">Delete</button> -->
						</td>
					</tr>
					<?php }}else{ echo "<tr><td colspan='7'><h2>No Result Found</h2></td></tr>"; } ?>
				  </tbody>
				</table>	