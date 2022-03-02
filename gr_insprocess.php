<?php

include_once('gr_config.php');
$user_fun = new Userfunction();

$json = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

	if(isset($_POST['empcode']) && isset($_POST['noc']) && isset($_POST['email']) && isset($_POST['doj']) && isset($_POST['desig'])){

		$empcode = $user_fun->htmlvalidation($_POST['empcode']);
		$noc = $user_fun->htmlvalidation($_POST['noc']);
		$email = $user_fun->htmlvalidation($_POST['email']);
		$doj = $user_fun->htmlvalidation($_POST['doj']);
		$desig = $user_fun->htmlvalidation($_POST['desig']);
		$los = $user_fun->htmlvalidation($_POST['los']);


		if((!preg_match('/^[ ]*$/', $empcode)) && (!preg_match('/^[ ]*$/', $noc)) && (!preg_match('/^[ ]*$/', $email)) && (!preg_match('/^[ ]*$/', $doj)) && ($desig != NULL) && (!preg_match('/^[ ]*$/', $los))){

			$field_val['empcode'] = $empcode;
			$field_val['noc'] = $noc;
			$field_val['email'] = $email;
			$field_val['doj'] = $doj;
			$field_val['desig'] = $desig;
			$field_val['los'] = $los;	

			$insert = $user_fun->insert("superadminduty_list", $field_val);

			if($insert){
				$json['status'] = 101;
				$json['msg'] = "Data Successfully Inserted";
			}
			else{
				$json['status'] = 102;
				$json['msg'] = "Data Not Inserted";
			}

		}
		else{

			if(preg_match('/^[ ]*$/', $username)){

				$json['status'] = 103;
				$json['msg'] = "Please Enter Username";

			}
			if(preg_match('/^[ ]*$/', $email)){

				$json['status'] = 104;
				$json['msg'] = "Please Enter Email";

			}
			if(preg_match('/^[ ]*$/', $country)){

				$json['status'] = 105;
				$json['msg'] = "Please Select Country";

			}
			if(preg_match('/^[ ]*$/', $gender)){

				$json['status'] = 106;
				$json['msg'] = "Please Choice Gender";

			}
			if($bod == NULL){

				$json['status'] = 107;
				$json['msg'] = "Please Enter BOD";

			}

		}

	}
	else{

		$json['status'] = 108;
		$json['msg'] = "Invalid Values Passed";

	}

}
else{

	$json['status'] = 109;
	$json['msg'] = "Invalid Method Found";

}


echo json_encode($json);

?>