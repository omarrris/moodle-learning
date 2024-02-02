<?php 
    $examId = $_GET['id'];
    $selExam = $conn->query("SELECT * FROM exam_tbl WHERE ex_id='$examId' ")->fetch(PDO::FETCH_ASSOC);
?>

<div class="app-main__outer">
    <div class="app-main__inner">
        <div id="refreshData">
            <div class="col-md-12">
                <div class="app-page-title">
                    <div class="page-title-wrapper">
                        <div class="page-title-heading">
                            <div>
                                <?php echo $selExam['ex_title']; ?>
                                <div class="page-title-subheading">
                                    <?php echo $selExam['ex_description']; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
                <div class="row col-md-12">
                    <h1 class="text-primary">RESULT'S</h1>
                </div>

                <div class="row col-md-6 float-left">
                    <div class="main-card mb-3 card">
                        <div class="card-body">
                            <h5 class="card-title">Your Answer's</h5>
                            <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                                <?php 
                                    //  query to include topic name
                                    $selQuest = $conn->query("SELECT eqt.*, ea.exans_answer FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id WHERE eqt.exam_id='$examId' AND ea.axmne_id='$exmneId' AND ea.exans_status='new' ");
                                    $i = 1;
                                    while ($selQuestRow = $selQuest->fetch(PDO::FETCH_ASSOC)) {
                                        echo '<tr><td>';
                                        echo '<b><p>' . $i++ . '.) ' . $selQuestRow['exam_question'] . '</p></b>';
                                    
                                        // Display the topic name for incorrect answers
                                        if ($selQuestRow['exam_answer'] != $selQuestRow['exans_answer']) {
                                            echo '<label class="pl-4" style="color:red">Answer: ' . $selQuestRow['exans_answer'] . '</label>';
                                            // Convert topic name to the filename format
                                            $topicFilename = strtolower(str_replace(' ', '', $selQuestRow['topic_name'])) . '.php';
                                            echo '<br><a href="' . $topicFilename . '" class="pl-4">' . $selQuestRow['topic_name'] . '</a>';
                                        } else {
                                            echo '<label class="pl-4" style="color:green">Answer: ' . $selQuestRow['exans_answer'] . '</label>';
                                        }
                                    
                                        echo '</td></tr>';
                                    }
                                ?>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 float-left">
                    <div class="col-md-6 float-left">
                        <div class="card mb-3 widget-content bg-night-fade">
                            <div class="widget-content-wrapper text-white">
                                <div class="widget-content-left">
                                    <div class="widget-heading"><h5>Score</h5></div>
                                    <div class="widget-subheading" style="color: transparent;">/</div>
                                </div>
                                <div class="widget-content-right">
                                    <div class="widget-numbers text-white">
                                        <?php 
                                            $selScore = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id AND eqt.exam_answer = ea.exans_answer  WHERE ea.axmne_id='$exmneId' AND ea.exam_id='$examId' AND ea.exans_status='new' ");
                                            $score = $selScore->rowCount();
                                            $over  = $selExam['ex_questlimit_display'];
                                            echo '<span>' . $score . '</span> / ' . $over;
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 float-left">
                        <div class="card mb-3 widget-content bg-happy-green">
                            <div class="widget-content-wrapper text-white">
                                <div class="widget-content-left">
                                    <div class="widget-heading"><h5>Percentage</h5></div>
                                    <div class="widget-subheading" style="color: transparent;">/</div>
                                </div>
                                <div class="widget-content-right">
                                    <div class="widget-numbers text-white">
                                        <?php 
                                            $percentage = $score / $over * 100;
                                            echo '<span>' . number_format($percentage, 2) . '%</span>'; 
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
