-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 09, 2024 at 02:00 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ierepertoire`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(150) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `author` varchar(300) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `ISBN` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `language` varchar(150) DEFAULT NULL,
  `pages` int UNSIGNED NOT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `cover_page` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `category_id` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `category`, `title`, `author`, `publisher`, `ISBN`, `description`, `language`, `pages`, `file_name`, `cover_page`) VALUES
(1, 'Computer Operating Systems', 'A Practical Introduction to Real-time Operating Systems (RTOS)', 'Douglas Wilhelm Harder, Jeff Zarnett, Vajih Montaghami, Allyson Giannikouris, Jürgen Sauermann, Melanie Thelen', 'University of Waterloo (2020); eBook (Creative Commons Licensed)', 'N/A', 'This book deals with the fundamentals of operating systems for use in real-time embedded systems. It is aimed at those who wish to develop RTOS-based designs, using either commercial or free products.', 'English', 703, 'https://drive.google.com/file/d/1MepMxDciZpaqkSdtfd26B7pYADac_9Tu/view?usp=drive_link', ''),
(2, 'Computer Operating Systems', 'Operating Systems: Three Easy Pieces', 'Remzi Arpaci-Dusseau, Andrea Arpaci-Dusseau', 'CreateSpace (September 1, 2018', '978-1985086593', 'A book covering the fundamentals of operating systems, including virtualization of the CPU and memory, threads and concurrency, and file and storage systems. Written by professors active in the field for 20 years, this text has been developed in the class', 'English', 714, 'https://drive.google.com/file/d/1xMb2gm5Gum048gEttmliz-uEQ25wyFne/view?usp=drive_link', ''),
(3, 'Computer Operating Systems', 'Operating System: From 0 to 1', 'Tu, Do Hoang', 'GitHub', 'N/A', 'Bootstrap yourself to write an OS from scratch. A book for self-learner.\n\nThis book helps you gain the foundational knowledge required to write an operating system from scratch. The book does not try to teach you everything, but enough to enable you to le', 'English', 0, 'https://drive.google.com/file/d/16rqUEGYeTH0WKp6DEAulPKdzHnp6KM1B/view?usp=drive_link', ''),
(4, 'Computer Operating Systems', 'Operating Systems and Middleware: Supporting Controlled Interaction', 'Max Hailperin', 'Course Technology; (2006); eBook (Creative Commons Licensed, 2019)', '978-0534423698', 'Intended for juniors, seniors, and first-year graduate students, this book takes a modern approach to the traditional Operating Systems course. By using this innovative text, students will obtain an understanding of how contemporary operating systems and ', 'English', 500, 'https://drive.google.com/file/d/1a9SbUReD0BqVv5omRV6GdWkHJWRdf_N7/view?usp=drive_link', ''),
(5, 'Computer Operating Systems', 'Computer Science from the Bottom Up', 'Ian Wienand', 'BottomUpCS.com; eBook (Creative Commons Licensed)', 'N/A', 'This book uses broad coverage and clear exposition to present a complete picture of the dynamic computer science field. Accessible to students from all backgrounds, it uses a language-independent context to encourage the development of a practical, realis', 'English', 309, 'https://drive.google.com/file/d/1y4J0MnjL7weeD4saxrKa9MpfHV7rsJ6h/view?usp=drive_link', ''),
(6, 'Computer Operating Systems', 'Think OS - A Brief Introduction to Operating Systems', 'Allen B. Downey', 'Green Tea Press', 'N/A', 'Think OS is an introduction to Operating Systems for programmers.\n\nIn many computer science programs, Operating Systems is an advanced topic. By the time students take it, they usually know how to program in C, and they have probably taken a class in Comp', 'English', 99, 'https://drive.google.com/file/d/1JlSTAKdKjb_EmMvrdFbAHzuGsf4fZ5Fn/view?usp=drive_link', ''),
(7, 'Computer Operating Systems', 'The Little Book about OS Development', 'Erik Helin, Adam Renberg', 'GitHub (2015-01-19)', 'N/A', 'This book is a practical guide to writing your own x86 operating system. It is designed to give enough help with the technical details while at the same time not reveal too much with samples and code excerpts. We’ve tried to collect parts of the vast (and', 'English', 78, 'https://drive.google.com/file/d/1wALF9RsngKwlyBb-5bvfEhqRWEIx_gX4/view?usp=drive_link', ''),
(8, 'Computer Operating Systems', 'TinyOS, an Embedded Operating System', 'Alexander Kossler', 'BAKKALAUREATSARBEIT', 'N/A', 'Subject of this work is to give an introduction to the TinyOS Embedded Operating System. It explains the internal structure of the OS and points out its characteristics by comparing it to another embedded Operating System called MicroC/OS-II.\r\n\r\nBy presen', 'English', 55, 'https://drive.google.com/file/d/1WFHMxNEwc0mYHwrCwKiENp0_qYgzltQt/view?usp=drive_link', ''),
(9, 'Computer Operating Systems', 'PaulOS: An 8051 Real-Time Operating System', 'Paul P. Debono', 'Bookboon (2013)', '978-8740304497', 'This text book is intended for under-graduate Engineering and/or IT students studying micro-controllers and embedded systems. It covers mainly the Intel 8051 family of micro-controllers starting with the basic architecture and then moves on to assembly la', 'English', 291, 'https://drive.google.com/file/d/1bW-b6H3E9_vknTyu2blK9TphVaRLfkwG/view?usp=drive_link', ''),
(10, 'Computer Operating Systems', 'How to Make a Computer Operating System from Scratch using C/C++', 'Samy Pesse', 'GitBooks (2014)', 'N/A', 'This book is about how to write a computer operating system in C/C++ from scratch. The goal is to build a very simple UNIX-based operating system, not just a \'proof-of-concept\'. The OS should be able to boot, start a userland shell, and be extensible.', 'English', 29, 'https://drive.google.com/file/d/1obduIkWWllXIpJa6CR7e4fYL7L8dYMi7/view?usp=drive_link', ''),
(11, 'Computer Operating Systems', 'Project Oberon: The Design of an Operating System and Compiler', 'Niklaus Wirth, Jurg Gutknecht', 'Course Technology, Revised Edition (July 2013), Update Continuously', '978-0201544282', 'Project Oberon contains a definition of the Oberon Language and describes its relation to Modula-2 and the software tools developed with the system. This definitive, first-hand account of the design, development, and implementation of Oberon completes the', 'English', 441, 'https://drive.google.com/file/d/1ZfwNgDnrWPomBPGG7ZkF017d_XsTYuL2/view?usp=drive_link', ''),
(12, 'Computer Operating Systems', 'Operating Systems Principles', 'Lubomir F. Bic, Alan C. Shaw', 'Prentice Hall; 3 edition (December 21, 2007)', '978-0136006633', 'This book presents the fundamentals of operating systems that remain constant as new, more advanced systems are introduced and also integrates and highlights key distributed operating systems issues. \n\nThe main topics presented include message-based synch', 'English', 944, '', ''),
(13, 'Computer Operating Systems', 'Modeling Reactive Systems With Statecharts: The Statemate Approach', 'David Harel, Michal Politi', 'Mcgraw-Hill (Tx) (October 8, 1998)', '978-0070262058', 'The book provides a detailed description of a set of languages for modelling reactive systems, which underlies the STATEMATE toolset. The approach is dominated by the language of Statecharts, used to describe behavior, combined Activity-charts for describ', 'English', 404, 'https://drive.google.com/file/d/1tJL0qfoFcNl4ZPPK-QSbjZSMWrnnFGd4/view?usp=drive_link', ''),
(14, 'Computer Operating Systems', 'Real-Time Systems, Architecture, Scheduling, and Application', 'Seyed Morteza Babamir', 'IN-TECH (April , 2012); eBook (Creative Commons Licensed)', '978-953-51-0510-7', 'This book is a rich textbook for introducing diverse aspects of real-time systems including architecture, specification and verification, scheduling and real world applications. It is useful for advanced graduate students and researchers in a wide range o', 'English', 352, 'https://drive.google.com/file/d/1TjZ4tvfvsrMpmABOz39y43pKOKuobHZe/view?usp=drive_link', ''),
(15, 'Computer Operating Systems', 'A Technical History of Apple\'s Operating Systems', 'Amit Singh', 'kernelthread.com and osxbook.com', 'n/a', 'These documents discuss operating systems that Apple has created in the past, and many that it tried to create. Through this discussion, we will come across several technologies the confluence of which eventually led to Mac OS X. An important goal of the ', 'English', 340, 'https://drive.google.com/file/d/1ehCiliYcAL-brh1YssZMGSYksDmdx7j2/view?usp=drive_link', ''),
(16, 'Computer Operating Systems', 'An Operating Systems Vade Mecum, Second Edition', 'Raphael A. Finkel', 'Prentice Hall 1988', '978-0136374558', 'Traditionally, a vade mecum (pronounced \"VAHdee MAYkem\") is a laboratory manual that guides the student step by step through complex procedures. Operating systems are complex mixtures of policy and mechanism, of algorithm and heuristic, and of theoretical', 'English', 363, 'https://drive.google.com/file/d/1VqdAe8l7TpKni-_wkkzHAroNBEpw1R9l/view?usp=drive_link', ''),
(17, 'Computer Operating Systems', 'Patterns for Time-Triggered Embedded Systems: Building Reliable Applications with the 8051 Family of Microcontrollers', 'Michael J. Pont', 'Addison-Wesley; 1st edition (2001), ebook (SafeTTy Systems Edition, 2014)', '978-0201331387', 'In this book, Michael J Pont introduces 70 powerful, proven design techniques (\"patterns\") for enhancing rapid development and reliability in embedded systems based on the popular 8051 microcontroller family. \n\nWith a focus on reliability, it discusses te', 'English', 575, '', ''),
(18, 'Computer Operating Systems', 'Distributed Systems, 3rd Edition', 'Maarten van Steen, Andrew S. Tanenbaum', 'CreateSpace; 3.01 edition (February 1, 2017);', '978-1543057386', 'This book covers the principles, advanced concepts, and technologies of distributed systems in detail, including: communication, replication, fault tolerance, and security. \n\nIntended for use in a senior/graduate level distributed systems course or by pro', 'English', 596, 'https://drive.google.com/file/d/1WzcH1r90eiFIt3kM9e6GUwmiltea37R8/view?usp=drive_link', ''),
(19, 'Computer Operating Systems', 'Operating System Concepts', 'Marvin Solomon', 'Unversity of Wisconsin', 'N/A', 'This book combines instruction on concepts with real-world applications so that students can understand the practical usage of the content, keeps it fresh and up-to-date with contemporary examples of how operating systems function.', 'English', 1278, 'https://drive.google.com/file/d/14_4wO5vjVNLmgCKjkr3J5dnyHc7OwZ6z/view?usp=drive_link', ''),
(20, 'Computer Operating Systems', 'Programming Persistent Memory: A Comprehensive Guide for Developers', 'Steve Scargall', 'Apress; 1st ed. edition (January 10, 2020); eBook (Creative Commons Licensed)', '978-1484249314', 'This book describes the Persistent Memory technology and why it is exciting the industry. It covers the operating system and hardware requirements as well as how to create development environments using emulated or real persistent memory hardware. \n\nIt ex', 'English', 457, 'https://drive.google.com/file/d/1skL2f33dklV2pmeZw4nakQ-X227QaEzW/view?usp=drive_link', ''),
(21, 'Programming ', 'Handbook of Digital Face Manipulation and Detection: From DeepFakes to Morphing Attacks', 'Christian Rathgeb, Ruben Tolosana, Ruben Vera-Rodriguez, Christoph Busch', 'Springer; 1st ed. (February 1, 2022); eBook (Creative Commons Licensed)', '978-3030876661', 'This open access book provides the first comprehensive collection of studies dealing with the hot topic of digital face manipulation such as DeepFakes, Face Morphing, or Reenactment. It combines the both biometrics and media forensics fields including con', 'English', 481, 'https://drive.google.com/file/d/1WmmbS9Tha0jyJ3YH7uiAlG75X7xg1V4o/view?usp=drive_link', ''),
(22, 'Programming ', 'Competitive Programmer\'s Handbook', 'Antti Laaksonen', 'Code Submission Evaluation System (Draft July 3, 2018)', 'N/A', 'The purpose of this book is to give you a thorough introduction to competitive programming. It is assumed that you already know the basics of programming, but no previous background in competitive programming is needed. \n\nThe book is especially intended f', 'English', 296, 'https://drive.google.com/file/d/17BpeBZ-yqepdbXPSiKwCJ2rbXqkiEX4i/view?usp=drive_link', ''),
(23, 'Programming ', 'Aesthetic Programming: A Handbook of Software Studies', 'Winnie Soon and Geoff Cox', 'Open Humanities Press (December 31, 2020)', '978-1785420948', 'The book explores the technical as well as cultural imaginaries of programming from its insides. It follows the principle that the growing importance of software requires a new kind of cultural thinking - and curriculum - that can account for, and with wh', 'English', 298, 'https://drive.google.com/file/d/14C-3JquOe3CVuZ9B8TyMyemJUSaJhs-K/view?usp=drive_link', ''),
(24, 'Programming ', 'The Hacker\'s Underground Handbook: Learn How to Hack and What it Takes to Crack even the Most Secure Systems!', 'David Melnichuk', 'CreateSpace (March 22, 2010)', '978-1451550184', 'Learn how to hack and what it takes to crack even the most secure systems! The information given in this underground handbook will put you into a hacker\'s mindset and teach you all of the hacker\'s secret ways. The Hacker\'s Underground Handbook is for the ', 'English', 116, 'https://drive.google.com/file/d/1ALcDag-gar7zg_sNLyLdvjHYaSE75NNn/view?usp=drive_link', ''),
(25, 'Programming ', 'Python Data Science Handbook: Essential Tools for Working with Data', 'Jake VanderPlas', 'O\'Reilly Media; 1 edition (December 10, 2016); eBook (2018. Updated continuously)', '978-1491912058', 'For many researchers, Python is a first-class tool mainly because of its libraries for storing, manipulating, and gaining insight from data. Several resources exist for individual pieces of this data science stack, but only with the Python Data Science Ha', 'English', 548, 'https://drive.google.com/file/d/1Shf64bNFCEp1IBkXxkSws4BvmMQVL7al/view?usp=drive_link', ''),
(26, 'Programming ', 'The InfoSec Handbook: An Introduction to Information Security', 'Umesh Hodeghatta Rao, Umesha Nayak', 'Apress; 1st ed. edition; eBook (Creative Commons Licensed)', '978-1430263821', 'This book offers the reader an organized layout of information that is easily read and understood. Allowing beginners to enter the field and understand the key concepts and ideas, while still keeping the experienced readers updated on topics and concepts.', 'English', 376, 'https://drive.google.com/file/d/1ObxG87_C1rbbUtrCh4u85EEFrMNmjuJn/view?usp=drive_link', ''),
(27, 'Programming ', 'The CSS Handbook', 'Flavio Copes', 'GitHub', 'N/A', 'This book to help you quickly learn CSS and get familiar with the advanced CSS topics. It is aimed at a vast audience, from beginners to professionals. It talks exclusively about styling HTML documents, although CSS can be used to style other things too.', 'English', 184, 'https://drive.google.com/file/d/1rAgK5hK4_uJ21t9Ehsf5jYoHr8xinQh0/view?usp=drive_link', ''),
(28, 'Programming ', 'The Python Handbook', 'Flavio Copes', 'GitHub', 'N/A', 'Whether you have never written a line of code or you have some programming experience, this book is the right choice because it will inevitably put you in front of new, high-paying job opportunities, ...', 'English', 93, 'https://drive.google.com/file/d/1PERcUvcXrjXASH1PsjAgz3GT9ftRdBlG/view?usp=drive_link', ''),
(29, 'Programming ', 'The Java Web Scraping Handbook', 'Kevin Sahin', 'ScrapingBee (March 06, 2020)', 'N/A', 'Web scraping or crawling is the art of fetching data from a third party website by downloading and parsing the HTML code to extract the data you want. It can be hard. From bad HTML code to heavy Javascript use and anti-bot techniques, it is often tricky. ', 'English', 72, 'https://drive.google.com/file/d/1ZDzbpBYdfh1vRpBmRNr9dvcqIEOnZcOD/view?usp=drive_link', ''),
(30, 'Programming ', 'Handbook of Software Engineering Methods', 'Lara Letaw', 'Oregon State University (March 28, 2022); eBook (Creative Commons Licensed)', 'N/A', 'Software engineering is the art and science of using different methods to efficiently create extensible, sustainable programs that solve problems people care about.\n\nThis book is about software engineering methods: Ways people achieve specific objectives ', 'English', 790, 'https://drive.google.com/file/d/1hiX8gvCx7XRn7b_SNRsovcmqySV1CYIJ/view?usp=drive_link', ''),
(31, 'Programming ', 'Handbook of Software Reliability Engineering', 'Michael R. Lyu', 'Mcgraw-Hill (Tx) (April 1996); eBook (updated, May 23, 2005)', 'N/A', 'This book is the definitive guide to today\'s most-used software reliability techniques and solutions, contributed by the worlds leading reliability experts. It takes you step by step through software reliability measurement and prediction, the attributes ', 'English', 150, 'https://drive.google.com/file/d/1akx5pckLwujVK2DgCFeGt9zNxoDFKFXH/view?usp=drive_link', ''),
(32, 'Programming ', 'The Node.js Handbook', 'Flavio Copies', 'Free Code Camp', 'N/A', 'This handbook is a getting started guide to Node.js, the server-side JavaScript runtime environment. The Node.js Handbook follows the 80/20 rule: learn in 20% of the time the 80% of a topic. Node.js is an open source cross-platform. Since its introduction', 'English', 189, 'https://drive.google.com/file/d/1sqFVAXX6Y4wL1idjLgN30qI3DsiyuOhS/view?usp=drive_link', ''),
(33, 'Programming ', 'DB2 Express-C: The Developer Handbook for XML, PHP, C/C++, Java, and .NET', 'Whei-Jen Chen, John Chun, Naomi Ngan, Rakesh Ranjan, Manoj K. Sardana', 'IBM Redbooks (2006)', '978-0738496757', 'DB2 Express Edition for Community (DB2 Express-C) is a no charge data server for use in development and deployment. DB2 Express-C supports a full range of APIs, drivers, and interfaces for application development including PHP, C/C++, and .NET. In additio', 'English', 350, 'https://drive.google.com/file/d/1oB6cLBwIFF_NRv5PcAqcl02Z91FHlDZH/view?usp=drive_link', ''),
(34, 'Programming ', 'The Vue Handbook: A Thorough Introduction to Vue.js', 'Flavio Copes', 'Leanpub', 'n/A', 'Vue.js is an open source JavaScript library for building modern, interactive web applications. With a rapidly growing community and a strong ecosystem, Vue.js makes developing complex single page applications a breeze. Its component-based approach, intuit', 'English', 122, 'https://drive.google.com/file/d/19hDwo-gAeEEeU9GxdUvDhERAAu8zPyFb/view?usp=drive_link', ''),
(35, 'Programming ', 'The Biostar Handbook', 'Dr. Istvan Albert', 'Biostar', '978-0-578-80435-4', 'This practical book introduces readers to bioinformatics, the scientific discipline at the intersection of biology, computer science, and statistical data analytics dedicated to the digital processing of genomic information.\n\nThe contents of this book hav', 'English', 1054, 'https://drive.google.com/file/d/1AotBJlVFcUwC8jMxNccFImGt24dFyq66/view?usp=drive_link', ''),
(36, 'Programming ', 'Statistical Foundations of Machine Learning: The Handbook', 'Gianluca Bontempi', 'Universite Libre de Bruxelles (February 15, 2022)', 'N/A', 'We are in the era of big data. There are essentially two reasons why people gather increasing volumes of data: first, they think some valuable assets are implicitly coded within them, and second computer technology enables effective data storage at reduce', 'English', 319, 'https://drive.google.com/file/d/1nKPFllkTXLBmUGgJa5W4LqnfVSUL7zpL/view?usp=drive_link', ''),
(37, 'Programming ', 'Computer Security Handbook', 'Seymour Bosworth, M. E. Kabay, Eric Whyne', 'Wiley; 6th edition (March 24, 2014); eBook (Internet Archive Edition)', '978-1118127063', 'Computer security touches every part of our daily lives from our computers and connected devices to the wireless signals around us. Breaches have real and immediate financial, privacy, and safety consequences.\r\n\r\nThis handbook has compiled advice from top', 'English', 2207, 'https://drive.google.com/file/d/1RhmuJX2kycDwmvWLj7Q3YK_8VKVFPrgM/view?usp=drive_link', ''),
(38, 'Programming ', 'Information Security Management Handbook', 'Micki Krause, Harold F. Tipton', 'CRC Press, LLC', '9781439892091', 'Updated annually, this book is the most comprehensive and up-to-date reference available on information security and assurance. Bringing together the knowledge, skills, techniques, and tools required of IT security professionals, it facilitates the up-to-', 'English', 440, 'https://drive.google.com/file/d/1ObxG87_C1rbbUtrCh4u85EEFrMNmjuJn/view?usp=drive_link', ''),
(39, 'Programming ', 'Android Developer Fundamentals Course: Practical Workbook', 'Google Developer Training Team', 'GitBook (2017)', 'N/A', 'This book prepares you to take the exam for the Associate Android Developer Certification. You learn basic Android programming concepts and build a variety of apps, starting with Hello World and working your way up to apps that use content providers and l', 'English', 566, 'https://drive.google.com/file/d/1QZUmle_nRZaIeGeUHBJaZTp-TieLfDdC/view?usp=drive_link', ''),
(40, 'Programming ', 'The Busy Coder\'s Guide to Android Development', 'Mark L. Murphy', 'CommonsWare, LLC (July 20, 2011); eBook (Final Version, 2019)', ' 978-0981678054', 'This book tries to cover as much material as possible, but aimed more for people new to mobile development. The book includes dozens of sample projects, ready to run with your copy of the SDK - not just one huge project where you have difficulty finding t', 'English', 555, 'https://drive.google.com/file/d/1c138clxpPXN_KK1RC4Ck_feCO3_NifNs/view?usp=sharing', ''),
(41, 'Data Communication and Networks', 'Statistical Analysis of Networks', 'Konstantin Avrachenkov, Maximilien Dreveton', 'Now Publishers (September 17, 2022); eBook (Creative Commons Licensed)', '978-1638280507', 'This book is a general introduction to the statistical analysis of networks, and can serve both as a research monograph and as a textbook. Numerous fundamental tools and concepts needed for the analysis of networks are presented, such as network modeling,', 'English', 237, 'https://drive.google.com/file/d/1gYapaqHZz1el42ciXM1m6GFvMmKuNP6h/view?usp=sharing', ''),
(42, 'Data Communication and Networks', 'A Foundation in Digital Communication', 'Amos Lapidoth', 'Cambridge University Press; 2nd edition (April 7, 2017)', '978-1107177321', 'This intuitive yet rigorous introduction derives the core results of digital communication from first principles, whilst theory, rather than industry standards, motivates the engineering approaches. With every concept defined mathematically, and including', 'English', 922, 'https://drive.google.com/file/d/1h56w0aRhRuTYMXMotlxcy_tkmi0AZWYm/view?usp=sharing', ''),
(43, 'Data Communication and Networks', 'Computer Networks: A Systems Approach', 'Larry Peterson and Bruce Davie', 'Morgan Kaufmann, 5th Edition (2011); eBook (6th Edition, November 2019)', '978-0123850591', 'This book explores the key principles of computer networking, with examples drawn from the real world of network and protocol design. Using the Internet as the primary example, this best selling and classic textbook explains various protocols and networki', 'English', 434, 'https://drive.google.com/file/d/1NoLlrSf5T3yIjazRriOFQC8Xc9MyOOIB/view?usp=sharing', ''),
(44, 'Data Communication and Networks', 'Mobile Edge Computing', 'Yan Zhang', 'Springer (October 1, 2021); eBook (Creative Commons Licensed)', '978-3030839437', 'It offers comprehensive, self-contained knowledge on Mobile Edge Computing (MEC), which is a very promising technology for achieving intelligence in the next-generation wireless communications and computing networks.\n\nThe book starts with the basic concep', 'English', 123, 'https://drive.google.com/file/d/1brJjsiURP0KwsrREpyXZqD9YEKWnmj4n/view?usp=sharing', ''),
(45, 'Data Communication and Networks', 'Introduction to Networking: How the Internet Works', 'Charles Severance', 'reateSpace Independent Publishing Platform; 1 edition (May 29, 2015)', '978-1511654944', 'This book demystifies the amazing architecture and protocols of computers as they communicate over the Internet. While very complex, the Internet operates on a few relatively simple concepts that anyone can understand.\r\n\r\nNetworks and networked applicatio', 'English', 119, 'https://drive.google.com/file/d/172xsXxIE5GHuaZxtK1H11GqGIyFUYHY_/view?usp=sharing', ''),
(46, 'Data Communication and Networks', 'Networking Services: QoS, Signaling, Processes', 'Harry Perros', 'CreateSpace (February 13, 2014); eBook (2021)', '978-1495437489', 'The book has been structured around the Next Generation Network (NGN) framework, which separates the transport network, services, and signaling protocols into the service stratum and the transport stratum.\n\nThe service stratum is the control plane for the', 'English', 256, 'https://drive.google.com/file/d/1Noioybe1uTDVkpxRDa8OSiogrnaWBsJw/view?usp=sharing', ''),
(47, 'Data Communication and Networks', 'Network-on-Chip: The Next Generation of System-on-Chip Integration', 'Santanu Kundu, Santanu Chattopadhyay', 'CRC Press; 1st edition (July 26, 2017)', '978-1138749351', 'This book examines the current issues restricting chip-on-chip communication efficiency, and explores Network-on-chip (NoC), a promising alternative that equips designers with the capability to produce a scalable, reusable, and high-performance communicat', 'English', 388, 'https://drive.google.com/file/d/1P8fWIYvcC7A83264iTttw3vLb-SUBxdb/view?usp=sharing', ''),
(48, 'Data Communication and Networks', 'Computer Networks: Performance and Quality of Service', 'Ivan Marsic', 'Rutgers University (Last updated on June 11, 2013. Updated Continuously)', 'N/A', 'This book opinions modern computer CPA networks with a particular give attention to performance and quality of support. There is a need to look in direction of future, where hard wired and wireless/mobile networks will probably be mixed and exactly where ', 'English', 595, 'https://drive.google.com/file/d/1KsfcPSfG-l0sPVJiPtmDNDHGrUfkMfnO/view?usp=sharing', ''),
(49, 'Data Communication and Networks', 'Paths: Why is Life Filled with So Many Detours?', 'Andras Gulyas, Zalan Heszberger, Jozsef Biro', 'Birkhauser (2021); eBook (Creative Commons Licensed)', '978-3030475444', 'This open access book explores the amazing similarity between paths taken by people and many other things in life, and its impact on the way we live, teach and learn.\r\n\r\nOffering insights into the new scientific field of paths as part of the science of ne', 'English', 97, 'https://drive.google.com/file/d/1xLrsifRitfARFR-pkEiYHWluA3QrTW8h/view?usp=sharing', ''),
(50, 'Data Communication and Networks', 'Distributed Control of Robotic Networks: A Mathematical Approach to Motion Coordination Algorithms', 'Francesco Bullo, Jorge Cortes, Sonia Martinez', 'Princeton University Press (2009); eBook (Online Edition, June 4, 2008)', '978-0691141954', 'This self-contained introduction to the distributed control of robotic networks offers a distinctive blend of computer science and control theory. The book presents a broad set of tools for understanding coordination algorithms, determining their correctn', 'English', 312, 'https://drive.google.com/file/d/1EyqkWEFBTQupNHFSG5PWTYiRBcTWmi03/view?usp=sharing', ''),
(51, 'Data Communication and Networks', 'Introduction to Data Communications', 'Eugene Blanchard', 'Southern Alberta Institute of Technology, Revision 2.0 (2007)', 'N/A', 'The purpose of this book is to fill this void and introduce the concepts of data communication with a slight leaning towards the Linux operating system.\r\n\r\nWritten to introduce readers to the fundamental concepts of electronic communications systems, data', 'English', 320, 'https://drive.google.com/file/d/12n3_xBetcon849pyZ1fhRND_1aPoiWZq/view?usp=sharing', ''),
(52, 'Data Communication and Networks', 'Internet Daemons: Digital Communications Possessed', 'Fenwick McKelvey', 'University of Minnesota Press; 1 edition (October 30, 2018)', '978-1517901547', 'This book weaves together history, theory, and policy to give a full account of where daemons come from and how they influence our lives - including their role in hot-button issues like network neutrality. It asks important questions about how much contro', 'English', 336, 'https://drive.google.com/file/d/1BO6ZFtwpO_JLMthaFDjR_Z_CEIn743vG/view?usp=sharing', ''),
(53, 'Data Communication and Networks', 'Computer and Network Organization', 'Maarten van Steen, Henk Sips', 'Prentice Hall; 1st edition (December 1995)', '978-0133824254', 'This book introduces the technical principles of computer architecture, operating systems and computer networks and provides a practical overview. Contrary to many other introductory texts which tell what computer systems and networks do, this innovative ', 'English', 560, 'https://drive.google.com/file/d/1A1l2AJHWFomXnHNOj2SCrDgwI_ay5KDI/view?usp=sharing', ''),
(54, 'Data Communication and Networks', 'Principles of Digital Communication', 'Robert G. Gallager', 'Cambridge University Press (March 24, 2008); eBook (OpenCourseWare)', '978-0521879071', 'The renowned communications theorist Robert Gallager brings his lucid writing style to the study of the fundamental system aspects of digital communication for a one-semester course for graduate students.\r\n\r\nWith the clarity and insight that have characte', 'English', 378, 'https://drive.google.com/file/d/17QH-nNDKu1jyYDYQjucpq6zX5zb69iu-/view?usp=sharing', ''),
(55, 'Data Communication and Networks', 'Network Coding Theory', 'Raymond W. Yeung, S.-Y. R. Li, N. Cai, and Z. Zhang, Tracey Ho, Desmond S. Lun', 'Now Publishers Inc (June 16, 2006)', '978-1933019246', 'This book provides a tutorial on the basic of Network Coding theory. It presents the material in a transparent manner without unnecessarily presenting all the results in their full generality. Store-and-forward had been the predominant technique for trans', 'English', 97, 'https://drive.google.com/file/d/14RCaz7_aUbkrEk4w4h-2ws8QJIVilT1S/view?usp=sharing', ''),
(56, 'Data Communication and Networks', 'Error-Correction Coding and Decoding', 'Martin Tomlinson, Cen Jung Tjhai, Marcel A. Ambroze, Mohammed Ahmed, Mubarak Jibril', 'Martin Tomlinson, Cen Jung Tjhai, Marcel A. Ambroze, Mohammed Ahmed, Mubarak Jibril', '978-3319511023', 'This book discusses both the theory and practical applications of self-correcting data, commonly known as Error-Correcting Codes. The applications included demonstrate the importance of these codes in a wide range of everyday technologies, from smartphone', 'English', 527, 'https://drive.google.com/file/d/1qh5d0GJg2IIA2Hm_KQeI3HVX0FMhTZDG/view?usp=sharing', ''),
(57, 'Data Communication and Networks', 'Fundamentals of Wireless Communication', 'David Tse and Pramod Viswanath', 'Cambridge University Press (June 27, 2005); eBook (Web Edition, February 18, 2010)', '978-0521845274', 'The past decade has seen many advances in physical layer wireless communication theory and their implementation in wireless systems. This textbook takes a unified view of the fundamentals of wireless communication and explains the web of concepts underpin', 'English', 644, 'https://drive.google.com/file/d/1fYtQeBu9sc593beA8OnJNYQT3HQ7gxdB/view?usp=sharing', ''),
(58, 'Data Communication and Networks', 'The World of Peer-to-Peer (P2P)', 'Wikipedia Contributors', 'WikiBooks', 'N/A', 'Peer-to-peer (P2P) technology, or peer computing, is a paradigm that is viewed as a potential technology for redesigning distributed architectures and, consequently, distributed processing. Yet the scale and dynamism that characterize P2P systems demand t', 'English', 134, 'https://drive.google.com/file/d/1xD4r19qbjherdqCWu7CMDLoCRjsjUXw3/view?usp=sharing', ''),
(59, 'Data Communication and Networks', 'Information Theory and Network Coding', 'Raymond W. Yeung, S.-Y. R. Li, N. Cai, and Z. Zhang, Tracey Ho, Desmond S. Lun', 'Springer; (November 24, 2010); eBook (Final Draft, 2008)', '978-1441946300', 'This book provides a rigorous treatment of information theory for discrete and continuous systems and a comprehensive treatment of network coding theory with detailed discussions on Linear Network Codes, convolutional network codes, and multi-source netwo', 'English', 597, 'https://drive.google.com/file/d/1sqTSMzeWtavWvURwxSSAgd320B3vSeQG/view?usp=sharing', ''),
(60, 'Data Communication and Networks', 'Essential Coding Theory', 'Venkatesan Guruswami, Atri Rudra, Madhu Sudan', 'University at Buffalo (October 3, 2023); eBook (Creative Commons Licensed)', 'N/A', 'Error-Correcting Codes (henceforth, just codes) are clever ways of representing data so that one can recover the original information even if parts of it are corrupted. The basic idea is to judiciously introduce redundancy so that the original information', 'English', 355, 'https://drive.google.com/file/d/1JiQswRB9FGDF9_56WOSWezP_N-Xc1aBa/view?usp=sharing', ''),
(61, 'Computer Hardware and Personal Computers', 'Help! My Computer is Broken (How do I Fix It?)', 'Barry Collins', 'Raspberry Pi Press (December 11, 2020', '978-1912047901\r', 'Want to know how to fix common computer problems, without having to wade through technical jargon? Or are you the family on-call technical support person, and need a bit of help?\r\n\r\nThis book takes the most common computer problems and tells you how to fi', 'English', 144, 'https://drive.google.com/file/d/1Bt4VnoJiym6lN-cl-pAjW3Z8L4hnXqLd/view?usp=sharing', ''),
(62, 'Computer Hardware and Personal Computers', 'Digital Circuit Projects: An Overview of Digital Circuits Through Implementing Integrated Circuits', 'Charles W. Kann', 'Gettysburg College; eBook (Creative Commons Licensed)', 'N/A', 'To understand how a computer works, it is essential to understand the digital circuits which make up the CPU. This text introduces the most important of these digital circuits; adders, decoders, multiplexers, D flip-flops, and simple state machines.', 'English', 121, 'https://drive.google.com/file/d/1JoastCsjQ_JtLADM67bynvVPBo-GYnGe/view?usp=sharing', ''),
(63, 'Computer Hardware and Personal Computers', 'The Official Raspberry Pi Beginner\'s Guide', 'Gareth Halfacre', 'Raspberry Pi Press (2019); eBook (4th Edition, 2020, Creative Commons Licensed)', '978-1912047680/ 978-1-912047-73-4', 'The Raspberry Pi is a small, clever, British-built computer that’s packed with potential. Made using the same technology you find in a smartphone, the Raspberry Pi is designed to help you learn coding, discover how computers work, and build your own amazi', 'English', 248, 'https://drive.google.com/file/d/1V6jjRr_PvredXqcC6s92ce3ci_Q7APex/view?usp=sharing', ''),
(64, 'Computer Hardware and Personal Computers', 'Retrograde - The Ultimate Guide to Pre-millennial PC Hardware', 'Ben Hardwidge', 'Raspberry Pi Press (July 14th, 2022)', 'N/A', 'Travel back to the Neolithic days of the 286, CGA graphics and the first sound cards with our free guide to vintage PC hardware. From the very first PC to the Nvidia GeForce, we tell the development stories of loads of early PC CPUs, graphics cards, sound', 'English', 97, 'https://drive.google.com/file/d/1AiFiYs7lZIaamxB8QwZRjUE_d-6L4OlS/view?usp=sharing', ''),
(65, 'Computer Hardware and Personal Computers', 'Build a Computer from Scratch', 'Michael Crider, Wikipedia Contributors', 'Life Savvy Inc. (2019)', 'N/A', 'Would you like to learn how to build a computer system? Building your own computer system lets you get exactly the computer system that you need. This book will take you through all of the steps to create a powerful computer system. It contains over 120 p', 'English', 111, 'https://drive.google.com/file/d/1-Gz8Lk-bw5FFAaCPva2U2QecSxTsbY73/view?usp=sharing', ''),
(66, 'Computer Hardware and Personal Computers', 'Computer Arithmetic of Geometrical Figures. Algorithms and Hardware Design', 'Computer Arithmetic of Geometrical Figures. Algorithms and Hardware Design', 'Mathematics in Computer Computers - MiC (July 13, 2011); Second Edition 2013', '978-1411631847', 'This book describes various versions of processors, designed for affine transformations of many-dimensional figures - planar and spatial. This processors is oriented to affine transformation of unstructured geometrical figures with arbitrary points distri', 'English', 150, 'https://drive.google.com/file/d/1qGfIHialhWauye4byYlASnfHSnFlD2dY/view?usp=sharing', ''),
(67, 'Computer Hardware and Personal Computers', 'The Computers That Made Britain: Inside the Home Computer Revolution of the 1980s', 'Tim Danton', 'Raspberry Pi Press (May 28, 2021); eBook (Creative Commons Edition)', '978-1912047857', 'The home computer boom of the 1980s brought with it now iconic machines such as the ZX Spectrum, BBC Micro, and Commodore 64. Those machines would inspire a generation. Written by Tim Danton.\r\n\r\nThis book tells the story of 19 of those computers – and wha', 'English', 297, 'https://drive.google.com/file/d/1KigGAMAfzc3GVCBrEb3uqCaAZ2ZIEaY8/view?usp=sharing', ''),
(68, 'Computer Hardware and Personal Computers', 'Code: The Hidden Language of Computer Hardware and Software', 'Charles Petzold', 'Microsoft Press; 1 edition (October 21, 2000); eBook (Internet Archive, 2009)', '978-0735611313', 'What do flashlights, the British invasion, black cats, and seesaws have to do with computers? In CODE, they show us the ingenious ways we manipulate language and invent new means of communicating with each other. And through CODE, we see how this ingenuit', 'English', 363, 'https://drive.google.com/file/d/1KE14MYCK1WB_JYkT-BZQPpVk0OD6bq_E/view?usp=sharing', ''),
(69, 'Computer Hardware and Personal Computers', 'PC Assembly Language', 'Paul A. Carter', 'Lulu; 1 edition (2003); 2 edition (2010); eBook (November 16, 2019)', 'N/A', 'The purpose of this book is to give the reader a better understanding of how computers really work at a lower level than in programming languages like Pascal. The tutorial has extensive coverage of interfacing assembly and C code and so might be of intere', 'English', 195, 'https://drive.google.com/file/d/1nJ5iVVtDWZt0iW3LJUIejxh2AVkzfKns/view?usp=sharing', ''),
(70, 'Computer Hardware and Personal Computers', 'Computer Desktop Encyclopedia', 'Alan Freedman', 'Osborne/McGraw-Hill; 9th edition (September 24, 2001); eBook (2014, Updated Continuously)', '978-0072193060', 'This desktop encyclopedia contains more than 10,000 terms, which are explained accurately and lucidly. There 800 illustrations that are used to show devices and clarify concepts.\r\n\r\nThe expansive, \"encyclopedic\" format of the book makes it possible to exp', 'English', 1471, 'https://drive.google.com/file/d/18iWof0qH2M-KttF6en0-1nJJeR8VbxKk/view?usp=sharing', ''),
(71, 'Computer Hardware and Personal Computers', 'Raspberry Pi: Measure, Record, Explore', 'Malcolm Maclean', 'Leanpub (2016', 'N/A', 'Measure the world, record the data and display it graphically.\r\n\r\nEver wanted to know more about the real world by measuring it? This book is aimed at getting you started measuring and recording information and presenting it graphically on a web page. The', 'English', 343, 'https://drive.google.com/file/d/1MAhVcRyTwC2B8aKKJLHAftL0VRe_8fKZ/view?usp=sharing', ''),
(72, 'Computer Hardware and Personal Computers', 'The Laptop Repair Workbook: An Introduction to Troubleshooting and Repairing Laptop Computers', 'Morris Rosenthal', 'Foner Books; 5.2.2008 edition (June 1, 2008)', '978-0972380157', 'This book will help you troubleshoot your laptop problem and take the most cost effective approach to repairing it, getting it repaired, or replacing it. But the troubleshooting process depends on your observations of the symptoms and your willingness to ', 'English', 89, 'https://drive.google.com/file/d/1iS8J10yJttU89r6_8HgHdp8mrQhtmdxu/view?usp=sharing', ''),
(73, 'Computer Hardware and Personal Computers', 'Building the Second Mind: 1956 and the Origins of Artificial Intelligence Computing', 'Rebecca E. Skinner', 'University of California at Berkeley (May 19, 2013)', '9781476357638', 'Building the Second Mind: 1956 and the Origins of Artificial Intelligence Computing tells the history of the origins of AI. As the field that seeks to do things that would be considered intelligent if a human being did them, AI is a constant of human thou', 'English', 214, 'https://drive.google.com/file/d/1HZgikWOshG1qdfqb8tTzhSAt86YbV-Vm/view?usp=sharing', ''),
(74, 'Computer Hardware and Personal Computers', 'Building the Second Mind, 1961-1980: From the Ascendancy of ARPA to the Advent of Commercial Expert Systems', 'Rebecca E. Skinner', 'University of California at Berkeley (April 27, 2014)', '978-0989454346', 'This book tells the story of the development, during the 1960s and 1970s, of AI, the field that sought to get computers to do things that would be considered intelligent if a person did them.\r\n\r\nIn the late 1950s, the field was founded and began to undert', 'English', 394, 'https://drive.google.com/file/d/1tyage4IBOpuVWYYWuPE2nm4ltpWWxlWU/view?usp=sharing', ''),
(75, 'Computer Hardware and Personal Computers', 'PC Technician\'s Tune-Up Manual', 'Jarvis Edwards', 'TekTime (2013)', 'N/A', 'The PC Technician\'s Tune-Up Manual, is a handbook created for PC Technician\'s, as well as the \"do-it-yourself\" crowd. The handbook is a proven, step by step, illustrated manual, that will show how to easily and quickly speed up a computer and improve perf', 'English', 104, 'https://drive.google.com/file/d/1-lkHl_vYadP29v5qaZdaDiDznSFror44/view?usp=sharing', ''),
(76, 'Computer Hardware and Personal Computers', 'A History of the Personal Computer: the People and the Technology', 'A History of the Personal Computer: the People and the Technology', 'Allan Publishing; 1st edition (October 3, 2001)', '978-0968910801', 'This book is an exciting history of the personal computer revolution. Early personal computing, the \"first\" personal computer, invention of the micrprocessor at Intel and the first microcomputer are detailed. It also traces the evolution of the personal c', 'English', 460, 'https://drive.google.com/file/d/1lhEebD6yifnY9Py99OAS2YuorUzi3MWL/view?usp=sharing', ''),
(77, 'Computer Hardware and Personal Computers', 'Internet Safety: Keeping your Computer Safe on the Internet', 'Leo Notenboom', 'Puget Sound Software 2011', '978-1-937018-41-2', 'This book explains claims-based identity how to use it in the context of some commonly occurring scenarios.\r\n\r\nIn this book, the author summarizes popular articles of PC security - covering the basics - the things you must do, the software you must run an', 'English', 96, 'https://drive.google.com/file/d/1UJxC9_fuGv8XCvPJx1A2GBSa13zDTGJa/view?usp=sharing', ''),
(78, 'Computer Hardware and Personal Computers', 'PIC Microcontrollers - Programming in C', 'Milan Verle', 'mikroElektronika; 1st edition (2009)', '978-8684417178', 'This book is the perfect for entry into this world for engineers who have not worked with PICs, new professionals, students, and hobbyists. As MCUs become more complex C is the most popular language due to its ability to process advanced processes and mul', 'English', 267, 'https://drive.google.com/file/d/1kK0nwEc44Q6c3Ylv4QjGx_m3dxRCEXlW/view?usp=sharing', ''),
(79, 'Computer Hardware and Personal Computers', 'Architecture and Programming of 8051 Microcontrollers', 'Milan Verle', 'mikroElektronika; 1st edition (2009)', 'N/A', 'Learn in a quick and easy way to program Intel 8051 microcontroller using many practical examples we have provided for you. Despite its relative old age, 8051 is still the most commonly used microcontroller at present. Beside Intel, many other renowned co', 'English', 334, 'https://drive.google.com/file/d/16HLugipKLs4eBtivi8l8l4YOr7yGUIZ_/view?usp=sharing', ''),
(80, 'Computer Hardware and Personal Computers', 'RAND and the Information Evolution: A History in Essays and Vignettes', 'Willis H. Ware', 'RAND Corporation (January 25, 2009)', '978-0833045133', 'This professional memoir describes RAND\'s contributions to the evolution of computer science, particularly during the first decades following World War II, when digital computers succeeded slide rules, mechanical desk calculators, electric accounting mach', 'English', 229, 'https://drive.google.com/file/d/1MwQpwzJwJynUCSCInfzfpYujR1aFxwEN/view?usp=sharing', ''),
(81, 'Electronic Circuit Design', 'Digital System Design - Use of Microcontroller', 'Dawoud Shenouda Dawoud, R. Peplow', 'River Publishers (2010); eBook (River Publishers, 2022; Creative Commons Licensed)', '978-8792329400', 'Today, Embedded Systems are widely deployed in just about every piece of machinery from toasters to spacecrafts, and embedded system designers face many challenges.\r\n\r\nThis book concentrates on the use of a microcontroller as the embedded system\'s process', 'English', 570, 'https://drive.google.com/file/d/1J5NJw3lenyLIhgCkzZQm_5_J1DoW2J31/view?usp=sharing', ''),
(82, 'Electronic Circuit Design', 'Digital Systems Design', 'Ramaswamy Palaniappan', 'Ventus Publishing ApS', '978-8776818067', 'This book provides readers with a fundamental understanding of digital system concepts such as logic gates for combinatorial logic circuit design and higher level logic elements such as counters and multiplexers. Undergraduates taking a course in computer', 'English', 130, 'https://drive.google.com/file/d/1RczSGo5tpuL3hHGbM3FGsvz12Em9wSmw/view?usp=sharing', ''),
(83, 'Electronic Circuit Design', 'Discovering the STM32 Microcontroller', 'Geoffrey Brown', 'Indiana University (2016); eBook (Creative Commons Licensed)', 'N/A', 'This book is intended as a hands-on manual for learning how to design systems using the STM32 F1 family of micro-controllers. It was written to support a junior-level computer science course at Indiana University.\r\n\r\nThe focus of this book is on developin', 'English', 244, 'https://drive.google.com/file/d/1q7fQdaKpedGcBZqE3qx2ftnUU5N_T8Om/view?usp=sharing', ''),
(84, 'Electronic Circuit Design', 'Mastering STM32', 'Carmine Noviello', 'Leanpub', 'N/A', 'A step-by-step guide to the most complete ARM Cortex-M platform, using a free and powerful development environment based on Eclipse and GCC.\r\n\r\nWith more than 1200 microcontrollers, STM32 is probably the most complete ARM Cortex-M platform on the market. ', 'English', 852, 'https://drive.google.com/file/d/1oKcfIs9O-PGnCFWnlW9WXMpp0OmeYpWi/view?usp=sharing', ''),
(85, 'Electronic Circuit Design', 'The Insider\'s Guide to STM32 ARM-Based Microcontroller', 'Trevor Martin', 'Hitex (UK) Ltd.', 'N/A', 'Get up and running programming the STM32 line of microcontrollers from STMicroelectronics using the hands-on information contained in this easy-to-follow guide. Written by an experienced electronics hobbyist and author.', 'English', 106, 'https://drive.google.com/file/d/1GvKiatS__jLMl3u72cqWvDmZJ7WRj6tS/view?usp=sharing', ''),
(86, 'Electronic Circuit Design', 'Mastering the FreeRTOS Real Time Kernel', 'Richard Barry', 'Real Time Engineers Ltd.; eBook (Creative Commons Licensed)', 'N/A', 'FreeRTOS is ideally suited to deeply embedded real-time applications that use Microcontrollers or small microprocessors. This book provides a detailed explanation, with many examples, to help you understand how to use a real-time kernel, and how to use Fr', 'English', 399, 'https://drive.google.com/file/d/1RVFAU8IRQTc6cCtSrJ7sgo53rbmzncLi/view?usp=sharing', ''),
(87, 'Electronic Circuit Design', 'Introduction to Microcontrollers and Embedded Systems', 'Tyler Ross Lambert, et al.', 'Auburn University', 'N/A', 'Microcontrollers are a tool for computing and communication. Knowledge of Microcontrollers and Embedded systems are meaningful and very rewarding if it is applied to design a product that is useful in the industry or for the society in general.', 'English', 164, 'https://drive.google.com/file/d/1D2Vzh46eNVT1-2zwVciY8xp7zemOeCXA/view?usp=sharing', ''),
(88, 'Electronic Circuit Design', 'Embedded Systems with ARM Cortex-M Microcontrollers in Assembly Language and C', 'Yifeng Zhu', 'E-Man Press LLC (January 13, 2023); eBook (Online Edition, 2023)', '978-0982692677', 'The book introduces basic programming of ARM Cortex-M cores in assembly and C at the register level, and the fundamentals of embedded system design. It presents basic concepts such as data representations (integer, fixed-point, floating-point), assembly i', 'English', 593, 'https://drive.google.com/file/d/1WPYJqNSmg2MX6YQ7v0CmPF1P-iL3s6NU/view?usp=sharing', ''),
(89, 'Electronic Circuit Design', 'Embedded Computing in C with the PIC32 Microcontroller', 'Kevin M. Lynch and Nicholas Marchuk', 'Northwestern University', 'N/A', 'This book provides a logical and succinct introduction to Microchip’s PIC32, bringing together key information from Microchip’s PIC32 and MIPS reference manuals and documentation, providing an integrated introduction to PIC32 hardware and software.', 'English', 271, 'https://drive.google.com/file/d/124AwaDx36yeHagZYX97y4nTVeo8StQl-/view?usp=sharing', ''),
(90, 'Electronic Circuit Design', 'ARM Assembly for Embedded Applications', 'Daniel W Lewis', 'Independently published (2019); eBook (Online Edition, 2022)', '978-1092542234', 'This book is a textbook for a sophomore-level course in computer science, computer engineering, or electrical engineering that teaches students how to write functions in ARM assembly called by a C program. The C/Assembly interface (i.e., function call, pa', 'English', 217, 'https://drive.google.com/file/d/1Heo_ENtRWEuaQBU_Z1JHyhChEdBLd-XN/view?usp=sharing', ''),
(91, 'Electronic Circuit Design', 'ARM Assembly Language Programming', 'Peter J. Cockerell', 'Unkown', '978-0951257906', 'Gain the skills required to dive into the fundamentals of the ARM hardware architecture with this book and start your own projects while you develop a working knowledge of assembly language for the ARM processor.\r\n\r\nThis book gives computer science profes', 'English', 197, 'https://drive.google.com/file/d/1OdBaGBR-6nztFkJt5SBbUTgCJ81-UCrb/view?usp=sharing', '');
INSERT INTO `books` (`book_id`, `category`, `title`, `author`, `publisher`, `ISBN`, `description`, `language`, `pages`, `file_name`, `cover_page`) VALUES
(92, 'Electronic Circuit Design', 'Application-Specific Integrated Circuits', 'Michael John Sebastian Smith', 'Addison-Wesley Professional; 1 edition (1997); eBook (Edacafe Edition)', '978-0321602756', 'This comprehensive book on application-specific integrated circuits (ASICs) describes the latest methods in VLSI-systems design. ASIC design, using commercial tools and predesigned cell libraries, is the fastest, most cost-effective, and least error-prone', 'English', 507, 'https://drive.google.com/file/d/1IRSrJHU21H0wGUzVFe9yN_eCvi3PXK_a/view?usp=sharing', ''),
(93, 'Electronic Circuit Design', 'Op Amps for Everyone', 'Ron Mancini', 'Newnes; 4 edition (January 25, 2013)', '978-0123914958', 'This book for Everyone is an indispensable guide and reference for designing circuits that are reliable, have low power consumption, and are as small and low-cost as possible. Operational amplifiers are essential in modern electronics design, and are used', 'English', 464, 'https://drive.google.com/file/d/1HIRTRXa0y9H-wZa2jYhklsFm-RLDFaTP/view?usp=sharing', ''),
(94, 'Electronic Circuit Design', 'Introduction to Microcontrollers', 'Gunther Gridling, Bettina Weiss, Tyler Ross Lambert, Mike Silva', 'Vienna University of Technology (2007); Auburn University (July, 2017)', 'N/A', 'This book has been developed for the introductory courses on microcontrollers\r\n\r\nIt introduces undergraduate students to the field of microcontrollers - what they are, how they work, how they interface with their I/O components, and what considerations th', 'English', 175, 'https://drive.google.com/file/d/1Rw60hJRbNrl3hzW_giAW90UhV6o4FGcz/view?usp=sharing', ''),
(95, 'Electronic Circuit Design', 'Introduction to PLC controllers', 'Nebojsa Matic', 'mikroElektronika (2008 - Date)', 'N/A\r', 'Programmable Logic Controller (PLCs) are the backbone of today\'s Industrial Automation systems. They are more and more often included in Technical curricula nowadays.\r\n\r\nThis basic guide will take you from the very basic concepts, to put PLC code together', 'English', 76, 'https://drive.google.com/file/d/1yzl0uUGo7qoIJpS81sNOWZShBKrS4Mps/view?usp=sharing', ''),
(96, 'Electronic Circuit Design', 'PIC Microcontrollers - Programming in C', 'Milan Verle', 'mikroElektronika; 1st edition (2009)', '978-8684417178', 'This book is the perfect for entry into this world for engineers who have not worked with PICs, new professionals, students, and hobbyists. As MCUs become more complex C is the most popular language due to its ability to process advanced processes and mul', 'English', 267, 'https://drive.google.com/file/d/1RqhUaMfT4_n8_DZE8v9BoG3fweMBLTEd/view?usp=sharing', ''),
(97, 'Electronic Circuit Design', 'Programming dsPIC MCUs in C', 'Zoran Milivojević, Djordje Šaponjić', 'mikroElektronika; 1st edition (2009)', 'N/A', 'Learn how to write a program on your own, how to debug it, and how to use it to start up a microcontroller. The book provides numerous practical examples with necessary connection schematics explaining the operation of temperature sensors, A/D and D/A con', 'English', 782, 'https://drive.google.com/file/d/18Z3Z0sYS57HFdOJXWttk9AJfonmP3LoB/view?usp=sharing', ''),
(98, 'Electronic Circuit Design', 'Designing Computers and Digital Systems using pdp 16 Register Transfer Modules', 'C. Gordon Bell, John Grason, and Allen Newell, et al', 'Digital Press (1972)', 'N/A', 'This is a classic book from the days that computers were designed using pdp 16 registers. It is authored by some very famous figures of computer history - Gordon Bell, John Grason, and Allen Newell. This book was published by Digital Equipment Corporation', 'English', 884, 'https://drive.google.com/file/d/1Zgm2Y6DGiMnJOHEm_UjJs0XmDzEfsf-y/view?usp=sharing', ''),
(99, 'Electronic Circuit Design', 'PIC Microcontrollers - Programming in BASIC', 'Milan Verle', 'mikroElektronika; 1st edition (2010)', '978-86-84417-18-5', 'This book will help you learn more about programming PIC microcontrollers in BASIC with practical, common-sense instructions, real projects, clear illustrations and detailed schematics. Learn how to set up all necessary hardware and software, read A/D con', 'English', 163, 'https://drive.google.com/file/d/15KTx1iZ4WnYi5MsTZzxWHDeqEyhGpG42/view?usp=sharing', ''),
(100, 'Electronic Circuit Design', 'Automating Manufacturing Systems with PLCs', 'Hugh Jack', 'Lulu.com (September 12, 2010); eBook (Creative Commons Licensed)', '978-0557344253\r\n', 'This is a manuscript for a Programmable Logic Controller (PLC) based control system book that is currently being used for teaching an undergraduate controls course - Manufacturing Controls. The course and book focus on the Allen Bradley family of controll', 'English', 839, 'https://drive.google.com/file/d/1k5OjikBEgH0pBtyb6DrleHBLgRLyeZtU/view?usp=sharing', '');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

DROP TABLE IF EXISTS `borrowed_books`;
CREATE TABLE IF NOT EXISTS `borrowed_books` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `borrow_date` datetime NOT NULL,
  `due_date` date NOT NULL,
  `return_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
