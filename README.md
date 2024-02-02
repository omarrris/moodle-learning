# moodle-learning

## Overview

This project focuses on the development of an adaptive exam module within the Moodle learning management system. The objective is to enhance personalized learning and assessment accuracy by tailoring exam difficulty and content based on users' previous results.

## Technologies Used

PHP: Utilized for server-side scripting to handle dynamic content generation.
JavaScript: Used to enhance the user interface and implement dynamic features.
HTML/CSS: Employed for creating and styling the web pages and user interface.
SQL: Managed the database operations and interactions.
Project Structure

## Files:
dashboard.php: Main dashboard displaying the user's progress and a dynamic pie chart.
piechart.php: Generates the dynamic pie chart using Chart.js library.
refreshChartData.php: Provides JSON data for updating the pie chart dynamically.
submitAnswerExe.php: Handles the submission of exam answers.
exam_attempt and exam_answers tables: Store information about exam attempts and answers.

## Installation:
Ensure a web server with PHP support is set up.
Import the provided SQL dump to create the necessary database and tables.
Place the project files in the web server directory.

## Usage:
Access the dashboard.php file through a web browser to view the adaptive exam module dashboard.
Interact with the dynamic pie chart, which reflects the user's exam progress.

## Important Notes
The project requires a properly configured database connection. Update conn.php with the correct database credentials.
Ensure the web server has the necessary permissions to read and write files.
