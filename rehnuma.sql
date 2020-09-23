-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 09:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rehnuma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(5) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `email`, `password`) VALUES
(1, 'ansh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'ram@website.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(5) NOT NULL,
  `admin_id` int(5) NOT NULL,
  `img_file` varchar(64) NOT NULL,
  `blog_title` text NOT NULL,
  `srt_dec` text NOT NULL,
  `blog` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `admin_id`, `img_file`, `blog_title`, `srt_dec`, `blog`, `date`) VALUES
(1, 1, 'b1.jpg', 'How to identify your why', 'How to identify your why', '● What excites you:- Ask yourself what excites you instead of what you want to do. Because if you don\'t feel excited, energetic, motivated, soon your willpower will fade away. Then you can\'t do the work passionately which will force you to leave it short. Like someone feels excited about dancing, someone about singing etc. So take your time and raise a question to yourself about the reason of your excitement.<div>● Like whom you want to be:- We all have an icon like whom we want to be. It could be Sachin Tendulkar for a cricket lover, or it could be Deepika Padukone for someone who wants to become an actress etc. So choose an idol for your life and follow the person\'s footsteps. This process will give you directions and also give deep knowledge about why.&nbsp;</div><div>● How do you want to see yourself at the age of 60:- It is an excellent exercise to find out your why. Write down all the things you want to see when you will be 60 years old. This list will work as fuel for yourself. To fulfil these wishes one will be motivated and enthusiastic. Through this exercise, one will be crystal clear about his why and make small steps toward them.&nbsp;</div><div>● One sentence to explain your life:- Try to explain your life in one sentence, why you exist in the world. It could be anything like someone wants to be a teacher, someone wants to be a photographer, someone journalist etc. A small sentence can motivate you on a large scale. To find out your why, explain yourself in one sentence and always keep it in front of you. As soon as you find out your purpose or why of your life, you can start earlier. Purpose of life gives you clarity in life, keeps you focussed on your goals and also makes you a better person. A life without purpose or why is like an aimless ship. So find out why of your life and work hard to fulfil them. \"If you can\'t figure out your purpose, figure out your passion. For your passion will lead you right into your purpose.\" BISHOP T. D. JAKES</div>', '2020-09-23 21:04:47'),
(2, 1, 'b2.jpg', 'How to choose a career', 'How to choose a career', 'What do people tell me I am good at? What do people ask me to teach them?? What I am willing to do for long hours? What I think I am good for? How can I make a change by doing these things? After answering the questions one student has a clear vision of passion. If someone follows his passion he will be successful. If a person makes his passion career, he will never feel that he had made a wrong decision and will enjoy working hard. After this follow these steps.&nbsp;<div>● Make a list of interesting things After the tenth or after twelve students faces a dilemma. They became confused about their careers. The pressure of family, relatives, friends make them worried about it more and more. If one makes a list of things in which the student has an interest and also good at, it will help the student a lot. Answers of the questions will give a clear vision of some choices that will be suitable for the student\'s career.&nbsp;</div><div>● Take a mentorship program After making the list, consult with a mentor who can guide one student properly because a mentor has lots of experiences and knowledge to provide. A mentorship program helps a student to go in the right direction.&nbsp;</div><div>● Talk with the people who are in that field Nothing is more beneficial than asking doubts from the person who is handling a particular business. One to one conversation with them makes the whole thing crystal clear. Students can make their mind and go-ahead without any hesitation.&nbsp;</div><div>● Talk with parents Parents play a great role in every student\'s career selection. They act as a support system for their children mentally and financially. If parents don\'t support a student, that student can\'t do anything appropriately. Every successful student has huge mental support from their parents which makes their journey easier. So asks parents about the decision of career at least once. Following these steps, one can choose a suitable career for himself. Without hard work and interest in a subject, nobody will be successful in life. If someone follows his passion with hard work, dedication, consistency and convert passion into a career, one day definitely he will achieve so many things in life. So the selection of a career is very much important not only to become a successful person in life but also to become a happy person with lots of peace of mind.</div>', '2020-09-23 21:14:21'),
(3, 1, 'b3.jpeg', 'How to plan your daily schedule', 'How to plan your daily schedule', '● Make a to-do list:- The to-do list is one of the most powerful technics for planning a day. Every successful person makes their whole day plan through a to-do list. If one person makes a to-do list for the whole day, his working efficiency of the day increases 20 to 25% and regular practice of making a to- do list also decreases the stress levels. So a to-do list will give a clear vision of the tasks of the whole day.&nbsp;<div>● Write down the to-do list:- Our brain has lots of information on it. If we don\'t write down our tasks we will forget it soon. Researchers have proven that if we write down a task on paper rather than on a mobile phone, our brain gets more signal and remind us again and again to complete those tasks. So always write down tasks of a day on a notebook.&nbsp;</div><div>● Plan your day before you sleep:- The best time to make a to-do list is before going to bed. If you write down the tasks of the next day, you will feel relaxed because you have a clear idea of what to do and when to do in the next day. Schedule the whole time of the next day which will help you to manage more time. Always be organised as much as possible. Try to read the to-do list at least twice before going to sleep. This process will help your brain to recognise the whole to-do list properly.&nbsp;</div><div>● Find out the best time of the day:- You have to follow the routine at your own convenience. If someone is more productive at night, then make the scheduled night based and if someone is more productive in the morning, then keep the routine day based. It will help a person to manage the day suitably.</div><div>● Use the ABC system:- The ABC system is prioritising the tasks of a day through A, B, C. A tasks stand for urgent and important tasks which need immediate action. A task has the highest level of priority. No tasks become urgent by one day, we make the tasks urgent by pending them for a long time. B type tasks stand for our personal works and goals or daily works of our lives. These tasks are the second most important works so these tasks have less priority. C tasks stand for our hobbies and extra works.&nbsp;</div><div>● Take breaks:- Scientists have proven that if we break down a task in smaller groups, it will be easier to do rather than a long term work. Small breaks give us time to relax and enjoy the task. As a result, the brain does not feel bored. A long term work makes our brains impatient. We cannot concentrate fully. So always keep breaks between works.		\r\n</div>', '2020-09-23 21:14:39'),
(4, 1, 'b4.jpg', 'How to plan for short term and long term goals', 'How to plan for short term and long term goals', '1. Having specific goals- What actually does success mean? It depends from people to people. Success to one person may mean becoming CEO of a company while to another person it may mean getting home from work by 6 p.m. every day.&nbsp;<div>2. The goals must be measurable- Having a timeframe for achieving the goals and a way to determine when you have reached them.&nbsp;</div><div>3. One should not be negative- The goals should be such that one desperately wants it rather than something he wants to avoid. It is much better to say, for instance, \"I want to improve my skills over the next four years so that I qualify for a better job\" than \"I don\'t want to be stuck in this job for another four years.\"&nbsp;</div><div>4. Being realistic- The long-term goals must be compatible with the abilities and skills one possesses. If one cannot sing or play an instrument and wants to win a Grammy award, that will set them up for failure.&nbsp;</div><div>5. The goals must be reachable within the time frame you have set- Breaking a long-term goal down into smaller goals will be helpful. It is better to take baby steps than one big giant leap.&nbsp;</div><div>6. Pairing each goal with an action. For instance, if one’s goal is to become a writer then he can sign up for a writing class.&nbsp;</div><div>7. Being flexible. Not giving up when one encounters barriers that threaten him is the most important key. Flexibility also means being willing to let go of goals that are no longer meaningful and instead putting that energy into pursuing other ones.</div>', '2020-09-23 21:15:45'),
(5, 1, 'b61.jpg', 'How to build skills?', 'Though there are many valuable lessons that our parents teach us, we should not let our learning stop with them. One can become a self-sufficient and mature adult that is capable of handling anything life throws at you if they possess the necessary skills. If one works on building critical thinking skills, basic everyday skills, and academic and professional skills, they can develop the life skills necessary for independence. Some ways one can develop the skills are-', '1. Getting a mentor and being a mentor- A good mentor can help in avoiding the challenges and face the roadblocks that come in the way. Mentors help in guiding the way towards success and tell you how to approach further. They are going to give you the real feedback and not something which one wants to hear and hone the skills. 2. Being ready for new challenges- One should not lose any opportunity in life. If one sees an opportunity for a career in a particular skill but doesn\\’t have this, he must go for pursuing the course in that skill in order to grab that opportunity. 3. Reading and looking for problems to solve – Reading not only horizontally but also vertically should be enhanced. When one reads from different sources from different fields, they develop the good habits which are necessary for honing the skills. 4. Finding learning opportunities internally- One must be able to find learning opportunities internally within the organization be it a school or a college or even an office. Try speaking with the mentors and teachers about the learning opportunities available around.', '2020-09-14 22:20:01'),
(6, 1, 'b5.jpg', 'How to develop problem solving skills?', 'How to develop problem solving skills?', '1. IDENTIFY the problem In a nutshell, the definition of problem-solving skills is very simple: it is the ability to identify the nature of a problem, deconstruct it (break it down) and develop an effective set of actions to address the challenges related to it. Indeed, in some challenging situations many students are overwhelmed with emotions and see just big obstacles, barriers or trouble. However, great problem solvers try usually to identify the very roots of the problematic situation – the nature of a particular problem whichcan be clearly distinguished, addressed and ultimately solved. It is not enough to say that the situation is bad or out of control, as this is very abstract and unhelpful. It is more important to clarify where those problems and challenges come from. The very first step in developing the valuable skills of problem solving is to learn how to look at every situation as an identifiable problem.&nbsp;<div>2. DEFINE the main elements of the problem The next step in problem solving – and in learning problem-solving skills – is an ability to break down the problem into small pieces, or smaller and more manageable parts by defining the main elements of the problem. It is an essential step and a skill to develop both psychologically and managerially. Instead of facing a giant, scary, impossible-to-climb monster-mountain, one has to learn how to define smaller roads among the hills and rocks. When one breaks down a big problem into smaller elements, then you are no longer facing an impossible task, and can go about making several very concrete steps to achieve the goal and solve the problem.&nbsp;</div><div>3. EXAMINE possible solutions Finding possible solutions is a very tricky step in the problem-solving process, as on the surface it looks like most of the work is already done and the ultimate goal is close. In reality, students should not just look for simplistic ways to address the elements of the problem. They should find the most effective ways and turn them into an opportunity to make a strong success story.&nbsp;</div><div>4. ACT on resolving the problem Developing a step-by-step execution plan and acting effectively and decisively is the final touch in the problem-solving process. This is also an important skill as it doesn’t matter how effectively students identify the problem, define its elements and examine possible solutions; everything still boils down to the ability to perform concrete steps to execute the action plan. Within this problem-solving formula students should also master skills such as monitoring and evaluating the entire action implementation process and – if it is a group undertaking – learn how to delegate certain parts of the work to each other or to external stakeholders.&nbsp;</div><div>5. LOOK for lessons to learn At the moment when the problem is solved, the students sit down with all their problem-solving trees and action plans, either alone or together if it is a group project. This is the moment to look back and see if there is a need to tune up the work that has been completed. Especially valuable is taking the time to evaluate the entire process and formulating the lessons to be learned so the next problem-solving project will be more effective and produce even more elegant solutions.		</div>', '2020-09-23 21:16:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
