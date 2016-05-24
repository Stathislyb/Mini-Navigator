<?

include("database.php");




function dijkstra_nav($original_loc,$destination){
	global $conn;
	$distance = array();
	$S = array();
	$prev = array();
	$index_S=1;
	$current=$original_loc;
	$repeat=1;
	
	$query = "SELECT * FROM alg_neighb";
	$results = mysql_query($query,$conn);
	$rows=array();
	while($row= mysql_fetch_array($results)) {
		// alg_neighb :
		// from  |  to  |  weight
		$rows[]=$row;
	}
	
	for ($i = 0; $i <= 36; $i++) {
		$distance[$i]=99999;
		$prev[$i]=-1;
	}
	
	$distance[$current]=0;
	$S[$index_S]=$current;
	$index_S++;
	
	while($repeat==1){
		foreach($rows as $row) {
			if($row['from']==$current){
				$new_weight = $row['weight']+$distance[$current];
				if($new_weight < $distance[$row['to']]){
					$distance[$row['to']]=$row['weight']+$distance[$current];
					$prev[$row['to']]=$current;
				}
			}
		}
		//echo "<br/>reach<br/>".$current. " ".$distance[8];
		$min=99998;
		$current=-1;
		for ($i = 1; $i <= 36; $i++) {
			if($distance[$i]<=$min){
				$ignore=0;
				for ($j = 1; $j < $index_S; $j++) {
					if($i==$S[$j]){
						$ignore=1;
					}
				}
				if($ignore==0){
					$min=$distance[$i];
					$current=$i;
				}
			}
		}
		
		if($current == -1 || $current ==$destination){
			$repeat=0;
		}else{
			$S[$index_S]=$current;
			$index_S++;
		}
		
	}
	
	if($current == -1){
		echo "-1";
	}else{
		if($destination < 10){
			echo "0";
		}
		echo $destination;	
		while($current != $original_loc){
			if($prev[$current] < 10){
				echo "0".$prev[$current];
			}else{
				echo $prev[$current];
			}	
		 $current=$prev[$current];
		}
	}
}



if(isset($_REQUEST['destination']) && isset($_REQUEST['original_loc'])){

	$original_loc=mysql_escape_string(filter_var($_REQUEST['original_loc'], FILTER_SANITIZE_NUMBER_INT));
	$destination=mysql_escape_string(filter_var($_REQUEST['destination'], FILTER_SANITIZE_NUMBER_INT));

	if($original_loc==$_REQUEST['original_loc'] && $destination==$_REQUEST['destination']){
		dijkstra_nav($original_loc,$destination);
	}

}



?>