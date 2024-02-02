-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 20, 2023 at 04:56 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seniorprojexamdbtopic`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(26, 'NYIT', '2023-09-24 23:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(4, 'Omar Sheikh', '26', 'male', '2001-05-01', 'Senior', 'osheik02@nyit.edu', 'password', 'active'),
(5, 'Martha Leon-Alvarez', '26', 'female', '0000-00-00', 'Senior', 'mleonalv@nyit.edu', 'password', 'active'),
(6, 'Jheel Pratik Shah', '26', 'female', '0000-00-00', 'Senior', 'jshah56@nyit.edu', 'password', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(178, 4, 12, 26, 'Substrate', 'new', '2023-12-19 17:44:53'),
(179, 4, 12, 12, 'TRUE', 'new', '2023-12-19 17:44:53'),
(180, 4, 12, 3, 'Nucleic Acids', 'new', '2023-12-19 17:44:53'),
(181, 4, 12, 33, 'C', 'new', '2023-12-19 17:44:53'),
(182, 4, 12, 23, 'Thinking', 'new', '2023-12-19 17:44:53'),
(183, 4, 12, 27, 'Ammonia', 'new', '2023-12-19 17:44:53'),
(184, 4, 12, 6, 'The envelope of the cell', 'new', '2023-12-19 17:44:53'),
(185, 4, 12, 43, 'Short strands of RNA', 'new', '2023-12-19 17:44:53'),
(186, 4, 12, 34, 'Chromosome', 'new', '2023-12-19 17:44:53'),
(187, 4, 12, 17, 'FALSE', 'new', '2023-12-19 17:44:53'),
(188, 4, 12, 13, 'To protect the cell', 'new', '2023-12-19 17:44:53'),
(189, 4, 12, 36, 'Chromosomes', 'new', '2023-12-19 17:44:53'),
(190, 4, 12, 8, 'TRUE', 'new', '2023-12-19 17:44:53'),
(191, 4, 12, 45, 'Lysosomes', 'new', '2023-12-19 17:44:53'),
(192, 4, 12, 2, 'Lysosomes', 'new', '2023-12-19 17:44:53'),
(193, 4, 12, 4, 'TRUE', 'new', '2023-12-19 17:44:53'),
(194, 4, 12, 20, 'To protect the cell', 'new', '2023-12-19 17:44:53'),
(195, 4, 12, 28, 'Mitochondria', 'new', '2023-12-19 17:44:53'),
(196, 4, 12, 21, 'ADP', 'new', '2023-12-19 17:44:53'),
(197, 4, 12, 5, 'Mitochondria', 'new', '2023-12-19 17:44:53'),
(198, 4, 12, 18, '3', 'new', '2023-12-19 17:44:53'),
(199, 4, 12, 42, 'FALSE', 'new', '2023-12-19 17:44:53'),
(200, 4, 12, 31, 'Double nitrogen argon', 'new', '2023-12-19 17:44:53'),
(201, 4, 12, 40, 'Carbon', 'new', '2023-12-19 17:44:53'),
(202, 4, 12, 19, 'TRUE', 'new', '2023-12-19 17:44:53'),
(203, 4, 12, 30, 'DNA', 'new', '2023-12-19 17:44:53'),
(204, 4, 12, 7, 'Only animal cells', 'new', '2023-12-19 17:44:53'),
(205, 4, 12, 44, 'Proteins are essential for survival', 'new', '2023-12-19 17:44:53'),
(206, 4, 12, 11, 'Diffraction', 'new', '2023-12-19 17:44:53'),
(207, 4, 12, 25, 'Activator', 'new', '2023-12-19 17:44:53'),
(208, 4, 12, 15, 'Size', 'new', '2023-12-19 17:44:53'),
(209, 4, 12, 32, 'Two', 'new', '2023-12-19 17:44:53'),
(210, 4, 12, 9, '0', 'new', '2023-12-19 17:44:53'),
(211, 4, 12, 29, 'FALSE', 'new', '2023-12-19 17:44:53'),
(212, 4, 12, 35, 'Bases', 'new', '2023-12-19 17:44:53'),
(213, 4, 12, 46, 'Carry essential nutrients around our bodies', 'new', '2023-12-19 17:44:53'),
(214, 4, 12, 10, 'DNA stores the cells genetic information.', 'new', '2023-12-19 17:44:53'),
(215, 4, 12, 24, 'Cell Metabolism', 'new', '2023-12-19 17:44:53'),
(216, 4, 12, 1, 'Stomach', 'new', '2023-12-19 17:44:53'),
(217, 4, 12, 16, 'tRNA', 'new', '2023-12-19 17:44:53'),
(218, 4, 12, 14, '2', 'new', '2023-12-19 17:44:53'),
(219, 4, 12, 39, 'The electron microscope', 'new', '2023-12-19 17:44:53'),
(220, 4, 12, 22, 'Nitrogen', 'new', '2023-12-19 17:44:53'),
(221, 4, 12, 47, 'Structural', 'new', '2023-12-19 17:44:53'),
(222, 4, 12, 37, 'Covalent', 'new', '2023-12-19 17:44:53'),
(223, 4, 12, 38, 'Chromosome', 'new', '2023-12-19 17:44:53'),
(224, 4, 12, 41, '12', 'new', '2023-12-19 17:44:53'),
(225, 4, 16, 81, 'It is a special molecule', 'new', '2023-12-19 17:45:38'),
(226, 4, 16, 85, 'They are proteins', 'new', '2023-12-19 17:45:38'),
(227, 4, 16, 79, 'Organic molecules', 'new', '2023-12-19 17:45:38'),
(228, 4, 16, 83, 'Copy of DNA', 'new', '2023-12-19 17:45:38'),
(229, 4, 16, 82, 'Specific pocket on the enzyme surface', 'new', '2023-12-19 17:45:38'),
(230, 4, 16, 80, 'Copy of DNA', 'new', '2023-12-19 17:45:38'),
(231, 4, 16, 84, 'It is a specific pocket on the enzyme surface', 'new', '2023-12-19 17:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `topic_name` varchar(1000) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `topic_name`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(1, 12, 'Inegration of Concepts', 'The nucleus is to the cell as the __________ is to the human body.', 'Stomach', 'Lungs', 'Eyes', 'Brain', 'Brain', 'active'),
(2, 12, 'Cells', 'The skin is to the human body as the ______ is to the cell.', 'Membrane', 'Lysosomes', 'Ribosomes', 'Nucleus', 'Membrane', 'active'),
(3, 12, 'Ribosomes', 'Ribosomes make what type of organic substances?', 'Carbohydrates', 'Proteins', 'Fats', 'Nucleic Acids', 'Proteins', 'active'),
(4, 12, 'Interpretaion of Concepts', 'True or False: The cell membrane allows ALL substances into the cell.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'TRUE', 'active'),
(5, 12, 'Cells', 'Which of the following is where the cell gets its energy?', 'Membrane', 'Lysosomes', 'Ribosomes', 'Mitochondria', 'Mitochondria', 'active'),
(6, 12, 'Cells', 'The nucleus, ribosomes, and lysosomes can be classified as:', 'Bacteria', 'The envelope of the cell', 'Organelles', 'The cytoplasmic region', 'Organelles', 'active'),
(7, 12, 'Nucleus', 'Eukaryotic Cells are defined as:', 'Only animal cells', 'Only plant cells', 'Having a nucleus', 'Not having a nucleus', 'Having a nucleus', 'active'),
(8, 12, 'Nucleus', 'True or False: The nucleus is not an organelle.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'FALSE', 'active'),
(9, 12, 'Inegration of Concepts', 'Most Eukaryotic cells have how many nuclei?', '0', '1', '2', '3', '1', 'active'),
(10, 12, 'DNA', 'Which of the following is true about DNA?', 'DNA stores the cells genetic information.', 'DNA stands for deoxyribonucleic acid.', 'DNA is organized into chromosomes before cell division.', 'DNA is composed of genes which carry hereditary characteristics like eye color.', 'DNA stands for deoxyribonucleic acid.', 'active'),
(11, 12, 'Interpretaion of Concepts', 'Which function uses RNA to configure amino acids?', 'DNA replication', 'Diffraction', 'Transcription', 'Translation', 'Translation', 'active'),
(12, 12, 'Nucleus', 'True or False: The nucleus can make exact copies of its DNA.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'TRUE', 'active'),
(13, 12, 'Ribosomes', 'What is the Ribosomes job?', 'To make energy', 'To protect the cell', 'To allow certain molecules into the cell', 'To make proteins', 'To make proteins', 'active'),
(14, 12, 'Ribosomes', ' How many subunits is the ribosome made up of?', '1', '2', '3', '6', '2', 'active'),
(15, 12, 'Ribosomes', 'The components of the ribosome are distinguished by:', 'Size', 'Shape', 'Color', 'Location', 'Size', 'active'),
(16, 12, 'Ribosomes', 'What is responsible for telling a ribosome how to make a protein?', 'mRNA', 'tRNA', 'msgRNA', 'trRNA', 'mRNA', 'active'),
(17, 12, 'Ribosomes', 'True or False: Ribosomes are responsible for transcription.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'FALSE', 'active'),
(18, 12, 'Interpretaion of Concepts', 'How many letters on the RNA represent a new amino acid?', '1', '2', '3', '6', '3', 'active'),
(19, 12, 'Inegration of Concepts', 'True or False: RNA has a stop code telling the ribosome that the protein is ready.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'TRUE', 'active'),
(20, 12, 'Cells', 'What is the Mitochondrias job?', 'To make energy', 'To protect the cell', 'To allow certain molecules into the cell', 'To make proteins', 'To make energy', 'active'),
(21, 12, 'Mitochondira', 'What molecule do mitochondria use to make energy?', 'DNA', 'RNA', 'ATP', 'ADP', 'ATP', 'active'),
(22, 12, 'Mitochondira', 'The mitochondria take food particles and combine them with:', 'Carbon Dioxide', 'Nitrogen', 'Water', 'Oxygen', 'Oxygen', 'active'),
(23, 12, 'Mitochondira', 'Another word for cellular respiration is:', 'Moving', 'Sweating', 'Thinking', 'Breathing', 'Breathing', 'active'),
(24, 12, 'Cells', 'Which of the following is NOT an alternative function of the mitochondria?', 'Cell Metabolism', 'Heat Production', 'Translation', 'Calcium Concentration Control', 'Translation', 'active'),
(25, 12, 'Enzymes', 'The new molecules or substances released by the enzyme are called:', 'Substrate', 'Activator', 'Active Sight', 'Product', 'Product', 'active'),
(26, 12, 'Enzymes', 'What is the name of the molecule or substance that the enzyme reacts with?', 'Substrate', 'Activator', 'Active Sight', 'Inhibitor', 'Substrate', 'active'),
(27, 12, 'DNA', 'Chromosomes are made from protein and what another molecule?', 'Ammonia', 'ATP', 'DNA', 'Carbon dioxide', 'DNA', 'active'),
(28, 12, 'Nucleus', 'Chromosomes are found inside what structure in the cell?', 'Membrane', 'Mitochondria', 'Ribosome', 'Nucleus', 'Nucleus', 'active'),
(29, 12, 'Nucleus', 'True or False: Every chromosome carries exactly the same information.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'FALSE', 'active'),
(30, 12, 'DNA', 'What is the name for the sequence of a gene that determines a specific trait like brown eyes?', 'Allele', 'DNA', 'Nucleus', 'RNA', 'Allele', 'active'),
(31, 12, 'Nucleus', 'What does DNA stand for?', 'Double nitrogen argon', 'Dioxide nickel acid', 'Deoxyribonucleic acid', 'Do not ask', 'Deoxyribonucleic acid', 'active'),
(32, 12, 'DNA', 'How many types of nucleotides are there in DNA?', 'One', 'Two', 'Three', 'Four', 'Four', 'active'),
(33, 12, 'DNA', 'Which of the following is not a letter that represents a nucleotide in DNA?', 'A', 'T', 'C', 'R', 'R', 'active'),
(34, 12, 'DNA', 'Three letters of DNA nucleotides make up a word called a ____________.', 'Codon', 'Chromosome', 'Cell', 'Gene', 'Codon', 'active'),
(35, 12, 'DNA', 'What is another name for the nucleotides in DNA?', 'Chromosomes', 'Bases', 'Genes', 'Backbone', 'Bases', 'active'),
(36, 12, 'DNA', 'Phosphate and deoxyribose make up what part of DNA?', 'Chromosomes', 'Bases', 'Genes', 'Backbone', 'Backbone', 'active'),
(37, 12, 'DNA', 'What is the shape of a DNA molecule called?', 'Octahedral', 'Covalent', 'Double helix', 'Triple Triangle', 'Double helix', 'active'),
(38, 12, 'DNA', 'Most genes within DNA hold instructions for the cell to make a specific ___________.', 'Carbohydrate', 'Chromosome', 'Protein', 'Starch', 'Starch', 'active'),
(39, 12, 'DNA', 'What did Francis Crick and James Watson discover?', 'That traits were inherited from an organisms parents', 'The electron microscope', 'The chromosome in the human cell', 'The structure of the DNA molecule', 'The structure of the DNA molecule', 'active'),
(40, 12, 'Amino Acids and Proteins', 'Which of the following is NOT one of the four main elements of an amino acid?', 'Hydrogen', 'Carbon', 'Nitrogen', 'Calcium', 'Calcium', 'active'),
(41, 12, 'Amino Acids and Proteins', 'How many different kinds of amino acids are in our bodies?', '4', '12', '20', '180', '20', 'active'),
(42, 12, 'Amino Acids and Proteins', 'True or False: ALL amino acids in our bodies come from food.', 'TRUE', 'FALSE', 'DONT USE', 'DONT USE', 'FALSE', 'active'),
(43, 12, 'Amino Acids and Proteins', 'Proteins are made up of:', 'Short strands of RNA', 'Short strands of amino acids', 'Long chains of RNA', 'Long chains of amino acids', 'Long chains of amino acids', 'active'),
(44, 12, 'Amino Acids and Proteins', 'Why are proteins important?', 'Proteins are essential for survival', 'There are thousands of different proteins in the human body', 'Proteins provide all sorts of functions', 'All of the Above', 'All of the Above', 'active'),
(45, 12, 'Nucleus', 'Where are the instructions for how to make a protein located in a cell?', 'Membrane', 'Lysosomes', 'Ribosomes', 'Nucleus', 'Nucleus', 'active'),
(46, 12, 'Enzymes', 'Catalysts perform which of the following functions?', 'Carry essential nutrients around our bodies', 'Assist in chemical reactions', 'Convert DNA into RNA', 'Provide structure for our bodies', 'Assist in chemical reactions', 'active'),
(47, 12, 'Amino Acids and Proteins', 'The protein hemoglobin, which carries oxygen in our red blood cells, is an example of what type of protein?', 'Structural', 'Defensive', 'Transport', 'Catalysts', 'Transport', 'active'),
(48, 13, 'None', 'What is a cell?', 'The eukaryotic cell', 'The unit of life', 'A specific pocket on the enzyme surface', 'Long chains of amino acids', 'The unit of life', 'active'),
(49, 13, 'None', 'What are the two main categories of cells?', 'Organic molecules and proteins', 'DNA and protein', 'The prokaryotic and eukaryotic', 'In the mitochondria', 'The prokaryotic and eukaryotic', 'active'),
(50, 13, 'None', 'What cell type contains no nucleus?', 'The eukaryotic cell', 'The prokaryotic cell', 'A specific pocket on the enzyme surface', 'Long chains of amino acids', 'The prokaryotic cell\n', 'active'),
(51, 13, 'None', 'A particular type of cell has a nucleus; state what this particular cell houses?', 'Copy of DNA', 'Proteins', 'Long chains of amino acids', 'Organic molecules', 'Copy of DNA', 'active'),
(52, 13, 'None', 'What is a membrane?', 'The eukaryotic cell', 'The outer boundary of a cell', 'To keep certain substances in and out', 'Long chains of amino acids', 'The outer boundary of a cell\n', 'active'),
(53, 13, 'None', 'What is the membrane responsible for?', 'Making proteins', 'Providing things the cell requires to function', 'Encapsulating or protecting the internal cell structure', 'To keep certain substances in and out', 'To keep certain substances in and out\n', 'active'),
(54, 13, 'None', 'Where does the cell get its energy from?', 'From the mitochondria', 'Copy of DNA', 'Specific pocket on the enzyme surface', 'Organic molecules', 'From the mitochondria\n', 'active'),
(55, 13, 'None', 'What happens when digested food reacts with oxygen in the mitochondria?', 'The eukaryotic cell', 'Energy for the cell is being produced', 'Specific pocket on the enzyme surface', 'Proteins', 'Energy for the cell is being produced', 'active'),
(56, 13, 'None', 'What do ribosomes do?', 'They are proteins', 'To get rid of waste and other unwanted substances that get into the cell', 'They make different things for the cell to function', 'Long chains of amino acids', 'They make different things for the cell to function', 'active'),
(57, 13, 'None', 'What is the brain of the cell?', 'The eukaryotic cell', 'The nucleus', 'Specific pocket on the enzyme surface', 'Organic molecules', 'The nucleus', 'active'),
(58, 13, 'None', 'Who instructs the cell what to do next?', 'Long chains of amino acids', 'The Chromosomes', 'Specific pocket on the enzyme surface', 'Organic molecules', 'The Chromosomes', 'active'),
(59, 13, 'None', 'What is the liquid that cytoplasm contains mostly of?', 'Water', 'Copy of DNA', 'Specific pocket on the enzyme surface', 'Organic molecules', 'Water', 'active'),
(60, 13, 'None', 'What floats inside the cytoplasm?', 'The components of the cell', 'Proteins', 'Specific pocket on the enzyme surface', 'Long chains of amino acids', 'The components of the cell', 'active'),
(61, 13, 'None', 'What does lysosome do?', 'They are proteins', 'To get rid of waste and other unwanted substances that get into the cell', 'Specific pocket on the enzyme surface', 'Organic molecules', 'To get rid of waste and other unwanted substances that get into the cell', 'active'),
(62, 13, 'None', 'Give three examples of organelles?', 'The nucleus, ribosomes, and lysosomes', 'The eukaryotic cell', 'Long chains of amino acids', 'Copy of DNA', 'The nucleus, ribosomes, and lysosomes', 'active'),
(63, 14, 'None', 'What type of cell has a nucleus?', 'The eukaryotic cell', 'The prokaryotic cell', 'A specific pocket on the enzyme surface', 'Organic molecules', 'The eukaryotic cell', 'active'),
(64, 14, 'None', 'What is a nucleus of a cell?', 'It is a specific pocket on the enzyme surface', 'It is the main control center or the brain of the cell', 'It is a long chain of amino acids', 'It is organic molecules', 'It is the main control center or the brain of the cell', 'active'),
(65, 14, 'None', 'What is the nucleus surrounded by?', 'By the membrane', 'Copy of DNA', 'Specific pocket on the enzyme surface', 'Organic molecules', 'By the membrane', 'active'),
(66, 14, 'None', 'Why is the nucleus surrounded?', 'For protection purposes', 'To make proteins', 'A specific pocket on the enzyme surface', 'Long chains of amino acids', 'For protection purposes', 'active'),
(67, 14, 'None', 'What fluid does the nucleus float in?', 'Mostly water', 'To get rid of waste and other unwanted substances that get into the cell', 'Specific pocket on the enzyme surface', 'Organic molecules', 'Mostly water', 'active'),
(68, 15, 'None', 'What year was ribosomes discovered?', '1954', '1974', 'A specific pocket on the enzyme surface', 'Organic molecules', '1974', 'active'),
(69, 15, 'None', 'What is RNA?', 'A specific pocket on the enzyme surface', 'Copy of DNA', 'It is a special molecule', 'Organic molecules', 'It is a special molecule', 'active'),
(70, 15, 'None', 'What is ribosome responsible for?', 'To keep certain substances in and out', 'To provide things the cell requires to function', 'To get rid of waste and other unwanted substances that get into the cell', 'Long chains of amino acids', 'To provide things the cell requires to function', 'active'),
(71, 15, 'None', 'What is the function of a ribosome?', 'To make proteins that perform various functions for the cell operations', 'The outer boundary of a cell', 'Specific pocket on the enzyme surface', 'Organic molecules', 'To make proteins that perform various functions for the cell operations', 'active'),
(72, 15, 'None', 'Where is the ribosome located?', 'In the cytoplasm', 'From the mitochondria', 'Specific pocket on the enzyme surface', 'Long chains of amino acids', 'In the cytoplasm', 'active'),
(73, 15, 'None', 'What are the two main components ribosome is made from?', 'Large subunit and small subunit', 'Copy of DNA', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Large subunit and small subunit', 'active'),
(74, 15, 'None', 'Describe what happens when ribosomes are ready to make protein?', 'The two units come together', 'They are proteins', 'Specific pocket on the enzyme surface', 'Organic molecules', 'The two units come together', 'active'),
(75, 15, 'None', 'What do the two units consist of?', 'Strands of RNA and various proteins', 'To get rid of waste and other unwanted substances that get into the cell', 'A specific pocket on the enzyme surface', 'Long chains of amino acids', 'Strands of RNA and various proteins', 'active'),
(76, 15, 'None', 'What does the large subunit do?', 'It contains the site where the new bonds are made when creating proteins', 'It is a specific pocket on the enzyme surface', 'To keep certain substances in and out', 'Long chains of amino acids', 'It contains the site where the new bonds are made when creating proteins', 'active'),
(77, 15, 'None', 'What does the small subunit do?', 'Provides the flow of information during protein synthesis', 'It is a specific pocket on the enzyme surface', 'Specific pocket on the enzyme surface', 'Organic molecules', 'Provides the flow of information during protein synthesis', 'active'),
(78, 15, 'None', 'Who is responsible for the translation process?', 'The nucleus', 'The ribosome', 'Specific pocket on the enzyme surface', 'Organic molecules', 'The ribosome', 'active'),
(79, 16, 'None', 'What is a mitochondrion?', 'Part of cells that takes food and makes energy for the cell to use', 'Copy of DNA', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Part of cells that takes food and makes energy for the cell to use', 'active'),
(80, 16, 'None', 'What does the mitochondria use to make energy for the cell?', 'A specific pocket on the enzyme surface', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'It is a special molecule', 'active'),
(81, 16, 'None', 'What is Adenosine Triphosphate, ATP?', 'It is a special molecule', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'It is a special molecule', 'active'),
(82, 16, 'None', 'Where is ATP made in?', 'In the Mitochondria', 'The eukaryotic cell', 'Specific pocket on the enzyme surface', 'Organic molecules', 'In the Mitochondria', 'active'),
(83, 16, 'None', 'How does mitochondria produce energy?', 'By taking food molecules in the form of carbohydrates and combine them with oxygen', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'By taking food molecules in the form of carbohydrates and combine them with oxygen', 'active'),
(84, 16, 'None', 'How is ATP created?', 'It is a specific pocket on the enzyme surface', 'By taking food molecules in the form of carbohydrates and combine them with oxygen', 'It is a special molecule', 'Organic molecules', 'By taking food molecules in the form of carbohydrates and combine them with oxygen', 'active'),
(85, 16, 'None', 'What are enzymes?', 'They are proteins', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'They are proteins', 'active'),
(86, 16, 'None', 'What do enzymes do?', 'They produce chemical reactions', 'The nucleus', 'Copy of DNA', 'Organic molecules', 'They produce chemical reactions', 'active'),
(87, 17, 'None', 'What are enzymes?', 'Specific types of proteins', 'Copy of DNA', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Specific types of proteins', 'active'),
(88, 17, 'None', 'What are enzymes made from?', 'From strings of amino acids', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'From strings of amino acids', 'active'),
(89, 17, 'None', 'How is the function of an enzyme determined?', 'Via a sequence of amino acids, types of amino acids, and shape of the string', 'The nucleus', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Via a sequence of amino acids, types of amino acids, and shape of the string', 'active'),
(90, 17, 'None', 'How do enzymes act?', 'They act as catalysts to help speed up chemical reactions', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'They act as catalysts to help speed up chemical reactions', 'active'),
(91, 17, 'None', 'Cell will have its task done; who will it use for that task?', 'An Enzyme', 'The eukaryotic cell', 'A specific pocket on the enzyme surface', 'Organic molecules', 'An Enzyme', 'active'),
(92, 17, 'None', 'What is an active site?', 'It is a specific pocket on the enzyme surface', 'To keep certain substances in and out', 'A specific pocket on the enzyme surface', 'Organic molecules', 'It is a specific pocket on the enzyme surface', 'active'),
(93, 17, 'None', 'Enzymes react with who?', 'With a molecule or a substance', 'The eukaryotic cell', 'Copy of DNA', 'Organic molecules', 'With a molecule or a substance', 'active'),
(94, 17, 'None', 'What is the result of the reaction?', 'A new molecule or substance is released by the enzyme known as a product', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'A new molecule or substance is released by the enzyme known as a product', 'active'),
(95, 17, 'None', 'Where does the reaction occur between enzyme and substrate?', 'At the active site', 'The nucleus', 'Copy of DNA', 'Organic molecules', 'At the active site', 'active'),
(96, 17, 'None', 'What happens after the reaction is complete?', 'A new molecule or substance is released by the enzyme known as a product', 'The eukaryotic cell', 'A specific pocket on the enzyme surface', 'Organic molecules', 'A new molecule or substance is released by the enzyme known as a product', 'active'),
(97, 18, 'None', 'Where are chromosomes found?', 'In the cell’s nucleus', 'Copy of DNA', 'A specific pocket on the enzyme surface', 'Organic molecules', 'In the cell’s nucleus', 'active'),
(98, 18, 'None', 'What are chromosomes made from?', 'DNA and protein', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'DNA and protein', 'active'),
(99, 18, 'None', 'What do chromosomes do?', 'The data inside the chromosomes tells the cells how to function and replicate', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'The data inside the chromosomes tells the cells how to function and replicate', 'active'),
(100, 18, 'None', 'What kind of sections do chromosomes contain?', 'Sections of DNA', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Sections of DNA', 'active'),
(101, 18, 'None', 'What does a gene contain?', 'Contains a code', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Contains a code', 'active'),
(102, 18, 'None', 'What does a gene do?', 'Uses code for making specific protein', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Uses code for making specific protein', 'active'),
(103, 19, 'None', 'What is DNA?', 'Molecule for life', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Molecule for life', 'active'),
(104, 19, 'None', 'What does DNA do?', 'It uses its instructions for telling our bodies how to develop and function', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'It uses its instructions for telling our bodies how to develop and function', 'active'),
(105, 19, 'None', 'What is DNA made from?', 'Long molecule made up from nucleotides', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Long molecule made up from nucleotides', 'active'),
(106, 19, 'None', 'What are the four nucleotides DNA is made from?', 'adenine (A), thymine (T), cytosine (C), and guanine (G). Nucleotides', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'adenine (A), thymine (T), cytosine (C), and guanine (G). Nucleotides', 'active'),
(107, 19, 'None', 'How are nucleotides or bases held together?', 'They are held together by a backbone made of phosphate and deoxyribose', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'They are held together by a backbone made of phosphate and deoxyribose', 'active'),
(108, 19, 'None', 'How many three-letter codons are there?', '61', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', '61', 'active'),
(109, 19, 'None', 'How many stop messages are there?', '3', 'The nucleus', 'A specific pocket on the enzyme surface', 'Organic molecules', '3', 'active'),
(110, 19, 'None', 'Show the computation for obtaining the 61 three-letter codons.', 'Not provided in the text', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Not provided in the text', 'active'),
(111, 19, 'None', 'When was the structure of DNA discovered?', '1954', 'The eukaryotic cell', 'Copy of DNA', 'Organic molecules', '1954', 'active'),
(112, 19, 'None', 'What is the shape of the DNA?', 'Double helix', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Double helix', 'active'),
(113, 19, 'None', 'What holds the DNA together?', 'Backbone', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Backbone', 'active'),
(114, 19, 'None', 'Where does each nucleotide connect to?', 'To the backbone', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'To the backbone', 'active'),
(115, 19, 'None', 'What are the specific sets of nucleotides that can only connect?', 'A to T and G to C', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'A to T and G to C', 'active'),
(116, 19, 'None', 'How many different types of cell does the human body have?', '210', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', '210', 'active'),
(117, 19, 'None', 'DNA in programming can be compared to what?', 'Computer program', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Computer program', 'active'),
(118, 19, 'None', 'A cell can be compared to what?', 'Computer hardware', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Computer hardware', 'active'),
(119, 19, 'None', 'What is a codon?', 'Three-letter word', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Three-letter word', 'active'),
(120, 19, 'None', 'What holds the DNA code?', 'Different letters of the nucleotides', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Different letters of the nucleotides', 'active'),
(121, 19, 'None', 'Where from does the cell read the instructions?', 'On the DNA', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'On the DNA', 'active'),
(122, 20, 'None', 'What are amino acids?', 'Organic Molecules', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Organic Molecules', 'active'),
(123, 20, 'None', 'What are amino acids used for?', 'They are used for making proteins', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'They are used for making proteins', 'active'),
(124, 20, 'None', 'How many amino acids are there?', 'About 20', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'About 20', 'active'),
(125, 20, 'None', 'What are proteins?', 'Long chains of amino acids', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Long chains of amino acids', 'active'),
(126, 20, 'None', 'Where is protein made?', 'Inside the cells', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Inside the cells', 'active'),
(127, 20, 'None', 'What are the two processes of making protein?', 'Transcription and translation', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Transcription and translation', 'active'),
(128, 20, 'None', 'What is the first step in the transcription process?', 'Cell makes a copy of the DNA known as RNA', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Cell makes a copy of the DNA known as RNA', 'active'),
(129, 20, 'None', 'State in which process is the RNA used?', 'Translation process', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'Translation process', 'active'),
(130, 20, 'None', 'RNA is translated into what kind of a sequence?', 'Amino acids', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Amino acids', 'active'),
(131, 20, 'None', 'Where is the new protein made?', 'In the ribosome', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'In the ribosome', 'active'),
(132, 20, 'None', 'Explain what is mRNA?', 'RNA moves to the ribosome and attaches itself to the ribosome', 'It is a specific pocket on the enzyme surface', 'Copy of DNA', 'Organic molecules', 'RNA moves to the ribosome and attaches itself to the ribosome', 'active'),
(133, 20, 'None', 'How does the ribosome figure out where to start on mRNA?', 'It finds a three-letter start sequence known as a codon', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'It finds a three-letter start sequence known as a codon', 'active'),
(134, 20, 'None', 'What does the codon represent?', 'Amino acid molecule', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'Amino acid molecule', 'active'),
(135, 20, 'None', 'The ribosome builds a string of amino acids based on what?', 'On the codes in the mRNA', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Organic molecules', 'On the codes in the mRNA', 'active'),
(136, 20, 'None', 'When does the translation process end?', 'When the ribosome detects the stop codon', 'It is a special molecule', 'Copy of DNA', 'Organic molecules', 'When the ribosome detects the stop codon', 'active'),
(137, 20, 'None', 'What happens after the stop codon is reached?', 'The ribosome releases the newly formed protein', 'The nucleus', 'A specific pocket on the enzyme surface', 'Organic molecules', 'The ribosome releases the newly formed protein', 'active'),
(138, 21, 'None', 'What is a cell?', 'Basic unit of life', 'Created from a blueprint in the form of DNA', 'Specific section of DNA', 'Specific types of proteins', 'Basic unit of life', 'active'),
(139, 21, 'None', 'How is the cell created?', 'Created from a blueprint in the form of DNA', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Created from a blueprint in the form of DNA', 'active'),
(140, 21, 'None', 'What is a gene?', 'Specific section of DNA', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Specific section of DNA', 'active'),
(141, 21, 'None', 'What does the gene entail?', 'Entails RNA that codes for a molecule that has a function, describes attributes or properties and behavior of a cell it creates with a unique internal state.', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Specific types of proteins', 'Entails RNA that codes for a molecule that has a function, describes attributes or properties and behavior of a cell it creates with a unique internal state.', 'active'),
(142, 21, 'None', 'What class is the cell derived from?', 'Cell class', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Cell class', 'active'),
(143, 21, 'None', 'What does the plasma membrane do?', 'Encapsulates or protects the internal cell structure from other cells', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Specific types of proteins', 'Encapsulates or protects the internal cell structure from other cells', 'active'),
(144, 21, 'None', 'Cell information goes through what?', 'Plasma membrane', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Plasma membrane', 'active'),
(145, 21, 'None', 'What are cell receptors responsible for?', 'Communication processes', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Specific types of proteins', 'Communication processes', 'active'),
(146, 21, 'None', 'What does the Golgi apparatus do?', 'Modifies, packages, and sorts proteins sent from the endoplasmic reticulum that allow for the transportation of chemical compounds to and from the nucleus and mitochondria, which produce energy for the cell', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Modifies, packages, and sorts proteins sent from the endoplasmic reticulum that allow for the transportation of chemical compounds to and from the nucleus and mitochondria, which produce energy for the cell', 'active'),
(147, 21, 'None', 'What happens when cells are instantiated?', 'At first, they look the same, but once they diverge they transform themselves into specialties like red blood cells.', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Specific types of proteins', 'At first, they look the same, but once they diverge they transform themselves into specialties like red blood cells.', 'active'),
(148, 21, 'None', 'What does each cell have precise to its class?', 'Constructor method or nucleus', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Constructor method or nucleus', 'active'),
(149, 22, 'None', 'What is a promoter?', 'Start point of the transcriptional unit', 'End of transcriptional unit', 'By passing the process of biosynthesis', 'Basic instruction that is a unit of the protein synthesis which includes structure genes, operator genes, one or more promoter and terminator gene.', 'Start point of the transcriptional unit', 'active'),
(150, 22, 'None', 'What is a terminator?', 'End of transcriptional unit', 'Start point of the transcriptional unit', 'By passing the process of biosynthesis', 'Basic instruction that is a unit of the protein synthesis which includes structure genes, operator genes, one or more promoter and terminator gene.', 'End of transcriptional unit', 'active'),
(151, 22, 'None', 'How can an instruction be initialized?', 'By passing the process of biosynthesis', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'By passing the process of biosynthesis', 'active'),
(152, 22, 'None', 'What is operon?', 'Basic instruction that is a unit of the protein synthesis which includes structure genes, operator genes, one or more promoter and terminator gene.', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Basic instruction that is a unit of the protein synthesis which includes structure genes, operator genes, one or more promoter and terminator gene.', 'active'),
(153, 22, 'None', 'What does activation of a basic instruction include?', 'Metabolic processes such as transcription and translation processes', 'It is a special molecule', 'A specific pocket on the enzyme surface', 'Specific types of proteins', 'Metabolic processes such as transcription and translation processes', 'active'),
(154, 22, 'None', 'The activation process of a basic instruction can be compared to what?', 'Instruction execution process inside a computer system', 'It is a special molecule', 'Copy of DNA', 'Specific types of proteins', 'Instruction execution process inside a computer system', 'active'),
(155, 23, 'None', 'How can a data type be represented?', 'As an Array', 'Metabolites', 'By DNA', 'Enzymes', 'As an Array', 'active'),
(156, 23, 'None', 'How can molecular elements or similar atoms be represented?', 'By DNA', 'As an Array', 'By structure genes', 'Enzymes', 'By DNA', 'active'),
(157, 23, 'None', 'How can a genetic program of a cell be represented?', 'By structure genes', 'As an Array', 'Metabolites', 'Enzymes', 'By structure genes', 'active'),
(158, 23, 'None', 'Who is responsible for catalyzing biochemical reactions?', 'Enzymes', 'As an Array', 'By structure genes', 'It is a special molecule', 'Enzymes', 'active'),
(159, 23, 'None', 'How can instructions be classified?', 'Chemical reactions effected by enzymes which are represented by structure genes providing input sequence for protein synthesis process', 'As an Array', 'By structure genes', 'Enzymes', 'Chemical reactions effected by enzymes which are represented by structure genes providing input sequence for protein synthesis process', 'active'),
(160, 23, 'None', 'What is one common thing between structure genes and OOP languages set of instructions?', 'Being able to change data', 'As an Array', 'By structure genes', 'Enzymes', 'Being able to change data', 'active'),
(161, 23, 'None', 'How is metabolism being controlled indirectly?', 'Specific genes are active during specific time periods and this behavior demonstrates that specific DNA units control the activity of genes', 'As an Array', 'By structure genes', 'Enzymes', 'Specific genes are active during specific time periods and this behavior demonstrates that specific DNA units control the activity of genes', 'active'),
(162, 23, 'None', 'What is a control instruction?', 'Punctuation mark of the system or a specific sequence of the end of the chromosome', 'As an Array', 'By structure genes', 'Enzymes', 'Punctuation mark of the system or a specific sequence of the end of the chromosome', 'active'),
(163, 23, 'None', 'What is a telomer?', 'Punctuation mark of the system or a specific sequence of the end of the chromosome', 'As an Array', 'By structure genes', 'Enzymes', 'Punctuation mark of the system or a specific sequence of the end of the chromosome', 'active'),
(164, 23, 'None', 'How are cells created?', 'Form a genetic blueprint in the form of DNA', 'As an Array', 'By structure genes', 'Enzymes', 'Form a genetic blueprint in the form of DNA', 'active'),
(165, 23, 'None', 'What do genes and classes define?', 'Attributes and behavior of the objects they create even though these cells or objects consist out of different internal states, they originate as copies from the same blueprint', 'As an Array', 'By structure genes', 'Enzymes', 'Attributes and behavior of the objects they create even though these cells or objects consist out of different internal states, they originate as copies from the same blueprint', 'active'),
(166, 23, 'None', 'How is information being passed into or out of an object?', 'Using public instance methods or cell receptors', 'As an Array', 'By structure genes', 'Enzymes', 'Using public instance methods or cell receptors', 'active'),
(167, 23, 'None', 'What are private methods responsible for?', 'External cell processes exist that do not need to interact with the outside world', 'As an Array', 'By structure genes', 'Enzymes', 'External cell processes exist that do not need to interact with the outside world', 'active'),
(168, 23, 'None', 'What is a Golgi apparatus responsible for?', 'Modifies, packages, and sorts proteins sent from the endoplasmic reticulum or tubes that allow the transportation of chemical compounds to and from the nucleus and mitochondria', 'As an Array', 'By structure genes', 'Enzymes', 'Modifies, packages, and sorts proteins sent from the endoplasmic reticulum or tubes that allow the transportation of chemical compounds to and from the nucleus and mitochondria', 'active'),
(169, 23, 'None', 'What are operons?', 'Unit of the protein synthesis', 'As an Array', 'By structure genes', 'Enzymes', 'Unit of the protein synthesis', 'active'),
(170, 23, 'None', 'What is the composition of a basic instruction?', 'Sequence of basic instructions signified by Structure', 'As an Array', 'By structure genes', 'Enzymes', 'Sequence of basic instructions signified by Structure', 'active'),
(171, 24, 'None', 'How are new events classified?', 'As new memories or objects', 'By their emotional impact', 'As mathematical equations', 'Through social interactions', 'As new memories or objects', 'active'),
(172, 24, 'None', 'What does our mind store?', 'In a mental space', 'In a physical location', 'In a digital format', 'Within our subconscious', 'In a mental space', 'active'),
(173, 24, 'None', 'What is HMS?', 'Human Memory Space', 'High Memory Storage', 'Highly Managed System', 'Human Mental State', 'Human Memory Space', 'active'),
(174, 24, 'None', 'What is a codec process?', 'It encodes/decodes new objects', 'It encrypts data', 'It compresses files', 'It organizes thoughts', 'It encodes/decodes new objects', 'active'),
(175, 24, 'None', 'What is the function of the new operator?', 'It creates the object in the computer’s memory', 'It deletes objects from memory', 'It updates existing objects', 'It manages network connections', 'It creates the object in the computer’s memory', 'active'),
(176, 24, 'None', 'What do objects resemble?', 'Cells', 'Atoms', 'Animals', 'Machines', 'Cells', 'active'),
(177, 24, 'None', 'What makes up a unique internal state?', 'Attributes and behavior', 'Color and shape', 'Size and weight', 'Temperature and pressure', 'Attributes and behavior', 'active'),
(178, 24, 'None', 'What kind of object variables exist?', 'Private', 'Public', 'Static', 'Dynamic', 'Private', 'active'),
(179, 24, 'None', 'What is the meaning of data security?', 'The objects contents cannot be modified directly.', 'Ensuring data is easily accessible to all users.', 'Storing data in multiple locations.', 'Encrypting data for safe transmission.', 'The objects contents cannot be modified directly.', 'active'),
(180, 24, 'None', 'What is the meaning of InstanceTypeOf(…)?', 'Type of an object of a class', 'A method to check data types', 'A system for naming objects', 'A way to initialize objects', 'Type of an object of a class', 'active'),
(181, 24, 'None', 'What is the meaning of :=?', 'Equal by definition', 'Assignment operator', 'Conditional statement', 'Mathematical expression', 'Assignment operator', 'active'),
(182, 24, 'None', 'How does a cell communicate with another cell?', 'Via a receptor', 'Through chemical reactions', 'Using electromagnetic waves', 'Through direct physical contact', 'Via a receptor', 'active'),
(183, 24, 'None', 'What does a method carry out?', 'An action', 'Data storage', 'Data retrieval', 'Data encryption', 'An action', 'active'),
(184, 24, 'None', 'What is the function of a method?', 'It is able to make changes to instance fields', 'It defines the class structure', 'It manages memory allocation', 'It handles user interface elements', 'It is able to make changes to instance fields', 'active'),
(185, 24, 'None', 'What is the formula that expresses the relationship between an object and a method?', 'object.method', 'object.attribute', 'object.class', 'object.instance', 'object.method', 'active'),
(186, 24, 'None', 'What is a class?', 'It is a collection of objects', 'It is a method definition', 'It is a variable declaration', 'It is an instance of an object', 'It is a collection of objects', 'active'),
(187, 24, 'None', 'Name two kinds of methods.', 'Accessors and mutators', 'Constructors and destructors', 'Variables and constants', 'Public and private', 'Accessors and mutators', 'active'),
(188, 24, 'None', 'What is the name of the mathematical discipline that describes OOP?', 'Sigma calculus or calculus of objects', 'Algebraic geometry', 'Number theory', 'Quantum mechanics', 'Sigma calculus or calculus of objects', 'active'),
(189, 24, 'None', 'What does the double arrow mean?', 'It means update', 'It indicates a conditional statement', 'It represents inheritance', 'It denotes a logical OR operation', 'It means update', 'active'),
(190, 24, 'None', 'What does the b mean in this expression (x)b?', 'It is a variable', 'It represents the body of the function', 'It signifies a conditional statement', 'It denotes a bitwise operation', 'It is a variable', 'active'),
(191, 24, 'None', 'What does a metabolite represent?', 'A data type', 'A chemical compound', 'A programming language', 'A memory location', 'A chemical compound', 'active'),
(192, 24, 'None', 'What is the meaning of var?', 'It means variable', 'It signifies a function', 'It denotes a constant', 'It represents an object', 'It means variable', 'active'),
(193, 24, 'None', 'What does the DNA represent?', 'A genetic program', 'A mathematical equation', 'A computer algorithm', 'A physical structure', 'A genetic program', 'active'),
(194, 24, 'None', 'What does an operon represent?', 'An if statement', 'A loop', 'A function call', 'A data structure', 'An if statement', 'active'),
(195, 24, 'None', 'What does the E.coli regulate?', 'Its own synthesis', 'External processes', 'Environmental conditions', 'Cell division', 'Its own synthesis', 'active'),
(196, 24, 'None', 'When is the operon blocked?', 'After the activation of the basic instruction', 'Before the activation of the basic instruction', 'When there is an error in the code', 'When external factors interfere', 'Before the activation of the basic instruction', 'active'),
(197, 24, 'None', 'What does the repressor block?', 'The Operator_X gene', 'The Regulator_Y gene', 'The Promoter_Z gene', 'The Terminator_W gene', 'The Operator_X gene', 'active'),
(198, 24, 'None', 'What kind of operon is used?', 'The L14', 'The P32', 'The Q49', 'The R86', 'The L14', 'active'),
(199, 24, 'None', 'What happens if the instruction B is false?', 'The instruction S won’t be executed', 'The instruction S will be executed twice', 'The program terminates', 'The instruction C is executed', 'The instruction S won’t be executed', 'active'),
(200, 24, 'None', 'What happens when the Regulator_X gene is deleted?', 'The while statement is imitated', 'The for loop is executed', 'The if statement is triggered', 'The program crashes', 'The program crashes', 'active'),
(201, 24, 'None', 'Where is the Regulator_X gene found?', 'Inside the operon L14', 'Outside the cell', 'In the nucleus', 'In the mitochondria', 'Inside the operon L14', 'active'),
(202, 24, 'None', 'What is an a-amino acid?', 'It is known as trp', 'It is a type of sugar', 'It is a building block of proteins', 'It is a neurotransmitter', 'It is a building block of proteins', 'active'),
(203, 24, 'None', 'What is trp used for?', 'It is used for biosynthesis of proteins', 'It is a type of fuel', 'It is used for energy storage', 'It is used in cell division', 'It is used for biosynthesis of proteins', 'active'),
(204, 24, 'None', 'What happens when the operon is in state true?', 'The basic instruction gets activated', 'The program crashes', 'The operon is blocked', 'The repressor binds to the operator', 'The basic instruction gets activated', 'active'),
(205, 24, 'None', 'What happens when the operon is in state false?', 'The basic instruction remains inactive', 'The program crashes', 'The operon is blocked', 'The repressor binds to the operator', 'The basic instruction remains inactive', 'active'),
(206, 24, 'None', 'Into what kind of a loop can the while statement be extended?', 'Into a for loop', 'Into a do-while loop', 'Into a switch statement', 'Into an if-else statement', 'Into a for loop', 'active'),
(207, 24, 'None', 'Name three parts that the for loop consists of.', 'Initialization, condition, and incrementation or decrementation', 'Start, stop, and pause', 'Entry, exit, and update', 'Begin, middle, and end', 'Initialization, condition, and incrementation or decrementation', 'active'),
(208, 25, 'Decisions', 'When human experience new events, they can be classified as', 'variables', 'new memories or objects', 'classes', 'thoughts', 'new memories or objects', 'active'),
(209, 25, 'Decisions', 'What is HMS?', 'Human Main system', 'Human Memory System', 'Human Men System', 'Human Methodology System', 'Human Memory System', 'active'),
(210, 25, 'Decisions', 'What is a mental space', 'Human Main system', 'Human Memory System', 'Human Men System', 'Human Methodology System', 'Human Memory System', 'active'),
(211, 25, 'Decisions', 'What memories does the HMS entail?', 'LTM and WM', 'LMT and MW', 'STM and WM', 'LTM and WSM', 'LTM and WM', 'active'),
(212, 25, 'Data Types', 'What does the HMS do?', 'It is responsible for the code process', 'It is responsible for the codec process', 'It is responsible for the coder process', 'It is responsible for the encoder process', 'It is responsible for the codec process', 'active'),
(213, 25, 'Methods', 'The formation of new memories can be compared to', 'new variables', 'new classes', 'new objects', 'new methods', 'new objects', 'active'),
(214, 25, 'Methods', 'What does the new operator do?', 'creates objects in the computers physical memory', 'creates variables in the computers physical memory', 'creates classes in the computers physical memory', 'creates methods in the computers physical memory', 'creates objects in the computers physical memory', 'active'),
(215, 25, 'Objects', 'What is an object?', 'block of code', 'block of information', 'block of memory', 'block of entity', 'block of memory', 'active'),
(216, 25, 'Objects', 'What does an object resemble?', 'Class', 'Blueprint', 'Blueprint and class', 'Objects', 'Blueprint and class', 'active'),
(217, 25, 'Objects', 'What do attributes and behavior make up?', 'External state', 'Internal state', 'External and internal state', 'None of the states', 'Internal state', 'active'),
(218, 25, 'Decisions', 'What does the nucleus represent?', 'Internal processes', 'External processes', 'Internal and external processes', 'None of the processes', 'Internal processes', 'active'),
(219, 25, 'Objects', 'What kind of variables do objects have?', 'Public', 'Private', 'Protected', 'Prohibited', 'Private', 'active'),
(220, 25, 'Objects', 'Where are the objects variables located?', 'Inside the converter', 'Inside the constructor', 'Inside the extractor', 'Inside the tractor', 'Inside the constructor', 'active'),
(221, 25, 'Decisions', 'What is the meaning of encapsulation?', 'Object contents cannot be modified directly', 'Object contents can be modified directly', 'Objects contents can be modified directly and indirectly', 'Encapsulation has no meaning it is a made up word', 'Object contents cannot be modified directly', 'active'),
(222, 25, 'Methods', 'What does the constructor do?', 'It declares the object', 'It initializes the object', 'It instantiates the object', 'It creates the object', 'It initializes the object', 'active'),
(223, 25, 'Methods', 'What does the code new x mean?', 'It assigns an attribute and returns no reference to it', 'It assigns an attribute and returns a reference to it', 'It assigns a reference and returns an attribute to it', 'It assigns a reference and returns no attribute to it', 'It assigns an attribute and returns a reference to it', 'active'),
(224, 25, 'Methods', 'What does the attribute record hold?', 'It holds the initial values and the methods code specified by the object', 'It holds the initial values but not the methods code specified by the object', 'It holds only the methods code specified by the object', 'It holds only the initial values specified by the objects', 'It holds the initial values and the methods code specified by the object', 'active'),
(225, 25, 'Methods', 'What happens when the new x is executed?', 'The object is generated and reference to the attribute record is created', 'The object is generated and no reference to the attribute record is created', 'The object is executed and reference to the attribute record is created', 'The object is generated and a null reference to the attribute record is created', 'The object is generated and reference to the attribute record is created', 'active'),
(226, 25, 'Data Types', 'What does InstanceTypeOf(circle) mean?', 'It is a type of an object of a class circle', 'It is a type of an object', 'It is a function', 'It is a Java command', 'It is a type of an object of a class circle', 'active'),
(227, 25, 'Data Types', 'What does := mean?', 'Equal', 'Equal by definition', 'Not equal', 'Assign', 'Equal by definition', 'active'),
(228, 25, 'Data Types', 'What is the meaning of var square?', 'It is a made up word', 'Variety', 'Variable', 'Vowl', 'Variable', 'active'),
(229, 25, 'Decisions', 'What does a receptor do?', 'It communicates with other cells', 'It communicates with other receptors', 'It stores data', 'It stores fluids', 'It communicates with other cells', 'active'),
(230, 25, 'Decisions', 'What happens when cells.receptor is executed?', 'It modifies the cell', 'It modifies the contents of the cell', 'It modifies the receptor', 'It modifies the contents of the receptor', 'It modifies the contents of the cell', 'active'),
(231, 25, 'Objects', 'What does an object have?', 'Action', 'Behavior', 'Energy', 'Attitude', 'Behavior', 'active');
INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `topic_name`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(232, 25, 'Objects', 'What is an object?', 'Block of code', 'Block of information', 'Block of memory', 'Null reference', 'Block of memory', 'active'),
(233, 25, 'Objects', 'An object belongs to a', 'Method', 'Variable', 'Class', 'Another object', 'Class', 'active'),
(234, 25, 'Objects', 'A class should be named as a', 'Verb', 'Noun', 'Adjective', 'Does not matter', 'Noun', 'active'),
(235, 25, 'Methods', 'A method should be named as a', 'Noun', 'Verb', 'Does not matter', 'Adjective', 'Verb', 'active'),
(236, 25, 'Methods', 'A method carries out an', 'Action', 'Nothing', 'Behavior', 'Change', 'Action', 'active'),
(237, 25, 'Data Types', 'What is the meaning of the double arrow?', 'Copy', 'Update', 'Delete', 'Remove', 'Update', 'active'),
(238, 25, 'Data Types', 'What is the meaning of (x)?', 'It is a function with input parameter x', 'It is a variable with an input parameter x', 'It is an object with an input parameter x', 'It is a special class', 'It is a function with input parameter x', 'active'),
(239, 25, 'Decisions', 'The DNA can be classified as', 'Gigantic program of a cell', 'Genetic program of a cell', 'Great program of a cell', 'Ground-breaking program of a cell', 'Genetic program of a cell', 'active'),
(240, 25, 'Data Types', 'A data type is represented by', 'Metolites', 'Metabolites', 'Metobolites', 'Metolides', 'Metabolites', 'active'),
(241, 25, 'Data Types', 'The data type is modified by', 'Chemical reactions', 'Biological reactions', 'Physiological reactions', 'Biochemical reactions', 'Biochemical reactions', 'active'),
(242, 25, 'Data Types', 'What is the OOC mathematical notation for equal by definition', '=:', '=;', ';=', ':=', ':=', 'active'),
(243, 25, 'Methods', 'What is var standing for', 'It is a made up word', 'Variety', 'Variable', 'Vowl', 'Variable', 'active'),
(244, 25, 'Decisions', 'The operon can be represented as an', 'Programming statement', 'If statement', 'For statement', 'do statement', 'If statement', 'active'),
(245, 25, 'Decisions', 'What is a E. coli?', 'It is a bacteria', 'It is a virus', 'It is a flower', 'It is a snake', 'It is a bacteria', 'active'),
(246, 25, 'Decisions', 'What does the E. coli regulate?', 'Its own synthesis', 'Its own prosthesis', 'Its own gros-thesis', 'Its own krackthesis', 'Its own synthesis', 'active'),
(247, 25, 'Decisions', 'The Operator_X gene is blocked by', 'Processor', 'Repressor', 'Beta blocker', 'Represser', 'Repressor', 'active'),
(248, 25, 'Decisions', 'What is L14?', 'It is an operone', 'It is an operon', 'It is a type of operation', 'It is an opron', 'It is an operon', 'active'),
(249, 25, 'Decisions', 'Where is the Regulator_X gene located?', 'In the L22', 'In the L35', 'In the L14', 'In the L57', 'In the L14', 'active'),
(250, 25, 'Decisions', 'What is an trp?', 'It is a amino acid', 'It is a amino acid', 'It is an acid', 'It is a chemical compound', 'It is a amino acid', 'active'),
(251, 25, 'Iterations', 'How many times does the do-while loop execute when its while condition is false?', 'None', '0', '1', '2', '1', 'active'),
(252, 25, 'Iterations', 'The for loop originates from what loop?', 'Itself', 'Do-while loop', 'While loop', 'Switch loop', 'While loop', 'active'),
(253, 26, 'Objects', 'When humans experience new events, what can they be classified as?', 'Objects', 'Memories', 'Emotions', 'Thoughts', 'Objects', 'active'),
(254, 26, 'Decisions', 'What does HMS consist of?', 'It consists of WM and LTM', 'It consists of RAM and ROM', 'It consists of CPU and GPU', 'It consists of Input and Output', 'It consists of WM and LTM', 'active'),
(255, 26, 'Decisions', 'What does a codec process do?', 'The codec process encodes from the WM in the LTM and decodes stored objects from the LTM into the WM.', 'The codec process compresses files.', 'The codec process encrypts data.', 'The codec process deletes objects.', 'The codec process encodes from the WM in the LTM and decodes stored objects from the LTM into the WM.', 'active'),
(256, 26, 'Decisions', 'The formation of new memories can be compared to what?', 'To new objects.', 'To mathematical equations.', 'To chemical reactions.', 'To emotional experiences.', 'To new objects.', 'active'),
(257, 26, 'Objects', 'What is an object?', 'It is a block of memory.', 'It is a mathematical concept.', 'It is a physical entity.', 'It is a form of energy.', 'It is a block of memory.', 'active'),
(258, 26, 'Objects', 'What do cells resemble?', 'Objects', 'Atoms', 'Animals', 'Plants', 'Objects', 'active'),
(259, 26, 'Decisions', 'Where do internal processes occur?', 'In the cell specifically in the nucleus.', 'In the atmosphere.', 'In outer space.', 'In the ocean.', 'In the cell specifically in the nucleus.', 'active'),
(260, 26, 'Decisions', 'Where are private variables initialized?', 'In the constructor.', 'In the destructor.', 'In the main method.', 'In the class definition.', 'In the constructor.', 'active'),
(261, 26, 'Objects', 'What does the new operator do?', 'It constructs the object.', 'It destroys the object.', 'It updates the object.', 'It prints the object.', 'It constructs the object.', 'active'),
(262, 26, 'Objects', 'Create a Circle object by using the new operator only.', 'new circle;', 'circle = new Circle;', 'var circle = Circle();', 'create(circle);', 'new circle;', 'active'),
(263, 26, 'Objects', 'What does the new operator return?', 'It returns a reference.', 'It returns a number.', 'It returns a boolean.', 'It returns a string.', 'It returns a reference.', 'active'),
(264, 26, 'Objects', 'What does the attribute record hold?', 'Initial values and methods code specified by the object.', 'The objects name.', 'The objects color.', 'The objects size.', 'Initial values and methods code specified by the object.', 'active'),
(265, 26, 'Objects', 'What happens when the new operator is executed?', 'The object is generated and a reference to the attribute record is created.', 'The object is deleted.', 'The object is hidden from memory.', 'The object is printed to the console.', 'The object is generated and a reference to the attribute record is created.', 'active'),
(266, 26, 'Data Types', 'Write the full code for the object rectangle.', 'var cellaCell: InstanceTypeOf(rectangle) := new rectangle;', 'var rectangle = new Rectangle();', 'create rectangle;', 'rectangle = new Object();', 'var cellaCell: InstanceTypeOf(rectangle) := new rectangle;', 'active'),
(267, 26, 'Data Types', 'What does the := mean?', 'Equal by definition.', 'Assignment operator.', 'Conditional statement.', 'Mathematical expression.', 'Equal by definition.', 'active'),
(268, 26, 'Data Types', 'What does InstanceTypeOf(…) mean?', 'It is the type of object of a class.', 'It is a method for object creation.', 'It is a data type.', 'It is a file format.', 'It is the type of object of a class.', 'active'),
(269, 26, 'Methods', 'What do objects use for communication?', 'Receptors.', 'Transmitters.', 'Connectors.', 'Sensors.', 'Receptors.', 'active'),
(270, 26, 'Methods', 'What are receptors known as in OOP languages?', 'They are known as methods.', 'They are known as attributes.', 'They are known as instances.', 'They are known as classes.', 'They are known as methods.', 'active'),
(271, 26, 'Methods', 'What do methods carry out?', 'Actions.', 'Data storage.', 'Data retrieval.', 'Data encryption.', 'Actions.', 'active'),
(272, 26, 'Methods', 'What do methods are capable of modifying?', 'Cell organelles.', 'Object attributes.', 'Genetic code.', 'Memory locations.', 'Cell organelles.', 'active'),
(273, 26, 'Methods', 'What is the relationship between a cell and a receptor?', 'cell.receptor.', 'cell.attribute.', 'cell.method.', 'cell.variable.', 'cell.receptor.', 'active'),
(274, 26, 'Objects', 'An object belongs to what?', 'To a class.', 'To a method.', 'To an attribute.', 'To an instance.', 'To a class.', 'active'),
(275, 26, 'Decisions', 'What should the class be named as?', 'Noun.', 'Verb.', 'Adjective.', 'Adverb.', 'Noun.', 'active'),
(276, 26, 'Methods', 'What should a method be named as?', 'Verb.', 'Noun.', 'Adjective.', 'Adverb.', 'Verb.', 'active'),
(277, 26, 'Methods', 'What does a method carry out?', 'An action.', 'A calculation.', 'A comparison.', 'A declaration.', 'An action.', 'active'),
(278, 26, 'Methods', 'What are the two types of methods that exist?', 'Mutators and Accessors.', 'Constructors and Destructors.', 'Variables and Constants.', 'Loops and Conditions.', 'Mutators and Accessors.', 'active'),
(279, 26, 'Data Types', 'What does the leftward double arrow mean?', 'Update.', 'Assignment.', 'Comparison.', 'Deletion.', 'Update.', 'active'),
(280, 26, 'Data Types', 'What does this expression (x)b mean?', 'Sigma is a function, x is the input to the method, and b is the body of the method.', 'Sigma is a variable, x is a constant, and b is a keyword.', 'Sigma is a method, x is a class, and b is an attribute.', 'Sigma is a class, x is an object, and b is a constructor.', 'Sigma is a function, x is the input to the method, and b is the body of the method.', 'active'),
(281, 26, 'Data Types', 'How can a data type be represented in molecular biology?', 'Metabolite.', 'Enzyme.', 'Nucleotide.', 'Protein.', 'Metabolite.', 'active'),
(282, 26, 'Data Types', 'What kind of products are metabolites known as?', 'Intermediate.', 'Final.', 'Initial.', 'Secondary.', 'Intermediate.', 'active'),
(283, 26, 'Data Types', 'What does var mean?', 'It is a variable.', 'It is a constant.', 'It is a method.', 'It is an object.', 'It is a variable.', 'active'),
(284, 26, 'Decisions', 'How can a genetic program of a cell be represented?', 'By the DNA.', 'By the RNA.', 'By the protein.', 'By the membrane.', 'By the DNA.', 'active'),
(285, 26, 'Decisions', 'What does a repressor do?', 'It blocks the Operator_X gene.', 'It activates the Operator_X gene.', 'It modifies the Promoter_Z gene.', 'It enhances the Terminator_W gene.', 'It blocks the Operator_X gene.', 'active'),
(286, 26, 'Decisions', 'What is a E. coli?', 'It is a bacterium.', 'It is a virus.', 'It is a fungus.', 'It is a plant.', 'It is a bacterium.', 'active'),
(287, 26, 'Decisions', 'What does the E. coli regulate?', 'Its own synthesis.', 'External processes.', 'Environmental conditions.', 'Cell division.', 'Its own synthesis.', 'active'),
(288, 26, 'Decisions', 'What does the Regulator_X gene block?', 'The Operon L14.', 'The Promoter_Y gene.', 'The Terminator_Z gene.', 'The Operator_W gene.', 'The Operon L14.', 'active'),
(289, 26, 'Decisions', 'How many times does the do-while loop execute when the while statement is false?', 'Once.', 'Twice.', 'Until the program ends.', 'It depends on the condition.', 'Once.', 'active'),
(290, 27, 'None', 'What do objects resemble?', 'Cells', 'Atoms', 'Animals', 'Plants', 'Cells', 'active'),
(291, 27, 'None', 'What are the two properties that objects have?', 'Size and color', 'Attributes and behavior', 'Age and weight', 'Shape and texture', 'Attributes and behavior', 'active'),
(292, 27, 'None', 'What kind of processes do cells have?', 'External processes', 'Physical processes', 'Mental processes', 'Internal processes', 'Internal processes', 'active'),
(293, 27, 'None', 'What kind of variables objects have?', 'Public variables', 'Private variables', 'Global variables', 'Constant variables', 'Private variables', 'active'),
(294, 27, 'None', 'Where are the private variables initialized?', 'Inside the constructor.', 'In the main method.', 'Outside the class.', 'In a separate file.', 'Inside the constructor.', 'active'),
(295, 27, 'None', 'What does encapsulation mean?', 'Objects floating in a capsule.', 'The private variables cannot be modified directly.', 'Objects combining together.', 'Objects transforming into new objects.', 'The private variables cannot be modified directly.', 'active'),
(296, 27, 'None', 'What is an object?', 'A block of memory.', 'A block of code.', 'A mathematical equation.', 'A physical object.', 'A block of memory.', 'active'),
(297, 27, 'None', 'What does the expression `new Circle();` mean?', 'It creates a circle on the screen.', 'It performs a mathematical calculation.', 'The new operator creates the object in the computer’s memory and the () is a call to the constructor.', 'It deletes an object from memory.', 'The new operator creates the object in the computer’s memory and the () is a call to the constructor.', 'active'),
(298, 27, 'None', 'What does a constructor do?', 'It initializes an object.', 'It performs a mathematical operation.', 'It creates a new class.', 'It calculates the size of an object.', 'It initializes an object.', 'active'),
(299, 27, 'None', 'What is an instance field?', 'A field in a soccer game.', 'A variable that holds the object contents.', 'A type of tree.', 'A mathematical concept.', 'A variable that holds the object contents.', 'active'),
(300, 27, 'None', 'What is a reference?', 'A book you consult for information.', 'A point of view.', 'A reference holds the object memory location.', 'A type of equation.', 'A reference holds the object memory location.', 'active'),
(301, 27, 'None', 'Create a reference to the circle object.', 'Circle circle;', 'Rectangle rectangle;', 'Triangle triangle;', 'Square square;', 'Circle circle;', 'active'),
(302, 27, 'None', 'What is the function of a receptor?', 'It is responsible for communication between cells.', 'It produces energy.', 'It changes the objects color.', 'It calculates mathematical equations.', 'It is responsible for communication between cells.', 'active'),
(303, 27, 'None', 'What is a receptor called in any OOP language?', 'A method or a function.', 'An attribute or a property.', 'A variable or a constant.', 'An object or a class.', 'A method or a function.', 'active'),
(304, 27, 'None', 'What is the relationship between a cell and a receptor?', 'cell.receptor.', 'cell.attribute.', 'cell.method.', 'cell.variable.', 'cell.receptor.', 'active'),
(305, 27, 'None', 'What makes changes to the object contents?', 'Object attributes.', 'Object methods.', 'Object references.', 'Object constructors.', 'Object methods.', 'active'),
(306, 27, 'None', 'What does a function resemble in mathematics?', 'f(x) where f is the name of the function and x is the input to the function.', 'A mathematical equation.', 'A geometric shape.', 'A random number.', 'f(x) where f is the name of the function and x is the input to the function.', 'active'),
(307, 27, 'None', 'What is the difference between a sub class and a main class?', 'The main class is the class that compiles the program and sub class is used in the main class for method calls.', 'The main class is the smallest class and sub class is the largest class.', 'The main class is used for testing and sub class is used for production.', 'There is no difference between them.', 'The main class is the class that compiles the program and sub class is used in the main class for method calls.', 'active'),
(308, 27, 'None', 'What is an instance field declared private?', 'To hide it from other classes.', 'To make it accessible to all classes.', 'To make it a global variable.', 'To prevent any modifications to it.', 'To hide it from other classes.', 'active'),
(309, 27, 'None', 'What are the two access specifiers that exist?', 'Public and private.', 'Read and write.', 'Static and dynamic.', 'Class and object.', 'Public and private.', 'active'),
(310, 27, 'None', 'How does the sub-class connect to the main class?', 'The sub-class name matches the class name of the object and the reference.', 'The main class inherits from the sub-class.', 'The sub-class is always independent of the main class.', 'The main class is automatically created when the sub-class is defined.', 'The sub-class name matches the class name of the object and the reference.', 'active'),
(311, 27, 'None', 'What does an accessor method do?', 'It returns a value.', 'It sets a value.', 'It deletes an object.', 'It creates a new class.', 'It returns a value.', 'active'),
(312, 27, 'None', 'What is the difference between a sub class and a main class?', 'The main class is the class that compiles the program and sub class is used in the main class for method calls.', 'The main class is the smallest class and sub class is the largest class.', 'The main class is used for testing and sub class is used for production.', 'There is no difference between them.', 'The main class is the class that compiles the program and sub class is used in the main class for method calls.', 'active'),
(313, 28, 'Construction of Objects', 'What do objects resemble?', 'Block of memories', 'Cells', 'Classes', 'Cellular', 'Cells', 'active'),
(314, 28, 'Construction of Objects', 'Objects have the following:', 'Attributes only', 'Behavior only', 'Attributes and behavior', 'None of the above', 'Attributes and behavior', 'active'),
(315, 28, 'Construction of Objects', 'What is the internal state defined by?', 'Objects', 'Classes', 'Methods', 'Variables', 'Objects', 'active'),
(316, 28, 'OOP Concepts', 'What processes interact with the limitations of the plasma membrane?', 'External processes', 'Internal processes', 'External and internal processes', 'None of the above', 'Internal processes', 'active'),
(317, 28, 'Construction of Objects', 'What kind of variables contains the object?', 'Public variables', 'Private variables', 'Protected variables', 'Unprotected variables', 'Private variables', 'active'),
(318, 28, 'Construction of Objects', 'What kind of variables are initialized inside the constructor?', 'Public variables', 'Private variables', 'Protected variables', 'Unprotected variables', 'Private variables', 'active'),
(319, 28, 'Construction of Objects', 'What is an object?', 'Block of memory', 'A block', 'Space', 'Entity', 'Block of memory', 'active'),
(320, 28, 'Construction of Objects', 'What do the parentheses mean in this expression new Circle(5000); ?', 'Call to a method', 'Call to a constructor', 'Call to a class', 'Call to a variable', 'Call to a constructor', 'active'),
(321, 28, 'Construction of Objects', 'What is the function of the constructor?', 'To declare an object', 'To initialize the object', 'To define an object', 'To derive an object', 'To initialize the object', 'active'),
(322, 28, 'Construction of Objects', 'What does the constructor entail?', 'An Object', 'An instance field or object variables', 'A method', 'Null variables', 'An instance field or object variables', 'active'),
(323, 28, 'Construction of Objects', 'What does the reference hold?', 'The contents of the object', 'The object itself', 'The memory location of the object', 'None of the above', 'The memory location of the object', 'active'),
(324, 28, 'Construction of Objects', 'What is the purpose of the new operator?', 'To create a reference in the computer’s memory', 'To create an object in the computer’s memory', 'To create a class in the computer’s memory', 'To create a variable in the computer’s memory', 'To create an object in the computer’s memory', 'active'),
(325, 28, 'Construction of Objects', 'What does an object have?', 'Function', 'Behavior', 'Attitude', 'Energy', 'Behavior', 'active'),
(326, 28, 'OOP Concepts', 'By what means can the cell contents be modified?', 'Tube', 'Receptor', 'Plasma Membrane', 'Endoplasmic reticulum', 'Receptor', 'active'),
(327, 28, 'Construction of Methods', 'What are the two methods that exist in OOP languages?', 'Protected and Accessors', 'Unprotected and Mutators', 'Mutators and Accessors', 'Public and Private', 'Mutators and Accessors', 'active'),
(328, 28, 'Construction of Methods', 'When an object is being modified, what exactly is being modified?', 'Global Variables', 'Local variables', 'Object Variables', 'Class variables', 'Object Variables', 'active'),
(329, 28, 'Construction of Methods', 'What is the difference between a mutator and accessor method?', 'Mutator method does not return a value and accessor method does return a value', 'Mutator method returns a value and accessor method does not return a value', 'Mutator and accessor method both return a value', 'Mutator and accessor methods both do not return a value', 'Mutator method returns a value and accessor method does not return a value', 'active'),
(330, 28, 'Construction of Methods', 'What is the meaning of the implicit parameter?', 'It is an input to a method', 'It is an object', 'It is a local variable', 'It is a global variable', 'It is an input to a method', 'active'),
(331, 28, 'Construction of Methods', 'What does the double arrow mean?', 'Save', 'Enter', 'Update', 'Pointer', 'Update', 'active'),
(332, 28, 'Construction of Methods', 'Which class contains the main method?', 'Sub-class', 'Main class', 'Sub and Main class', 'Only sub class', 'Main class', 'active'),
(333, 28, 'Construction of Objects', 'Why should the instance field be declared as private?', 'For protecting the object', 'For prohibiting direct access to the object contents', 'For direct access to the object', 'None of the above', 'For prohibiting direct access to the object contents', 'active'),
(334, 28, 'OOP Concepts', 'How are classes recognized in Java?', 'They are printed in bold', 'They are underlined', 'They are capitalized', 'They are printed as italic', 'They are capitalized', 'active'),
(335, 29, 'Objects', 'What do objects resemble?', 'Block of memories', 'Cells', 'Classes', 'Cellular', 'Cells', 'active'),
(336, 29, 'Decisions', 'What is the internal state defined by?', 'Objects', 'Classes', 'Methods', 'Variables', 'Classes', 'active'),
(337, 29, 'Objects', 'What kind of variables do objects have?', 'Public variables', 'Private variables', 'Protected variables', 'Unprotected variables', 'Private variables', 'active'),
(338, 29, 'Decisions', 'What kind of variables are initialized inside the constructor?', 'Public variables', 'Private variables', 'Protected variables', 'Unprotected variables', 'Private variables', 'active'),
(339, 29, 'OOP Concepts', 'What do the parentheses mean in this expression `new Circle(5000);`?', 'Call to a method', 'Call to a constructor', 'Call to a class', 'Call to a variable', 'Call to a constructor', 'active'),
(340, 29, 'Data Types', 'What does the reference hold?', 'The contents of the object', 'The object itself', 'The memory location of the object', 'None of the above', 'The memory location of the object', 'active'),
(341, 29, 'OOP Concepts', 'What is the purpose of the new operator?', 'To create a reference in the computer’s memory', 'To create an object in the computer’s memory', 'To create a class in the computer’s memory', 'To create a variable in the computer’s memory', 'To create an object in the computer’s memory', 'active'),
(342, 29, 'Objects', 'What does an object have?', 'Function', 'Behavior', 'Attitude', 'Energy', 'Behavior', 'active'),
(343, 29, 'Cells', 'By what means can the cell contents be modified?', 'Tube', 'Receptor', 'Plasma Membrane', 'Endoplasmic reticulum', 'Receptor', 'active'),
(344, 29, 'Decisions', 'What is the meaning of encapsulation?', 'Object contents cannot be modified directly', 'Object contents can be modified directly', 'Objects contents can be modified directly and indirectly', 'Encapsulation has no meaning; it is a made-up word', 'Object contents cannot be modified directly', 'active'),
(345, 29, 'Decisions', 'What does the constructor do?', 'It declares the object', 'It initializes the object', 'It instantiates the object', 'It creates the object', 'It initializes the object', 'active'),
(346, 29, 'OOP Concepts', 'What does the code `new x` mean?', 'It assigns an attribute and returns no reference to it', 'It assigns an attribute and returns a reference to it', 'It assigns a reference and returns an attribute to it', 'It assigns a reference and returns no attribute to it', 'It assigns an attribute and returns a reference to it', 'active'),
(347, 29, 'Decisions', 'What does the attribute record hold?', 'It holds the initial values and the methods code specified by the object', 'It holds the initial values but not the methods code specified by the object', 'It holds only the methods code specified by the object', 'It holds only the initial values specified by the objects', 'It holds the initial values and the methods code specified by the object', 'active'),
(348, 29, 'OOP Concepts', 'What happens when the new x is executed?', 'The object is generated, and a reference to the attribute record is created', 'The object is generated, and no reference to the attribute record is created', 'The object is executed, and a reference to the attribute record is created', 'The object is generated, and a null reference to the attribute record is created', 'The object is generated, and a reference to the attribute record is created', 'active'),
(349, 29, 'Decisions', 'What does InstanceTypeOf(circle) mean?', 'It is a type of an object of a class circle', 'It is a type of an object', 'It is a function', 'It is a Java command', 'It is a type of an object of a class circle', 'active'),
(350, 29, 'Data Types', 'What does := mean?', 'Equal', 'Equal by definition', 'Not equal', 'Assign', 'Assign', 'active'),
(351, 29, 'Data Types', 'What is the meaning of var square?', 'It is a made-up word', 'Variety', 'Variable', 'Vowl', 'Variable', 'active'),
(352, 29, 'OOP Concepts', 'The operon can be represented as an', 'Programming statement', 'If statement', 'For statement', 'do statement', 'Programming statement', 'active'),
(353, 29, 'Cells', 'What is a E. coli?', 'It is a bacteria', 'It is a virus', 'It is a flower', 'It is a snake', 'It is a bacteria', 'active'),
(354, 29, 'Cells', 'What does the E. coli regulate?', 'Its own synthesis', 'Its own prosthesis', 'Its own gros-thesis', 'Its own krackthesis', 'Its own synthesis', 'active'),
(355, 29, 'DNA', 'The Operator_X gene is blocked by', 'Processor', 'Repressor', 'Beta blocker', 'Represser', 'Repressor', 'active'),
(356, 29, 'DNA', 'What is L14?', 'It is an operone', 'It is an operon', 'It is a type of operation', 'It is an opron', 'It is an operon', 'active'),
(357, 29, 'DNA', 'Where is the Regulator_X gene located?', 'In the L22', 'In the L35', 'In the L14', 'In the L57', 'In the L14', 'active'),
(358, 29, 'Amino Acids and Proteins', 'What is a trp?', 'It is a amino acid', 'It is a amino acid', 'It is an acid', 'It is a chemical compound', 'It is a amino acid', 'active'),
(359, 29, 'Iterations', 'How many times does the do-while loop execute when its while condition is false?', 'None', '0', '1', '2', '1', 'active'),
(360, 29, 'Iterations', 'The for loop originates from what loop?', 'Itself', 'Do-while loop', 'While loop', 'Switch loop', 'While loop', 'active'),
(361, 29, 'Data Types', 'What is the OOC mathematical notation for equal by definition', '=:', '=;', ';=', ':=', ';=', 'active'),
(362, 29, 'Data Types', 'What is var standing for', 'It is a made-up word', 'Variety', 'Variable', 'Vowl', 'Variable', 'active'),
(363, 29, 'Objects', 'What is an object?', 'Block of code', 'Block of information', 'Block of memory', 'Null reference', 'Block of memory', 'active'),
(364, 29, 'Objects', 'An object belongs to a', 'Method', 'Variable', 'Class', 'Another object', 'Class', 'active'),
(365, 29, 'Objects', 'A class should be named as a', 'Verb', 'Noun', 'Adjective', 'Does not matter', 'Noun', 'active'),
(366, 29, 'Methods', 'A method should be named as a', 'Noun', 'Verb', 'Does not matter', 'Adjective', 'Verb', 'active'),
(367, 29, 'Methods', 'A method carries out an', 'Action', 'Nothing', 'Behavior', 'Change', 'Action', 'active'),
(368, 29, 'Data Types', 'What is the meaning of the double arrow ?', 'Copy', 'Update', 'Delete', 'Remove', 'Update', 'active'),
(369, 29, 'Data Types', 'What is the meaning of c(x)?', 'It is a function with input parameter x', 'It is a variable with an input parameter x', 'It is an object with an input parameter x', 'It is a special class', 'It is a function with input parameter x', 'active'),
(370, 29, 'DNA', 'The DNA can be classified as', 'Gigantic program of a cell', 'Genetic program of a cell', 'Great program of a cell', 'Groundbreaking program of a cell', 'Genetic program of a cell', 'active'),
(371, 29, 'Data Types', 'A data type is represented by', 'Metolites', 'Metabolites', 'Metobolites', 'Metolides', 'Metabolites', 'active'),
(372, 29, 'Data Types', 'The data type is modified by', 'Chemical reactions', 'Biological reactions', 'Physiological reactions', 'Biochemical reactions', 'Biochemical reactions', 'active'),
(373, 29, 'Data Types', 'What is the OOC mathematical notation for equal by definition', '=:', '=;', ';=', ':=', ':=', 'active'),
(374, 29, 'Data Types', 'What is var standing for', 'It is a made-up word', 'Variety', 'Variable', 'Vowl', 'Variable', 'active'),
(375, 29, 'DNA', 'The operon can be represented as an', 'Programming statement', 'If statement', 'For statement', 'do statement', 'Programming statement', 'active'),
(376, 29, 'DNA', 'What is a E. coli?', 'It is a bacteria', 'It is a virus', 'It is a flower', 'It is a snake', 'It is a bacteria', 'active'),
(377, 29, 'DNA', 'What does the E. coli regulate?', 'Its own synthesis', 'Its own prosthesis', 'Its own gros-thesis', 'Its own krackthesis', 'Its own synthesis', 'active'),
(378, 29, 'DNA', 'The Operator_X gene is blocked by', 'Processor', 'Repressor', 'Beta blocker', 'Represser', 'Repressor', 'active'),
(379, 29, 'DNA', 'What is L14?', 'It is an operone', 'It is an operon', 'It is a type of operation', 'It is an opron', 'It is an operon', 'active'),
(380, 29, 'DNA', 'Where is the Regulator_X gene located?', 'In the L22', 'In the L35', 'In the L14', 'In the L57', 'In the L14', 'active'),
(381, 29, 'DNA', 'What is a trp?', 'It is a amino acid', 'It is a amino acid', 'It is an acid', 'It is a chemical compound', 'It is a amino acid', 'active'),
(382, 29, 'Iterations', 'How many times does the do-while loop execute when its while condition is false?', 'None', '0', '1', '2', '1', 'active'),
(383, 29, 'Iterations', 'The for loop originates from what loop?', 'Itself', 'Do-while loop', 'While loop', 'Switch loop', 'While loop', 'active'),
(384, 30, 'None', 'New events can be classified as what?', 'New memories or objects', 'Past experiences', 'Future predictions', 'Existing knowledge', 'New memories or objects', 'active'),
(385, 30, 'None', 'What parts does HMS consist of?', 'Working Memory and Long Term Memory', 'Hard Drive and RAM', 'Processor and Motherboard', 'Input and Output devices', 'Working Memory and Long Term Memory', 'active'),
(386, 30, 'None', 'What does a codec process do?', 'Encodes new objects', 'Decodes existing data', 'Compresses files', 'Enhances audio quality', 'Encodes new objects', 'active'),
(387, 30, 'None', 'What can formation of new memories be compared to?', 'Creation of New objects', 'Reading a book', 'Watching a movie', 'Listening to music', 'Creation of New objects', 'active'),
(388, 30, 'None', 'What does the new operator do?', 'Creates an object in the computer’s memory', 'Deletes an existing object', 'Modifies an object', 'Copies an object', 'Creates an object in the computer’s memory', 'active'),
(389, 30, 'None', 'What is the unique internal state of an object made of?', 'Attributes and behavior', 'Color and shape', 'Size and weight', 'Location and orientation', 'Attributes and behavior', 'active'),
(390, 30, 'None', 'Cells have internal processes, which interact within the boundaries of what?', 'Plasma membrane (cell wall)', 'Nucleus', 'Cytoplasm', 'Mitochondria', 'Plasma membrane (cell wall)', 'active'),
(391, 30, 'None', 'Where are the object private variables initialized?', 'In the constructor', 'In the destructor', 'In the main function', 'In external libraries', 'In the constructor', 'active'),
(392, 30, 'None', 'What are the three parts that an object is made of?', 'Object name, type of the object, object itself', 'Object color, size, and shape', 'Object method, function, and procedure', 'Object class, subclass, and superclass', 'Object name, type of the object, object itself', 'active'),
(393, 30, 'None', 'What do Objects resemble?', 'Cells', 'Animals', 'Buildings', 'Vehicles', 'Cells', 'active'),
(394, 30, 'None', 'What is an object?', 'A block of memory', 'A physical entity', 'A virtual concept', 'A graphical representation', 'A block of memory', 'active'),
(395, 31, 'None', 'What does the method carry out?', 'Action', 'Calculation', 'Storage', 'Retrieval', 'Action', 'active'),
(396, 31, 'None', 'Name the three most important foundations that any OOP language has?', 'Objects, Methods, Classes', 'Variables, Functions, Loops', 'Arrays, Strings, Integers', 'Files, Directories, Paths', 'Objects, Methods, Classes', 'active'),
(397, 31, 'None', 'What is a class?', 'Collection of Objects', 'A single object', 'A type of method', 'A programming language', 'Collection of Objects', 'active'),
(398, 31, 'None', 'What are the two methods that exist in OO languages?', 'Accessors and Mutators', 'Getters and Setters', 'Public and Private', 'Static and Dynamic', 'Accessors and Mutators', 'active'),
(399, 31, 'None', 'What is the naming convention that should be used for a method?', 'Verb', 'Noun', 'Adjective', 'Pronoun', 'Verb', 'active'),
(400, 31, 'None', 'What is the method convention that should be used for a class?', 'Noun', 'Verb', 'Adjective', 'Adverb', 'Noun', 'active'),
(401, 31, 'None', 'What kind of a discipline is OOC?', 'Descriptive Discipline', 'Scientific Discipline', 'Artistic Discipline', 'Mathematical Discipline', 'Descriptive Discipline', 'active'),
(402, 31, 'None', 'What does the leftwards double arrow mean?', 'Update', 'Backup', 'Forward', 'Delete', 'Update', 'active'),
(403, 31, 'None', 'By what means do objects get updated?', 'Via methods', 'Through direct manipulation', 'By user input', 'Automatically', 'Via methods', 'active'),
(404, 31, 'None', 'What kind of science discipline is OOC based on?', 'Molecular Biology', 'Physics', 'Chemistry', 'Astronomy', 'Molecular Biology', 'active'),
(405, 32, 'None', 'What does an initialization of a data type mean?', 'It means a data type, name, and contents', 'It signifies the end of a data type', 'It refers to the copying of a data type', 'It represents the deletion of a data type', 'It means a data type, name, and contents', 'active'),
(406, 32, 'None', 'What is a metabolite?', 'It is a data Type', 'A type of medication', 'A biological enzyme', 'A chemical reaction', 'It is a data Type', 'active'),
(407, 32, 'None', 'What is a data type?', 'It tells you what one can do with it in a computer program', 'Its a type of computer hardware', 'It refers to user input methods', 'Its a network protocol', 'It tells you what one can do with it in a computer program', 'active'),
(408, 33, 'None', 'What are the two Operator_X conditions?', 'True and False', 'Yes and No', 'On and Off', 'High and Low', 'True and False', 'active'),
(409, 33, 'None', 'In programming what is a decision known as?', 'If statement', 'Loop statement', 'Function call', 'Variable declaration', 'If statement', 'active'),
(410, 33, 'None', 'In order to simulate a decision, the operon must be in what mode?', 'In the false mode', 'In the true mode', 'In standby mode', 'In active mode', 'In the false mode', 'active'),
(411, 33, 'None', 'What blocks the Operator_X?', 'The repressor', 'The enhancer', 'The inhibitor', 'The activator', 'The repressor', 'active'),
(412, 34, 'None', 'Where is the Regulator_X found?', 'Inside the operon L14', 'In the cell nucleus', 'Within a gene sequence', 'In the cytoplasm', 'Inside the operon L14', 'active'),
(413, 34, 'None', 'What is the minimum number of times the do-while loop will execute?', 'Once', 'Twice', 'Zero', 'Three times', 'Once', 'active'),
(414, 34, 'None', 'What loop is the basis for the for loop?', 'The while loop', 'The do-while loop', 'The repeat-until loop', 'The infinite loop', 'The while loop', 'active'),
(415, 35, 'None', 'What is an object?', 'A programming function', 'A block of memory', 'A user interface element', 'A software tool', 'A block of memory', 'active'),
(416, 35, 'None', 'What does the new operator do?', 'Modifies an existing object', 'Deletes an object', 'Creates the object in the computer’s memory', 'Copies an object', 'Creates the object in the computer’s memory', 'active'),
(417, 35, 'None', 'What is a reference?', 'A type of variable', 'A programming language', 'A memory location', 'A user input method', 'A memory location', 'active'),
(418, 35, 'None', 'What is a constructor?', 'A function to delete objects', 'A method to copy objects', 'It allows to initialize the object', 'A tool to modify objects', 'It allows to initialize the object', 'active'),
(419, 35, 'None', 'Where does the object store its contents?', 'In the static fields', 'In the instance fields', 'In the local variables', 'In external storage', 'In the instance fields', 'active'),
(420, 35, 'None', 'What is an instance field?', 'A method within an object', 'A variable where the object stores its contents', 'A static property of an object', 'An external resource used by the object', 'A variable where the object stores its contents', 'active'),
(421, 35, 'None', 'What does an object have?', 'A name', 'A behavior', 'A color', 'A size', 'A behavior', 'active'),
(422, 36, 'None', 'What does a method carry out?', 'A calculation', 'An action', 'Data storage', 'Data retrieval', 'An action', 'active'),
(423, 36, 'None', 'What is a connection operator that is used between an object and a method?', 'The plus operator', 'The multiplication operator', 'The dot operator', 'The division operator', 'The dot operator', 'active'),
(424, 36, 'None', 'What is an explicit parameter?', 'A return value', 'An input', 'A global variable', 'An internal state', 'An input', 'active'),
(425, 37, 'None', 'How does the sub-class connect to the main class?', 'By inheriting properties', 'It uses the object from the main class', 'Through external libraries', 'By implementing interfaces', 'It uses the object from the main class', 'active'),
(426, 37, 'None', 'What is the difference between a sub-class and a main class?', 'The sub-class compiles and executes the program', 'The main class is smaller in size', 'The main class compiles and executes the program and the sub-class just contains the code of the program', 'The sub-class cannot exist without the main class', 'The main class compiles and executes the program and the sub-class just contains the code of the program', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(12, 26, 'Biology Final Exam', '60', 47, 'A Cumulative Final Exam for Biology', '2023-09-24 23:38:21'),
(13, 26, 'Cell Sub-Section Quiz', '60', 15, 'A Short Quiz About The Cell', '2023-09-24 23:39:32'),
(14, 26, 'Nucleus Sub-Section Quiz', '60', 5, 'A Short Quiz About The Nucleus', '2023-09-24 23:41:11'),
(15, 26, 'Ribosome Sub-Section Quiz', '60', 11, 'A Short Quiz About Ribosomes', '2023-09-24 23:41:13'),
(16, 26, 'Mitochondria Sub-Section Quiz', '60', 7, 'A Short Quiz About The Mitochondria', '2023-09-24 23:41:15'),
(17, 26, 'Enzymes Sub-Section Quiz', '60', 10, 'A Short Quiz About Enzymes', '2023-09-24 23:41:43'),
(18, 26, 'Chromosomes Sub-Section Quiz', '60', 6, 'A Short Quiz About Chromosomes', '2023-09-24 23:41:59'),
(19, 26, 'DNA Sub-Section Quiz', '60', 19, 'A Short Quiz About DNA', '2023-09-24 23:42:30'),
(20, 26, 'Amino Acids and Proteins Sub-Section Quiz', '60', 16, 'A Short Quiz About Amino Acids and Proteins', '2023-09-24 23:42:48'),
(21, 26, 'Integration of Concepts Sub-Section Quiz', '60', 11, 'A Short Quiz About The Integration of Concepts', '2023-09-24 23:42:58'),
(22, 26, 'DNA Elements Sub-Section Quiz', '60', 6, 'A Short Quiz About DNA Elements', '2023-09-24 23:43:12'),
(23, 26, 'Interpretation of Concepts Sub-Section Quiz', '60', 16, 'A Quiz About The Interpretation of Concepts ', '2023-09-24 23:43:26'),
(24, 26, 'Calculus Quiz', '60', 37, 'A Quiz About Calculus', '2023-09-24 23:43:47'),
(25, 26, 'Calculus Final Exam Part 1', '60', 45, 'First Part of the Final Exam for Calculus', '2023-09-24 23:44:13'),
(26, 26, 'Calculus Final Exam Part 2', '60', 37, 'Second Part of the Final Exam for Calculus', '2023-09-24 23:44:45'),
(27, 26, 'OOP Quiz', '60', 23, 'A Quiz About Object Oriented Programming', '2023-09-24 23:44:59'),
(28, 26, 'OOP Final Exam', '60', 22, 'Final Exam for Object Oriented Programming', '2023-09-24 23:45:15'),
(29, 26, 'Final Exam', '60', 49, 'A Cumulative Final Exam for Biology, Calculus, and OOP', '2023-09-24 23:45:38'),
(30, 26, 'Objects Sub-Section Quiz', '60', 11, 'A Short Quiz About Objects', '2023-09-24 23:45:38'),
(31, 26, 'Methods Sub-Section Quiz', '60', 10, 'A Short Quiz About Methods', '2023-09-24 23:45:38'),
(32, 26, 'Data Types Sub-Section Quiz', '60', 3, 'A Short Quiz About Data Types', '2023-09-24 23:45:38'),
(33, 26, 'Decisions Sub-Section Quiz', '60', 4, 'A Short Quiz About Decisions', '2023-09-24 23:45:38'),
(34, 26, 'Iterations Sub-Section Quiz', '60', 3, 'A Short Quiz About Iterations', '2023-09-24 23:45:38'),
(35, 26, 'OOP Objects Sub-Section Quiz', '60', 7, 'A Short Quiz About OOP Objects', '2023-09-24 23:45:38'),
(36, 26, 'OOP Methods Sub-Section Quiz', '60', 3, 'A Short Quiz About OOP Methods', '2023-09-24 23:45:38'),
(37, 26, 'Integration of OOP Concepts Sub-Section Quiz', '60', 2, 'A Short Quiz About Integration of OOP Concepts', '2023-09-24 23:45:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
