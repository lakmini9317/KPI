<?php

include_once('config.php');
$user_fun = new Userfunction();

$json = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

	if(isset($_POST['los']) && isset($_POST['swa']) && isset($_POST['attend']) && isset($_POST['dat']) && isset($_POST['kow']) && isset($_POST['loyalty']) && isset($_POST['coop'])  && isset($_POST['effi'])  && isset($_POST['crtvt']) && isset($_POST['ta']) && isset($_POST['initia']) && isset($_POST['wtr']) && isset($_POST['att'])  && isset($_POST['ps']) && isset($_POST['com']) && isset($_POST['probs']) && isset($_POST['bear'])  && isset($_POST['dataval'])  ){

		
		$los = $user_fun->htmlvalidation($_POST['los']);
		$swa = $user_fun->htmlvalidation($_POST['swa']);
		$attend = $user_fun->htmlvalidation($_POST['attend']);
		$dat = $user_fun->htmlvalidation($_POST['dat']);
		$kow = $user_fun->htmlvalidation($_POST['kow']);
		$loyalty = $user_fun->htmlvalidation($_POST['loyalty']);
		$coop = $user_fun->htmlvalidation($_POST['coop']);
		$effi = $user_fun->htmlvalidation($_POST['effi']);
		$crtvt = $user_fun->htmlvalidation($_POST['crtvt']);
		$ta = $user_fun->htmlvalidation($_POST['ta']);
		$initia = $user_fun->htmlvalidation($_POST['initia']);
		$wtr = $user_fun->htmlvalidation($_POST['wtr']);
		$att = $user_fun->htmlvalidation($_POST['att']);
		$ps = $user_fun->htmlvalidation($_POST['ps']);
		$com = $user_fun->htmlvalidation($_POST['com']);
		$probs = $user_fun->htmlvalidation($_POST['probs']);
		$bear = $user_fun->htmlvalidation($_POST['bear']);
		$update_id = $user_fun->htmlvalidation($_POST['dataval']);

		if((!preg_match('/^[ ]*$/', $los))  && (!preg_match('/^[ ]*$/', $swa)) && (!preg_match('/^[ ]*$/', $attend)) && (!preg_match('/^[ ]*$/', $dat)) && (!preg_match('/^[ ]*$/', $kow)) && (!preg_match('/^[ ]*$/', $loyalty)) && (!preg_match('/^[ ]*$/', $coop)) && (!preg_match('/^[ ]*$/', $effi)) && (!preg_match('/^[ ]*$/', $crtvt)) && (!preg_match('/^[ ]*$/', $ta)) && (!preg_match('/^[ ]*$/', $initia)) && (!preg_match('/^[ ]*$/', $wtr)) && (!preg_match('/^[ ]*$/', $att)) && (!preg_match('/^[ ]*$/', $ps)) && (!preg_match('/^[ ]*$/', $com)) && (!preg_match('/^[ ]*$/', $probs)) && (!preg_match('/^[ ]*$/', $bear)) ){

			$condition['id'] = $update_id;

			$field_val['los'] = $los;
			$field_val['swa'] = $swa;
			$field_val['attend'] = $attend;
			$field_val['dat'] = $dat;
			$field_val['kow'] = $kow;
			$field_val['loyalty'] = $loyalty;
			$field_val['coop'] = $coop;
			$field_val['effi'] = $effi;
			$field_val['crtvt'] = $crtvt;
			$field_val['ta'] = $ta;
			$field_val['initia'] = $initia;			
			$field_val['wtr'] = $att;
			$field_val['att'] = $att;
			$field_val['ps'] = $ps;
			$field_val['com'] = $com;
			$field_val['probs'] = $com;
			$field_val['bear'] = $bear;


			
			$update = $user_fun->update("superadminduty_list", $field_val, $condition);

			if($update){
				$json['status'] = 101;
				$json['msg'] = "Data Successfully Updated";
			}
			else{
				$json['status'] = 102;
				$json['msg'] = "Data Not Updated";
			}

		}
		else{
			
			if(preg_match('/^[ ]*$/', $los)){

				$json['status'] = 106;
				$json['msg'] = "Please Select Grade";

			}			
			if(preg_match('/^[ ]*$/', $swa)){

				$json['status'] = 107;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $attend)){

				$json['status'] = 108;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $dat)){

				$json['status'] = 109;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $kow)){

				$json['status'] = 110;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $loyalty)){

				$json['status'] = 111;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $coop)){

				$json['status'] = 112;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $effi)){

				$json['status'] = 113;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $crtvt)){

				$json['status'] = 114;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $ta)){

				$json['status'] = 114;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $initia)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $wtr)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $att)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $ps)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $com)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $probs)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $bear)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

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