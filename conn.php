<?php 

$host = "localhost";
$user = "Omar";
$pass = "passworddb";
$db   = "seniorprojexamdbtopic";
$conn = null;

try {
  $conn = new PDO("mysql:host={$host};dbname={$db};",$user,$pass);
} catch (Exception $e) {
  
}


 ?>
