<?php
session_start(); 
include("conn.php");
include("query/selectData.php");
$userId = $_SESSION['exmne_id'];

// Query to count exams taken by the user
$examsTakenStmt = $conn->prepare("
    SELECT COUNT(DISTINCT exam_id) AS exams_taken
    FROM exam_attempt
    WHERE exmne_id = exmne_id
");
$examsTakenStmt->execute(['exmne_id' => $userId]);
$examsTaken = $examsTakenStmt->fetchColumn();

// Query to count total exams available
$totalExamsStmt = $conn->prepare("SELECT COUNT(*) FROM exam_tbl");
$totalExamsStmt->execute();
$totalExams = $totalExamsStmt->fetchColumn();

// Output the data as JSON
header('Content-Type: application/json');
echo json_encode([
    'examsTaken' => $examsTaken,
    'totalExams' => $totalExams
]);
?>
