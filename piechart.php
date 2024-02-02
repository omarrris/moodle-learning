<?php
session_start();
include("conn.php");
include("query/selectData.php");
include("includes/header.php");      
include("includes/ui-theme.php");
?>
<div class="app-main">
    <?php include("includes/sidebar.php"); ?>

    <div class="app-main__outer">
        <div class="app-main__inner">
            <div class="app-page-title">
                <div class="page-title-wrapper">
                    <div class="page-title-heading">
                        <div>Progress Dashboard</div>
                    </div>
                </div>
            </div>

            <!-- Pie Chart Container -->
            <div class="chart-container" style="position: relative; height:75vh; width:80vw">
                <canvas id="myPieChart"></canvas>
            </div>
        </div>
    </div>

    <?php include("includes/footer.php"); ?>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>


<script>
// Initialize the chart with default values, which will be updated via AJAX.
var ctx = document.getElementById('myPieChart').getContext('2d');
var myPieChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ["Exams Taken", "Exams Remaining"],
        datasets: [{
            data: [0, 100], // These are dummy values that will be replaced by actual data from AJAX.
            backgroundColor: ['#4e73df', '#1cc88a'],
            hoverBackgroundColor: ['#2e59d9', '#17a673'],
            hoverBorderColor: "rgba(234, 236, 244, 1)",
        }],
    },
    options: {
        maintainAspectRatio: false,
        tooltips: {
            backgroundColor: "rgb(255,255,255)",
            bodyFontColor: "#858796",
            borderColor: '#dddfeb',
            borderWidth: 1,
            xPadding: 15,
            yPadding: 15,
            displayColors: false,
            caretPadding: 10,
        },
        legend: {
            display: true
        },
        cutoutPercentage: 80,
    },
});

// Function to refresh chart data from the server.
function refreshChartData() {
    $.ajax({
        url: 'chartdata.php', 
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            // Update the chart with the data from the server.
            myPieChart.data.datasets[0].data = [data.examsTaken, data.totalExams - data.examsTaken];
            myPieChart.update();
        },
        error: function(error) {
            // Handle errors here.
            console.log(error);
        }
    });
}

// Function called on page load and after a user takes an exam.
$(document).ready(function() {
    refreshChartData();
});
</script>
</body>
</html>

