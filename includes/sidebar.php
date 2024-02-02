<div class="app-sidebar sidebar-shadow">
    <div class="app-header__logo">
        <div class="logo-src"></div>
        <div class="header__pane ml-auto">
            <div>
                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
        </div>
    </div>
    <div class="app-header__mobile-menu">
        <div>
            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </button>
        </div>
    </div>
    <div class="app-header__menu">
        <span>
            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                <span class="btn-icon-wrapper">
                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                </span>
            </button>
        </span>
    </div>    <div class="scrollbar-sidebar">
        <div class="app-sidebar__inner">
            <ul class="vertical-nav-menu">

         
                <li class="app-sidebar__heading">AVAILABLE EXAMS</li>
                <li>
                <a href="#">
                     <i class="metismenu-icon pe-7s-display2"></i>
                     All Exam's
                    <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                </a>
                <ul >
                    <?php 
                        
                        if($selExam->rowCount() > 0)
                        {
                            while ($selExamRow = $selExam->fetch(PDO::FETCH_ASSOC)) { ?>
                                 <li>
                                 <a href="#" id="startQuiz" data-id="<?php echo $selExamRow['ex_id']; ?>"  >
                                    <?php 
                                        $lenthOfTxt = strlen($selExamRow['ex_title']);
                                        if($lenthOfTxt >= 23)
                                        { ?>
                                            <?php echo substr($selExamRow['ex_title'], 0, 20);?>.....
                                        <?php }
                                        else
                                        {
                                            echo $selExamRow['ex_title'];
                                        }
                                     ?>
                                 </a>
                                 </li>
                            <?php }
                        }
                        else
                        { ?>
                            <a href="#">
                                <i class="metismenu-icon"></i>No Exam's @ the moment
                            </a>
                        <?php }
                     ?>


                </ul>
                </li>

                 <li class="app-sidebar__heading">TAKEN EXAM'S</li>
                <li>
                  <?php 
                    $selTakenExam = $conn->query("SELECT * FROM exam_tbl et INNER JOIN exam_attempt ea ON et.ex_id = ea.exam_id WHERE exmne_id='$exmneId' ORDER BY ea.examat_id  ");

                    if($selTakenExam->rowCount() > 0)
                    {
                        while ($selTakenExamRow = $selTakenExam->fetch(PDO::FETCH_ASSOC)) { ?>
                            <a href="home.php?page=result&id=<?php echo $selTakenExamRow['ex_id']; ?>" >
                               
                                <?php echo $selTakenExamRow['ex_title']; ?>
                            </a>
                        <?php }
                    }
                    else
                    { ?>
                        <a href="#" class="pl-3">You are not taking exam yet</a>
                    <?php }
                    
                   ?>

                    
                </li>
                
                <li class="app-sidebar__heading">LESSONS</li>
                <a href="#lessonsSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                All Lessons
                </a>
                    <ul class="collapse list-unstyled" id="lessonsSubmenu">
                    <!-- Hardcoded topics -->
                        <li><a href="cells.php">The Cell</a></li>
                        <li><a href="aminoacidsandproteins.php">Amino Acids and Proteins</a></li>
                        <li><a href="mitochondira.php">Mitochondria</a></li>
                        <li><a href="inegrationofconcepts.php">Integration of Concepts</a></li>
                        <li><a href="ribsomes.php">Ribosomes</a></li>
                        <li><a href="interpretaionofconcepts.php">Interpretation of Concepts</a></li>
                        <li><a href="nucleus.php">Nucleus</a></li>
                        <li><a href="dna.php">DNA</a></li>
                        <li><a href="enzymes.php">Enzymes</a></li>
                        <li><a href="dnaelements.php">DNA Elements</a></li>
                        <li><a href="chromosomes.php">Chromosomes</a></li>
                        <li><a href="decisions.php">Decisions</a></li>
                        <li><a href="datatypes.php">Data Types</a></li>
                        <li><a href="methods.php">Methods</a></li>
                        <li><a href="objects.php">Objects</a></li>
                        <li><a href="iterations.php">Iterations</a></li>
                        <li><a href="constructionofobjects.php">Construction of Objects</a></li>
                        <li><a href="constructionofmethods.php">Construction of Methods</a></li>
                        <li><a href="oopconcepts.php">OOP Concepts</a></li>




                    </ul>
                
                <li class="app-sidebar__heading">DASHBOARD</li>
                    <li>
                            <a href="piechart.php">
                            <i class="metismenu-icon pe-7s-graph1"></i>
                            Progress Dashboard
                            </a>
                    </li>
                
                
            </ul>
        </div>
    </div>
</div>  