CREATE TABLE IF NOT EXISTS `login_credentials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `password` varchar(320) NOT NULL,
  `role` varchar(150) NOT NULL DEFAULT 'client',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `login_credentials`
--

INSERT INTO `login_credentials` (`id`, `user_id`, `user_name`, `password`, `role`) VALUES
(4, '2021-05817-MN-0', 'irel04', '$2y$10$pPn/DmTB0TrmqcQXdJZHiun6UNuTOxPvTUbdBMYaKE.pDUSqt7TEW', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(15) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_number` varchar(11) DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `birthday`, `address`, `created_at`, `contact_number`, `email`) VALUES
('2021-05817-MN-0', 'Irel', 'Kian', '2003-04-05', 'Sta Rosa Laguna', '2024-02-06 11:18:27', '0932789335', 'kianirel56@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_library`
--

DROP TABLE IF EXISTS `user_library`;
CREATE TABLE IF NOT EXISTS `user_library` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `book_id` int NOT NULL,
  `added_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
CREATE TABLE IF NOT EXISTS `user_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `user_save`
--

DROP TABLE IF EXISTS `user_save`;
CREATE TABLE IF NOT EXISTS `user_save` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) NOT NULL,
  `book_id` int NOT NULL,
  `highlight` text NOT NULL,
  `bookmark` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD CONSTRAINT `borrowed_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `borrowed_books_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `login_credentials`
--
ALTER TABLE `login_credentials`
  ADD CONSTRAINT `login_credentials_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_library`
--
ALTER TABLE `user_library`
  ADD CONSTRAINT `user_library_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_library_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_save`
--
ALTER TABLE `user_save`
  ADD CONSTRAINT `user_save_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_save_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_save_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
