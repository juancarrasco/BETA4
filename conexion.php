<?php

$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=sigamus", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }






public function insertData($name,$email,$mobile,$address,$table){

	 

	 $sql = "INSERT INTO $table SET name=:name,email=:email,mobile=:mobile,address=:address";

	 $q = $this->conn->prepare($sql);

	 $q->execute(array(':name'=>$name,':email'=>$email,

	':mobile'=>$mobile,':address'=>$address));

	 return true;

	 }



?>