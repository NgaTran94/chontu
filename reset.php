<?php
	
	define('DB_NAME', 'chontu');
	define('DB_USER', 'root');
	define('DB_PASSWORD', '');
	define('DB_HOST', 'localhost');
	
	$con = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if (mysqli_connect_errno()) {
		echo "ERROR: Failed to connect to MySQL: " . mysqli_connect_error() . "<br>";
		return;
	}
	
	// --- create a new database
	$stat = mysqli_query($con,"DROP DATABASE " . DB_NAME);
	if ($stat) {
		echo "OK   : Database " . DB_NAME . " is dropped!" . "<br>";
	}
	
	$stat = mysqli_query($con,"CREATE DATABASE " . DB_NAME);
	if ($stat) {
		echo "OK   : New database " . DB_NAME . " is created!" . "<br>";
	} else {
		echo "ERROR: Can not create new database " . DB_NAME . "!" . "<br>";
		mysqli_close($con);
		return;
	}
	
	$con = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	run_sql_file($con, 'buildData.sql');
	
	mysqli_close($con);
	
	function run_sql_file($con, $fileName) {
		
		$sql = file_get_contents($fileName);
		// Execute multi query
		if (mysqli_multi_query($con,$sql)) {
			echo "OK   : File '" . $fileName . "' is executed." . "<br>";
		} else {
			echo "ERROR: Can not execute file '" . $fileName . "'!" . "<br>";
		}		
	}

?>





