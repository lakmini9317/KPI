<?php

include_once('config.php');
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
			
			$json['losw'] = $select_pre['losw'];
			$json['swaw'] = $select_pre['swaw'];
			$json['attendw'] = $select_pre['attendw'];
			$json['datw'] = $select_pre['datw'];
			$json['koww'] = $select_pre['koww'];
			$json['loyaltyw'] = $select_pre['loyaltyw'];
			$json['coopw'] = $select_pre['coopw'];
			$json['effiw'] = $select_pre['effiw'];
			$json['crtvtw'] = $select_pre['crtvtw'];
			$json['taw'] = $select_pre['taw'];
			$json['initiaw'] = $select_pre['initiaw'];
			$json['wtrw'] = $select_pre['wtrw'];
			$json['attw'] = $select_pre['attw'];
			$json['psw'] = $select_pre['psw'];
			$json['comw'] = $select_pre['comw'];
			$json['probsw'] = $select_pre['probsw'];
			$json['bearw'] = $select_pre['bearw'];
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

			$json['losw'] = "NULL";
			$json['swaw'] = "NULL";
			$json['attendw'] = "NULL";
			$json['datw'] = "NULL";
			$json['koww'] = "NULL";
			$json['loyaltyw'] = "NULL";
			$json['coopw'] = "NULL";
			$json['effiw'] = "NULL";
			$json['crtvtw'] = "NULL";
			$json['taw'] = "NULL";
			$json['initiaw'] = "NULL";
			$json['wtrw'] = "NULL";
			$json['attw'] = "NULL";
			$json['psw'] = "NULL";
			$json['comw'] = "NULL";
			$json['probsw'] = "NULL";
			$json['bearw'] = "NULL";
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