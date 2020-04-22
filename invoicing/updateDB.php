<?php
	// check this file's MD5 to make sure it wasn't called before
	$prevMD5=@implode('', @file("./setup.md5"));
	$thisMD5=md5(@implode('', @file("./updateDB.php")));
	if($thisMD5==$prevMD5){
		$setupAlreadyRun=true;
	}else{
		// set up tables
		if(!isset($silent)){
			$silent=true;
		}

		// set up tables
		setupTable('clients', "create table if not exists `clients` ( `id` INT unsigned not null auto_increment , primary key (`id`), `name` VARCHAR(40) , `contact` VARCHAR(40) , `address` TEXT , `phone` VARCHAR(20) , `email` VARCHAR(80) , `website` VARCHAR(40) , `comments` TEXT ) CHARSET latin1", $silent);
		setupTable('invoices', "create table if not exists `invoices` ( `id` INT unsigned not null auto_increment , primary key (`id`), `code` VARCHAR(20) , unique(`code`), `status` VARCHAR(20) not null default 'Due' , `date_due` DATE , `client` INT unsigned , `client_contact` INT unsigned , `client_address` INT unsigned , `client_phone` INT unsigned , `client_email` INT unsigned , `client_website` INT unsigned , `client_comments` INT unsigned , `subtotal` DECIMAL(9,2) , `discount` DECIMAL(4,2) default '0' , `tax` DECIMAL(9,2) , `total` DECIMAL(9,2) default '0' , `comments` TEXT ) CHARSET latin1", $silent);
		setupIndexes('invoices', array('client'));
		setupTable('invoice_items', "create table if not exists `invoice_items` ( `id` INT unsigned not null auto_increment , primary key (`id`), `invoice` INT unsigned , `item` VARCHAR(200) , `unit_price` DECIMAL(9,2) default '0' , `qty` DECIMAL(9,3) default '1' , `tax` DECIMAL(4,2) default '0' , `price` DECIMAL(9,2) ) CHARSET latin1", $silent);
		setupIndexes('invoice_items', array('invoice'));


		// save MD5
		if($fp=@fopen("./setup.md5", "w")){
			fwrite($fp, $thisMD5);
			fclose($fp);
		}
	}


	function setupIndexes($tableName, $arrFields){
		if(!is_array($arrFields)){
			return false;
		}

		foreach($arrFields as $fieldName){
			if(!$res=@mysql_query("SHOW COLUMNS FROM `$tableName` like '$fieldName'")){
				continue;
			}
			if(!$row=@mysql_fetch_assoc($res)){
				continue;
			}
			if($row['Key']==''){
				@mysql_query("ALTER TABLE `$tableName` ADD INDEX `$fieldName` (`$fieldName`)");
			}
		}
	}


	function setupTable($tableName, $createSQL='', $silent=true, $arrAlter=''){
		global $Translation;
		ob_start();

		echo "<div style=\"padding: 5px; border-bottom:solid 1px silver; font-family: verdana, arial; font-size: 10px;\">";
		if($res=@mysql_query("select count(1) from `$tableName`")){
			if($row=@mysql_fetch_array($res)){
				echo str_replace("<TableName>", $tableName, str_replace("<NumRecords>", $row[0],$Translation["table exists"]));
				if(is_array($arrAlter)){
					echo '<br />';
					foreach($arrAlter as $alter){
						if($alter!=''){
							echo "$alter ... ";
							if(!@mysql_query($alter)){
								echo "<font color=red>".$Translation["failed"]."</font><br />";
								echo "<font color=red>".$Translation["mysql said"]." ".mysql_error()."</font><br />";
							}else{
								echo "<font color=green>".$Translation["ok"]."</font><br />";
							}
						}
					}
				}else{
					echo $Translation["table uptodate"];
				}
			}else{
				echo str_replace("<TableName>", $tableName, $Translation["couldnt count"]);
			}
		}else{
			echo str_replace("<TableName>", $tableName, $Translation["creating table"]);
			if(!@mysql_query($createSQL)){
				echo "<font color=red>".$Translation["failed"]."</font><br />";
				echo "<font color=red>".$Translation["mysql said"].mysql_error()."</font>";
			}else{
				echo "<font color=green>".$Translation["ok"]."</font>";
			}
		}

		echo "</div>";

		$out=ob_get_contents();
		ob_end_clean();
		if(!$silent){
			echo $out;
		}
	}
?>