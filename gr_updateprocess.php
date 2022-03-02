<?php

include_once('gr_config.php');
$user_fun = new Userfunction();

$json = array();

if($_SERVER['REQUEST_METHOD'] == 'GET'){
	if(isset($_GET['checkid']) && $_GET['checkid'] > 0){

		$update_ch_id = $user_fun->htmlvalidation($_GET['checkid']);

		$condition0['id'] = $update_ch_id;
		$select_pre = $user_fun->select_assoc("superadminduty_list", $condition0);

		if($select_pre){

			$json['status'] = 0;
			$json['los'] = $select_pre['los'];
			$json['swa'] = $select_pre['swa'];
			$json['attend'] = $select_pre['attend'];
			$json['dat'] = $select_pre['dat'];
			$json['kow'] = $select_pre['kow'];
			$json['loyalty'] = $select_pre['loyalty'];
			$json['coop'] = $select_pre['coop'];
			$json['effi'] = $select_pre['effi'];
			$json['crtvt'] = $select_pre['crtvt'];
			$json['ta'] = $select_pre['ta'];
			$json['initia'] = $select_pre['initia'];
			$json['wtr'] = $select_pre['wtr'];
			$json['att'] = $select_pre['att'];
			$json['ps'] = $select_pre['ps'];
			$json['com'] = $select_pre['com'];
			$json['probs'] = $select_pre['probs'];
			$json['bear'] = $select_pre['bear'];
			$json['msg'] = "Success";
			
		}
		else{

			$json['status'] = 1;
			$json['los'] = "NULL";
			$json['swa'] = "NULL";
			$json['attend'] = "NULL";
			$json['dat'] = "NULL";
			$json['kow'] = "NULL";
			$json['loyalty'] = "NULL";
			$json['coop'] = "NULL";
			$json['effi'] = "NULL";
			$json['crtvt'] = "NULL";
			$json['ta'] = "NULL";
			$json['initia'] = "NULL";
			$json['wtr'] = "NULL";
			$json['att'] = "NULL";
			$json['ps'] = "NULL";
			$json['com'] = "NULL";
			$json['probs'] = "NULL";
			$json['bear'] = "NULL";
			$json['msg'] = "Fail";

		}

	}
	else{
			$json['status'] = 2;
			$json['los'] = "NULL";
			$json['swa'] = "NULL";
			$json['attend'] = "NULL";
			$json['dat'] = "NULL";
			$json['msg'] = "Invalid Values Passed";
	}
}
else{
			$json['status'] = 3;
			$json['los'] = "NULL";
			$json['swa'] = "NULL";
			$json['attend'] = "NULL";
			$json['dat'] = "NULL";
			$json['msg'] = "Invalid Method Found";
}


echo json_encode($json);

?>