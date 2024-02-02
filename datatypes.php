<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Data Types Material</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<?php

session_start(); 
include("conn.php");
include("query/selectData.php");
$topic = 'Data Types'; 
$materialPath = 'curriculum_docs/OOC_Lessons/DataTypes.pdf'; 
$quizLink = 'home.php?page=exam&id=32'; 
$examLink = 'home.php?page=exam&id=26';

?>
<?php include("conn.php"); ?>
<?php include("includes/header.php"); ?>      
<?php include("includes/ui-theme.php"); ?>
<div class="app-main">
<?php include("includes/sidebar.php"); ?>


<div class="topic-material">
    <h1><?php echo $topic; ?> Material</h1>
    <iframe src="<?php echo $materialPath; ?>" width="800px" height="800px"></iframe>
    <div class="links">
        <a href="<?php echo $quizLink; ?>">Take Quiz</a>
        <a href="<?php echo $examLink; ?>">Take Final Exam</a>
    </div>
</div>


<?php include("includes/footer.php"); ?>
<?php include("includes/modals.php"); ?>
</body>
</html>



