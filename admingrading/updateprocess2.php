<?php

include_once('config.php');
$user_fun = new Userfunction();

$json = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

	if(isset($_POST['los']) && isset($_POST['swa']) && isset($_POST['attend']) && isset($_POST['dat']) && isset($_POST['kow']) && isset($_POST['loyalty']) && isset($_POST['coop'])  && isset($_POST['effi'])  && isset($_POST['crtvt']) && isset($_POST['ta']) && isset($_POST['initia']) && isset($_POST['wtr']) && isset($_POST['att'])  && isset($_POST['ps']) && isset($_POST['com']) && isset($_POST['probs']) && isset($_POST['bear']) && isset($_POST['losw']) && isset($_POST['swaw']) && isset($_POST['attendw']) && isset($_POST['datw']) && isset($_POST['koww']) && isset($_POST['loyaltyw']) && isset($_POST['coopw'])  && isset($_POST['effiw'])  && isset($_POST['crtvtw']) && isset($_POST['taw']) && isset($_POST['initiaw']) && isset($_POST['wtrw']) && isset($_POST['attw'])  && isset($_POST['psw']) && isset($_POST['comw']) && isset($_POST['probsw']) && isset($_POST['bearw']) && isset($_POST['dataval'])  ){

		
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


		$losw = $user_fun->htmlvalidation($_POST['losw']);
		$swaw = $user_fun->htmlvalidation($_POST['swaw']);
		$attendw = $user_fun->htmlvalidation($_POST['attendw']);
		$datw = $user_fun->htmlvalidation($_POST['datw']);
		$koww = $user_fun->htmlvalidation($_POST['koww']);
		$loyaltyw = $user_fun->htmlvalidation($_POST['loyaltyw']);
		$coopw = $user_fun->htmlvalidation($_POST['coopw']);
		$effiw = $user_fun->htmlvalidation($_POST['effiw']);
		$crtvtw = $user_fun->htmlvalidation($_POST['crtvtw']);
		$taw = $user_fun->htmlvalidation($_POST['taw']);
		$initiaw = $user_fun->htmlvalidation($_POST['initiaw']);
		$wtrw = $user_fun->htmlvalidation($_POST['wtrw']);
		$attw = $user_fun->htmlvalidation($_POST['attw']);
		$psw = $user_fun->htmlvalidation($_POST['psw']);
		$comw = $user_fun->htmlvalidation($_POST['comw']);
		$probsw = $user_fun->htmlvalidation($_POST['probsw']);
		$bearw = $user_fun->htmlvalidation($_POST['bearw']);

		$update_id = $user_fun->htmlvalidation($_POST['dataval']);

		if((!preg_match('/^[ ]*$/', $los))  && (!preg_match('/^[ ]*$/', $swa)) && (!preg_match('/^[ ]*$/', $attend)) && (!preg_match('/^[ ]*$/', $dat)) && (!preg_match('/^[ ]*$/', $kow)) && (!preg_match('/^[ ]*$/', $loyalty)) && (!preg_match('/^[ ]*$/', $coop)) && (!preg_match('/^[ ]*$/', $effi)) && (!preg_match('/^[ ]*$/', $crtvt)) && (!preg_match('/^[ ]*$/', $ta)) && (!preg_match('/^[ ]*$/', $initia)) && (!preg_match('/^[ ]*$/', $wtr)) && (!preg_match('/^[ ]*$/', $att)) && (!preg_match('/^[ ]*$/', $ps)) && (!preg_match('/^[ ]*$/', $com)) && (!preg_match('/^[ ]*$/', $probs)) && (!preg_match('/^[ ]*$/', $bear)) && (!preg_match('/^[ ]*$/', $losw))  && (!preg_match('/^[ ]*$/', $swaw)) && (!preg_match('/^[ ]*$/', $attendw)) && (!preg_match('/^[ ]*$/', $datw)) && (!preg_match('/^[ ]*$/', $koww)) && (!preg_match('/^[ ]*$/', $loyaltyw)) && (!preg_match('/^[ ]*$/', $coopw)) && (!preg_match('/^[ ]*$/', $effiw)) && (!preg_match('/^[ ]*$/', $crtvtw)) && (!preg_match('/^[ ]*$/', $taw)) && (!preg_match('/^[ ]*$/', $initiaw)) && (!preg_match('/^[ ]*$/', $wtrw)) && (!preg_match('/^[ ]*$/', $attw)) && (!preg_match('/^[ ]*$/', $psw)) && (!preg_match('/^[ ]*$/', $comw)) && (!preg_match('/^[ ]*$/', $probsw)) && (!preg_match('/^[ ]*$/', $bearw))){

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
			$field_val['wtr'] = $wtr;
			$field_val['att'] = $att;
			$field_val['ps'] = $ps;
			$field_val['com'] = $com;
			$field_val['probs'] = $probs;
			$field_val['bear'] = $bear;
			$field_val['losw'] = $losw;
			$field_val['swaw'] = $swaw;
			$field_val['attendw'] = $attendw;
			$field_val['datw'] = $datw;
			$field_val['koww'] = $koww;
			$field_val['loyaltyw'] = $loyaltyw;
			$field_val['coopw'] = $coopw;
			$field_val['effiw'] = $effiw;
			$field_val['crtvtw'] = $crtvtw;
			$field_val['taw'] = $taw;
			$field_val['initiaw'] = $initiaw;			
			$field_val['wtrw'] = $wtrw;
			$field_val['attw'] = $attw;
			$field_val['psw'] = $psw;
			$field_val['comw'] = $comw;
			$field_val['probsw'] = $probsw;
			$field_val['bearw'] = $bearw;


			
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



			if(preg_match('/^[ ]*$/', $losw)){

				$json['status'] = 106;
				$json['msg'] = "Please Select Grade";

			}			
			if(preg_match('/^[ ]*$/', $swaw)){

				$json['status'] = 107;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $attendw)){

				$json['status'] = 108;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $datw)){

				$json['status'] = 109;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $koww)){

				$json['status'] = 110;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $loyaltyw)){

				$json['status'] = 111;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $coopw)){

				$json['status'] = 112;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $effiw)){

				$json['status'] = 113;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $crtvtw)){

				$json['status'] = 114;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $taw)){

				$json['status'] = 114;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $initiaw)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $wtrw)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $attw)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $psw)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $comw)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $probsw)){

				$json['status'] = 115;
				$json['msg'] = "Please Select Grade";

			}
			if(preg_match('/^[ ]*$/', $bearw)){

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