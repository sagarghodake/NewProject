-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 02:57 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('sagar', '92668751');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignmentid` int(11) NOT NULL,
  `assignmentdata` varchar(60000) DEFAULT NULL,
  `subjectname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogid` int(11) NOT NULL,
  `blogtitle` varchar(200) DEFAULT NULL,
  `blogdata` text,
  `linkrealted` varchar(100) DEFAULT NULL,
  `lastedited` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogid`, `blogtitle`, `blogdata`, `linkrealted`, `lastedited`) VALUES
(1, 'Lambda Expressions Before And After Java 8', '<h2>1. Introduction</h2>\r\n	<p>\r\n		In this tutorial, We&#8217;ll learn <b>how to write programs using\r\n			java 8</b>&nbsp;<br>\r\n		<b><a rel=\"noopener noreferrer\"\r\n			href=\"https://www.javaprogramto.com/2019/06/java8-lambda-expressions.html\"\r\n			target=\"_blank\">lambda and Stream concepts</a></b> with examples. Many\r\n		developers feel learning <b><a rel=\"noopener noreferrer\"\r\n			href=\"https://www.javaprogramto.com/search/label/Java%208\"\r\n			target=\"_blank\">java 8</a></b> concepts may be hard to understand. But\r\n		once we are good using them then feel reduces error prone code and\r\n		improves the performance of the application.\r\n	</p>\r\n	<p>\r\n		Read article on <a rel=\"noopener noreferrer\"\r\n			href=\"https://java-w3schools.blogspot.com/2018/09/java-8-lambda-expressions-with-examples.html\"\r\n			target=\"_blank\">Java 8 Lamda Expression Rules</a>\r\n	</p>\r\n	<p>\r\n		In this article, We will see the example programs on sorting using\r\n		Comparator, File names validation, Retrieving only hidden files and\r\n		filtering list objects based on conditions.<br>\r\n		<a name=\"more\"></a>\r\n	</p>\r\n	<h2>2. Sorting &#8211; Lambda Expression</h2>\r\n	<h3>2.1 Before Java 8</h3>\r\n	<p>See the below code which is implemented in older versions of\r\n		Java. Here trying to sort the Employee&#8217;s based on the id column.</p>\r\n	<div>\r\n		<div id=\"highlighter_965241\" class=\"syntaxhighlighter  java\">\r\n			<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div>\r\n							<div class=\"line number2 index1 alt1\">2</div>\r\n							<div class=\"line number3 index2 alt2\">3</div>\r\n							<div class=\"line number4 index3 alt1\">4</div>\r\n							<div class=\"line number5 index4 alt2\">5</div></td>\r\n						<td class=\"code\"><div class=\"container\">\r\n								<div class=\"line number1 index0 alt2\">\r\n									<code class=\"java plain\">Collections.sort(emplyeesList,\r\n									</code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">Comparator() {</code>\r\n								</div>\r\n								<div class=\"line number2 index1 alt1\">\r\n									<code class=\"java spaces\">&nbsp;</code>\r\n									<code class=\"java keyword\">public</code>\r\n									<code class=\"java keyword\">int</code>\r\n									<code class=\"java plain\">compare(Employee a1, Employee\r\n										a2){</code>\r\n								</div>\r\n								<div class=\"line number3 index2 alt2\">\r\n									<code class=\"java spaces\">&nbsp;&nbsp;</code>\r\n									<code class=\"java keyword\">return</code>\r\n									<code class=\"java plain\">a1.getId().compareTo(a2.getId());</code>\r\n								</div>\r\n								<div class=\"line number4 index3 alt1\">\r\n									<code class=\"java spaces\">&nbsp;</code>\r\n									<code class=\"java plain\">}</code>\r\n								</div>\r\n								<div class=\"line number5 index4 alt2\">\r\n									<code class=\"java plain\">});</code>\r\n								</div>\r\n							</div></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		Here, written code in 5 lines in which includes <a\r\n			rel=\"noopener noreferrer\"\r\n			href=\"https://docs.oracle.com/javase/8/docs/api/java/util/Comparator.html\"\r\n			target=\"_blank\">Comparator </a>implementation.\r\n	</p>\r\n	<h3>2.2 In Java 8</h3>\r\n	<p>See the below code in Java 8. All the code is in single line and\r\n		not seeing comparing logic.</p>\r\n	<div>\r\n		<div id=\"highlighter_809424\" class=\"syntaxhighlighter  java\">\r\n			<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div></td>\r\n						<td class=\"code\"><div class=\"container\">\r\n								<div class=\"line number1 index0 alt2\">\r\n									<code class=\"java plain\">emplyeesList.sort(Comparator.comparing(Employee::getId));</code>\r\n								</div>\r\n							</div></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<p>Here, Comparator is a Functional Interface which has only one\r\n		abstract method.</p>\r\n	<p>\r\n		Comparator has a static method comparing(.Function.) which accepts\r\n		only Funtion interface.<br>\r\n		<br>https://docs.oracle.com/javase/8/docs/api/java/util/function/Function.html\r\n	</p>\r\n	<blockquote class=\"wp-block-quote\">\r\n		<p>\r\n			<i>Note: Function&lt;T, R&gt; also a Functional Interface. This\r\n				has a method apply(T t) which will be called from\r\n				Comparator.comparing() method.</i>\r\n		</p>\r\n	</blockquote>\r\n	<h2>3. File Name Validation with Lambda Expression</h2>\r\n	<h3>3.1 Before Java 8</h3>\r\n	<p>\r\n		See the code in java old version. Here the core logic is<br>\r\n		<i>file.getName().<a\r\n			href=\"https://java-w3schools.blogspot.com/2019/03/java-string-endswith.html\"\r\n			target=\"_blank\" rel=\"noopener noreferrer\">endsWith</a>(&#8220;.xml&#8221;)\r\n		</i>; The remaining code is just syntax.\r\n	</p>\r\n	<div>\r\n		<div id=\"highlighter_216259\" class=\"syntaxhighlighter  java\">\r\n			<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div>\r\n							<div class=\"line number2 index1 alt1\">2</div>\r\n							<div class=\"line number3 index2 alt2\">3</div>\r\n							<div class=\"line number4 index3 alt1\">4</div>\r\n							<div class=\"line number5 index4 alt2\">5</div></td>\r\n						<td class=\"code\"><div class=\"container\">\r\n								<div class=\"line number1 index0 alt2\">\r\n									<code class=\"java plain\">File[] hiddenFiles = </code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">File(</code>\r\n									<code class=\"java string\">\"directory_name\"</code>\r\n									<code class=\"java plain\">).listFiles(</code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">FileFilter() {</code>\r\n								</div>\r\n								<div class=\"line number2 index1 alt1\">\r\n									<code class=\"java spaces\">&nbsp;</code>\r\n									<code class=\"java keyword\">public</code>\r\n									<code class=\"java keyword\">boolean</code>\r\n									<code class=\"java plain\">accept(File file) {</code>\r\n								</div>\r\n								<div class=\"line number3 index2 alt2\">\r\n									<code class=\"java spaces\">&nbsp;&nbsp;</code>\r\n									<code class=\"java keyword\">return</code>\r\n									<code class=\"java plain\">file.getName().endsWith(</code>\r\n									<code class=\"java string\">\".xml\"</code>\r\n									<code class=\"java plain\">);</code>\r\n								</div>\r\n								<div class=\"line number4 index3 alt1\">\r\n									<code class=\"java spaces\">&nbsp;</code>\r\n									<code class=\"java plain\">}</code>\r\n								</div>\r\n								<div class=\"line number5 index4 alt2\">\r\n									<code class=\"java plain\">});</code>\r\n								</div>\r\n							</div></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<h3>3.2 In Java 8</h3>\r\n	<p>The above code is simplified to single line which reduces the\r\n		errors.</p>\r\n	<div>\r\n		<div id=\"highlighter_269045\" class=\"syntaxhighlighter  java\">\r\n			<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div></td>\r\n						<td class=\"code\"><div class=\"container\">\r\n								<div class=\"line number1 index0 alt2\">\r\n									<code class=\"java plain\">File[] hiddenFiles = </code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">File(</code>\r\n									<code class=\"java string\">\"directory_name\"</code>\r\n									<code class=\"java plain\">).listFiles( file -&gt;\r\n										file.getName().endsWith(</code>\r\n									<code class=\"java string\">\".xml\"</code>\r\n									<code class=\"java plain\">));</code>\r\n								</div>\r\n							</div></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<blockquote class=\"wp-block-quote\">\r\n		<p>\r\n			<i>Note: Java 8, just focus on the business logic and takes its\r\n				syntax internally. Developer need not to worry about it.</i>\r\n		</p>\r\n	</blockquote>\r\n	<h2>4. Retrieving only Hidden files &#8211; Lambda Expression</h2>\r\n	<h3>4.1 Before java 8</h3>\r\n	<p>File has a method to check the method is hidden or not using\r\n		isHidden() method.</p>\r\n	<div>\r\n		<div id=\"highlighter_941379\" class=\"syntaxhighlighter  java\">\r\n			<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div>\r\n							<div class=\"line number2 index1 alt1\">2</div>\r\n							<div class=\"line number3 index2 alt2\">3</div>\r\n							<div class=\"line number4 index3 alt1\">4</div>\r\n							<div class=\"line number5 index4 alt2\">5</div></td>\r\n						<td class=\"code\"><div class=\"container\">\r\n								<div class=\"line number1 index0 alt2\">\r\n									<code class=\"java plain\">File[] hiddenFiles = </code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">File(</code>\r\n									<code class=\"java string\">\"directory_name\"</code>\r\n									<code class=\"java plain\">).listFiles(</code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">FileFilter() {</code>\r\n								</div>\r\n								<div class=\"line number2 index1 alt1\">\r\n									<code class=\"java spaces\">&nbsp;</code>\r\n									<code class=\"java keyword\">public</code>\r\n									<code class=\"java keyword\">boolean</code>\r\n									<code class=\"java plain\">accept(File file) {</code>\r\n								</div>\r\n								<div class=\"line number3 index2 alt2\">\r\n									<code class=\"java spaces\">&nbsp;&nbsp;</code>\r\n									<code class=\"java keyword\">return</code>\r\n									<code class=\"java plain\">file.isHidden();</code>\r\n								</div>\r\n								<div class=\"line number4 index3 alt1\">\r\n									<code class=\"java spaces\">&nbsp;</code>\r\n									<code class=\"java plain\">}</code>\r\n								</div>\r\n								<div class=\"line number5 index4 alt2\">\r\n									<code class=\"java plain\">});</code>\r\n								</div>\r\n							</div></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<h3>4.2 In Java 8</h3>\r\n	<p>Just using the new Method Reference concept as part of new Java\r\n		8.</p>\r\n	<div>\r\n		<div id=\"highlighter_93278\" class=\"syntaxhighlighter  java\">\r\n			<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div></td>\r\n						<td class=\"code\"><div class=\"container\">\r\n								<div class=\"line number1 index0 alt2\">\r\n									<code class=\"java plain\">File[] hiddenFiles = </code>\r\n									<code class=\"java keyword\">new</code>\r\n									<code class=\"java plain\">File(</code>\r\n									<code class=\"java string\">\"directory_name\"</code>\r\n									<code class=\"java plain\">).listFiles(File::isHidden);</code>\r\n								</div>\r\n							</div></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</div>\r\n	<h2>5. Conclusion</h2>\r\n	<p>In this post, We&#8217;ve seen example lambda program before and\r\n		after Java 8.</p>\r\n	<p>Observed the differences between them. Java 8 were in many ways\r\n		more profound than any other changes to Java in its history.</p>', 'https://www.javacodegeeks.com/2020/05/lambda-expressions-before-and-afterjava-8.html', 'Wed May 27 02:48:39 IST 2020'),
(2, 'Java 14: Helpful NullPointerException Messages', '<p>A new JVM option, <b><code>-XX:+ShowCodeDetailsInExceptionMessages</code></b>, has been introduced in <a href=\"https://www.oracle.com/technetwork/java/javase/14all-relnotes-5809668.html\">Java 14</a>, in order to provide <a href=\"https://openjdk.java.net/jeps/358\">helpful NullPointerException messages</a> showing precisely what was null when a <code>NullPointerException</code> occurred. For example, consider the code below:</p><div><div id=\"highlighter_92427\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java plain\">var name = library.get(</code><code class=\"java string\">\"My Book\"</code><code class=\"java plain\">).getAuthor().getName();</code></div></div></td></tr></tbody></table></div></div><p>Before Java 14, the JVM would only print the method, filename, and line number that caused the NPE:</p><div><div id=\"highlighter_28407\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div><div class=\"line number2 index1 alt1\">2</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java plain\">Exception in thread </code><code class=\"java string\">\"main\"</code> <code class=\"java plain\">java.lang.NullPointerException</code></div><div class=\"line number2 index1 alt1\"><code class=\"java spaces\">&nbsp;</code><code class=\"java plain\">at Library.main(Library.java:</code><code class=\"java value\">7</code><code class=\"java plain\">)</code></div></div></td></tr></tbody></table></div></div><p>As you can tell, this error message is not very useful because it is impossible to determine which variable was actually null (without using a debugger). Was it the library, the book returned from the library, or the author of the book?</p><p>In Java 14, after enabling <b><code>-XX:+ShowCodeDetailsInExceptionMessages</code></b>, you will get the following message:</p><div><div id=\"highlighter_315850\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div><div class=\"line number2 index1 alt1\">2</div><div class=\"line number3 index2 alt2\">3</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java plain\">Exception in thread </code><code class=\"java string\">\"main\"</code> <code class=\"java plain\">java.lang.NullPointerException: </code></div><div class=\"line number2 index1 alt1\"><code class=\"java plain\">Cannot invoke </code><code class=\"java string\">\"Author.getName()\"</code> <code class=\"java plain\">because the </code><code class=\"java keyword\">return</code> <code class=\"java plain\">value of </code><code class=\"java string\">\"Book.getAuthor()\"</code> <code class=\"java plain\">is </code><code class=\"java keyword\">null</code></div><div class=\"line number3 index2 alt2\"><code class=\"java spaces\">&nbsp;</code><code class=\"java plain\">at Library.main(Library.java:</code><code class=\"java value\">7</code><code class=\"java plain\">)</code></div></div></td></tr></tbody></table></div></div><p>The exception message pinpoints what was null (<code>Book.getAuthor()</code>) and also displays the action that could not be performed as a result of this (<code>Author.getName()</code>).</p>', 'https://www.javacodegeeks.com/2020/05/java-14-helpful-nullpointerexception-messages.html', 'Wed May 27 02:56:25 IST 2020'),
(3, 'Java puzzlers from OCA part 7', '<p>In this part of the Java Puzzlers from OCA series, I will show multiple ways of defining Strings and potential surprises related to that. Two basic types of creating Strings are creation with new keyword, and by just using the string literal.</p><div><div id=\"highlighter_219480\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div><div class=\"line number2 index1 alt1\">2</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java plain\">String strWithNew = </code><code class=\"java keyword\">new</code> <code class=\"java plain\">String(</code><code class=\"java string\">\"hey\"</code><code class=\"java plain\">);</code></div><div class=\"line number2 index1 alt1\"><code class=\"java plain\">String strWithLiteral = </code><code class=\"java string\">\"ho\"</code><code class=\"java plain\">;</code></div></div></td></tr></tbody></table></div></div><p>As Strings are frequently used JVM uses a string pool and use the values in it so it won&#8217;t have to create new objects for same values again and again. So seeing that the object address of same string literals are same should not be a surprise.</p><div><div id=\"highlighter_812517\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">01</div><div class=\"line number2 index1 alt1\">02</div><div class=\"line number3 index2 alt2\">03</div><div class=\"line number4 index3 alt1\">04</div><div class=\"line number5 index4 alt2\">05</div><div class=\"line number6 index5 alt1\">06</div><div class=\"line number7 index6 alt2\">07</div><div class=\"line number8 index7 alt1\">08</div><div class=\"line number9 index8 alt2\">09</div><div class=\"line number10 index9 alt1\">10</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java keyword\">public</code> <code class=\"java keyword\">class</code> <code class=\"java plain\">Puzzler {</code></div><div class=\"line number2 index1 alt1\">&nbsp;</div><div class=\"line number3 index2 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java keyword\">public</code> <code class=\"java keyword\">static</code> <code class=\"java keyword\">void</code> <code class=\"java plain\">main(String[] args) {</code></div><div class=\"line number4 index3 alt1\">&nbsp;</div><div class=\"line number5 index4 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s1 = </code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">;</code></div><div class=\"line number6 index5 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s2 = </code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">;</code></div><div class=\"line number7 index6 alt2\">&nbsp;</div><div class=\"line number8 index7 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">System.out.println(s1 == s2); </code><code class=\"java comments\">// true</code></div><div class=\"line number9 index8 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">}</code></div><div class=\"line number10 index9 alt1\"><code class=\"java plain\">}</code></div></div></td></tr></tbody></table></div></div><p>Ok then, this should be the same also right?</p><div><div id=\"highlighter_185187\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">01</div><div class=\"line number2 index1 alt1\">02</div><div class=\"line number3 index2 alt2\">03</div><div class=\"line number4 index3 alt1\">04</div><div class=\"line number5 index4 alt2\">05</div><div class=\"line number6 index5 alt1\">06</div><div class=\"line number7 index6 alt2\">07</div><div class=\"line number8 index7 alt1\">08</div><div class=\"line number9 index8 alt2\">09</div><div class=\"line number10 index9 alt1\">10</div><div class=\"line number11 index10 alt2\">11</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java keyword\">public</code> <code class=\"java keyword\">class</code> <code class=\"java plain\">Puzzler {</code></div><div class=\"line number2 index1 alt1\">&nbsp;</div><div class=\"line number3 index2 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java keyword\">public</code> <code class=\"java keyword\">static</code> <code class=\"java keyword\">void</code> <code class=\"java plain\">main(String[] args) {</code></div><div class=\"line number4 index3 alt1\">&nbsp;</div><div class=\"line number5 index4 alt2\">&nbsp;</div><div class=\"line number6 index5 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s1 = </code><code class=\"java keyword\">new</code> <code class=\"java plain\">String(</code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">);</code></div><div class=\"line number7 index6 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s2 = </code><code class=\"java keyword\">new</code> <code class=\"java plain\">String(</code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">);</code></div><div class=\"line number8 index7 alt1\">&nbsp;</div><div class=\"line number9 index8 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">System.out.println(s1 == s2);</code></div><div class=\"line number10 index9 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">}</code></div><div class=\"line number11 index10 alt2\"><code class=\"java plain\">}</code></div></div></td></tr></tbody></table></div></div><p>Not really. This will print &#8220;false&#8221;. So if I create a new string with literal &#8220;myString&#8221; it is placed in the string pool. If I create it with new keyword then it&#8217;s not searched in the pool, and when it&#8217;s created it&#8217;s also not placed in the string pool.</p><div><div id=\"highlighter_445883\" class=\"syntaxhighlighter  java\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">01</div><div class=\"line number2 index1 alt1\">02</div><div class=\"line number3 index2 alt2\">03</div><div class=\"line number4 index3 alt1\">04</div><div class=\"line number5 index4 alt2\">05</div><div class=\"line number6 index5 alt1\">06</div><div class=\"line number7 index6 alt2\">07</div><div class=\"line number8 index7 alt1\">08</div><div class=\"line number9 index8 alt2\">09</div><div class=\"line number10 index9 alt1\">10</div><div class=\"line number11 index10 alt2\">11</div><div class=\"line number12 index11 alt1\">12</div><div class=\"line number13 index12 alt2\">13</div><div class=\"line number14 index13 alt1\">14</div><div class=\"line number15 index14 alt2\">15</div><div class=\"line number16 index15 alt1\">16</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"java keyword\">public</code> <code class=\"java keyword\">class</code> <code class=\"java plain\">Puzzler {</code></div><div class=\"line number2 index1 alt1\">&nbsp;</div><div class=\"line number3 index2 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java keyword\">public</code> <code class=\"java keyword\">static</code> <code class=\"java keyword\">void</code> <code class=\"java plain\">main(String[] args) {</code></div><div class=\"line number4 index3 alt1\">&nbsp;</div><div class=\"line number5 index4 alt2\">&nbsp;</div><div class=\"line number6 index5 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s1 = </code><code class=\"java keyword\">new</code> <code class=\"java plain\">String(</code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">);</code></div><div class=\"line number7 index6 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s2 = </code><code class=\"java keyword\">new</code> <code class=\"java plain\">String(</code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">);</code></div><div class=\"line number8 index7 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s3 = </code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">;</code></div><div class=\"line number9 index8 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">String s4 = </code><code class=\"java string\">\"myString\"</code><code class=\"java plain\">;</code></div><div class=\"line number10 index9 alt1\">&nbsp;</div><div class=\"line number11 index10 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">System.out.println(s1 == s2);</code></div><div class=\"line number12 index11 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">System.out.println(s2 == s3);</code></div><div class=\"line number13 index12 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">System.out.println(s3 == s4);</code></div><div class=\"line number14 index13 alt1\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">System.out.println(s1 == s4);</code></div><div class=\"line number15 index14 alt2\"><code class=\"java spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"java plain\">}</code></div><div class=\"line number16 index15 alt1\"><code class=\"java plain\">}</code></div></div></td></tr></tbody></table></div></div><p>I hope you can guess what happens above. s1 creates a new string and does not put it in the pool, s2 does the same thing. s3 takes a look to string pool does not see myString and creates it and places in the pool. s4 says &#8220;ah ok it is in the pool&#8221;. So if we count how many strings are created, it is 3 and if we count what&#8217;s placed in the pool it&#8217;s 1 (myString). false, false, true, false are what&#8217;s printed to the console.</p>', 'https://www.javacodegeeks.com/2020/05/java-puzzlers-from-oca-part-7.html', 'Wed May 27 03:02:49 IST 2020');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(13, 'Bank Exams'),
(11, 'Software Development'),
(12, 'Software Testing');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `examid` int(11) NOT NULL,
  `examname` varchar(100) NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`examid`, `examname`, `categoryid`) VALUES
(6, 'Java', 11),
(7, 'Python', 11),
(10, '.Net', 11),
(11, 'Time and Distance', 13);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `questionid` int(11) NOT NULL,
  `question` varchar(50000) DEFAULT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `sectionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`questionid`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `sectionid`) VALUES
(13, 'What will be the output of the following program?\r\n\r\nimport java.util.*;\r\npublic class TimeUp {\r\n    public static void main(String[] args) {\r\n        StringBuffer exam = new StringBuffer(\"GATE\");\r\n        Formatter time = new Formatter(exam);\r\n        time.close();\r\n        System.out.println(time);\r\n    }\r\n}\r\n', 'EMPTY', 'GATE', 'Compilation Error', 'Runtime Error', 'Runtime Error', 8),
(14, 'Which four options describe the correct default values for array elements of the types indicated?\r\n\r\n1) int -> 0\r\n2) String -> \"null\"\r\n3) Dog -> null\r\n4) char -> \'\\u0000\'\r\n5) float -> 0.0f\r\n6) boolean -> true\r\n', '1, 2, 3, 4', '1, 3, 4, 5', '2, 4, 5, 6', '3, 4, 5, 6', '1, 3, 4, 5', 8),
(15, 'Which one of these lists contains only Java programming language keywords?', 'class, if, void, long, Int, continue', 'goto, instanceof, native, finally, default, throws', 'try, virtual, throw, final, volatile, transient', 'strictfp, constant, super, implements, do', 'goto, instanceof, native, finally, default, throws', 8),
(16, 'Which will legally declare, construct, and initialize an array?', 'int [] myList = {\"1\", \"2\", \"3\"};', 'int [] myList = (5, 8, 2);', 'int myList [] [] = {4,9,7,0};', 'int myList [] = {4, 3, 7};', 'int myList [] = {4, 3, 7};', 8),
(17, 'Which is a reserved word in the Java programming language?', 'method', 'native', 'subclasses', 'reference', 'native', 8),
(18, 'Which is a valid keyword in java?', 'interface', 'string', 'Float', 'unsigned', 'interface', 8),
(19, 'Which three are legal array declarations?\r\n\r\n1) int [] myScores [];\r\n2) char [] myChars;\r\n3) int [6] myScores;\r\n4) Dog myDogs [];\r\n5) Dog myDogs [7];', '1, 2, 4', '2, 4, 5', '2, 3, 4', 'All are correct.', '1, 2, 4', 8),
(20, 'public interface Foo \r\n{ \r\n    int k = 4; /* Line 3 */\r\n}\r\nWhich three piece of codes are equivalent to line 3?\r\n\r\n1) final int k = 4;\r\n2) public int k = 4;\r\n3) static int k = 4;\r\n4) abstract int k = 4;\r\n5) volatile int k = 4;\r\n6) protected int k = 4;', '1, 2 and 3', '2, 3 and 4', '3, 4 and 5', '4, 5 and 6', '1, 2 and 3', 8),
(21, 'Which one of the following will declare an array and initialize it with five numbers?', 'Array a = new Array(5);', 'int [] a = {23,22,21,20,19};', 'int a [] = new int[5];', 'int [5] array;', 'int [] a = {23,22,21,20,19};', 8),
(22, 'Which three are valid declarations of a char?\r\n\r\n1) char c1 = 064770;\r\n2) char c2 = \'face\';\r\n3) char c3 = 0xbeef;\r\n4) char c4 = \\u0022;\r\n5) char c5 = \'\\iface\';\r\n6) char c6 = \'\\uface\';', '1, 2, 4', '1, 3, 6', '3, 5', '5 only', '1, 3, 6', 8),
(23, 'Which is the valid declarations within an interface definition?', 'public double methoda();', 'public final double methoda();', 'static void methoda(double d1);', 'protected void methoda(double d1);', 'public double methoda();', 8),
(24, 'Suppose that you would like to create an instance of a new Map that has an iteration order that is the same as the iteration order of an existing instance of a Map. Which concrete implementation of the Map interface should be used for the new instance?', 'TreeMap', 'HashMap', 'LinkedHashMap', 'The answer depends on the implementation of the existing instance.', 'LinkedHashMap', 8),
(25, 'Which class does not override the equals() and hashCode() methods, inheriting them directly from class Object?', 'java.lang.String', 'java.lang.Double', 'java.lang.StringBuffer', 'java.lang.Character', 'java.lang.StringBuffer', 8),
(26, 'Which collection class allows you to grow or shrink its size and provides indexed access to its elements, but whose methods are not synchronized?', 'java.util.HashSet', 'java.util.LinkedHashSet', 'java.util.List', 'java.util.ArrayList', 'java.util.ArrayList', 8),
(27, 'You need to store elements in a collection that guarantees that no duplicates are stored and all elements can be accessed in natural order. Which interface provides that capability?', 'java.util.Map', 'java.util.Set', 'java.util.List', 'java.util.Collection', 'java.util.Set', 8),
(28, 'Which interface does java.util.Hashtable implement?', 'Java.util.Map', 'Java.util.List', 'Java.util.HashTable', 'Java.util.Collection', 'Java.util.Map', 8),
(29, 'Which of these keywords are used to define an abstract class?', 'abst', 'abstract', 'Abstract', 'abstract class', 'abstract', 8),
(30, 'Which of these is not abstract?', 'Thread', 'AbstractList', 'List', 'none', 'Thread', 8),
(31, 'What will be the output of the following Java code?\n\n    class A \n    {\n        public int i;\n        private int j;\n    }    \n    class B extends A \n    {\n        void display() \n        {\n            super.j = super.i + 1;\n            System.out.println(super.i + \" \" + super.j);\n        }\n    }    \n    class inheritance \n   {\n        public static void main(String args[])\n        {\n            B obj = new B();\n            obj.i=1;\n            obj.j=2;   \n            obj.display();     \n        }\n   }', '2 2', '3 3', 'Runtime Error', 'Compilation Error', 'Compilation Error', 8),
(32, 'Which of this keyword must be used to inherit a class?', 'super', 'this', 'extent', 'extends', 'extends', 8),
(33, ' A class member declared protected becomes a member of subclass of which type?\n', 'public member', 'private member', 'protected member', 'static member', 'private member', 8),
(34, 'What will be the output of the following Java program?\n\n    class A \n    {\n        int i;\n        void display() \n        {\n            System.out.println(i);\n        }\n    }    \n    class B extends A \n    {\n        int j;\n        void display() \n        {\n            System.out.println(j);\n        }\n    }    \n    class inheritance_demo \n    {\n        public static void main(String args[])\n        {\n            B obj = new B();\n            obj.i=1;\n            obj.j=2;   \n            obj.display();     \n        }\n   }', '0.0', '1.0', '2.0', 'Compilation Error', '2.0', 8),
(35, 'What will be the output of the following Java program?\n\n    class A \n    {\n        public int i;\n        public int j;\n        A() \n        {\n            i = 1;\n            j = 2;\n }\n    }    \n    class B extends A \n    {\n        int a;\n        B() \n        {\n            super();\n        } \n    }    \n    class super_use \n    {\n        public static void main(String args[])\n        {\n            B obj = new B();\n            System.out.println(obj.i + \" \" + obj.j)     \n        }\n   }', '\n1 2             ', '2 1', 'Runtime Error ', 'Compilation Error', '\n1 2             ', 8),
(36, 'Native-protocol pure Java converts ……….. into the ………… used by DBMSs directly.', ' JDBC calls, network protocol', ' ODBC class, network protocol', ' ODBC class, user call', ' JDBC calls, user call', 'JDBC calls, network protocol', 8),
(37, 'break statement is used to\ni) get out of method \nii) end a program\niii) get out of a loop \niv) get out of the system\n', ' 1 & 2', ' 1,2 & 3', ' 1 & 3\n', '3.0', '3.0', 8),
(38, '\nOOP features are\ni) Increasing productivity \nii) Reusability\niii) Decreasing maintenance cost \niv) High vulnerability', ' 1,2 & 4', ' 1,2 & 3', ' 1, 2 & 4', 'none of these', ' 1,2 & 3', 8),
(39, 'Which is the root class of all AWT events', ' java.awt.ActionEvent', ' java.awt.AWTEvent', ' java.awt.event.AWTEvent', ' java.awt.event.Event', 'java.awt.AWTEvent', 8),
(40, 'The command javac is used to\n', ' debug a java program', ' compile a java program', ' interpret a java program', ' execute a java program', ' compile a java program', 8),
(41, 'Which one of the following is true for Java', ' Java is object-oriented and interpreted', ' Java is efficient and faster than C', ' Java is the choice of everyone.', ' Java is not robust.', ' Java is object-oriented and interpreted', 8),
(42, 'Java programs are', ' Faster than others', ' Platform independent', ' Not reusable', ' Not scalable', ' Platform independent', 8),
(46, 'What is MVC?', 'po1', 'hdgh', 'dfh', 'dhdf', 'po1', 8);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultid` int(11) NOT NULL,
  `testid` int(11) DEFAULT NULL,
  `studentusername` varchar(100) DEFAULT NULL,
  `maxquestion` int(11) DEFAULT NULL,
  `maxmarks` int(11) DEFAULT NULL,
  `attempted` int(11) DEFAULT NULL,
  `correct` int(11) DEFAULT NULL,
  `obtained` int(11) DEFAULT NULL,
  `view` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`resultid`, `testid`, `studentusername`, `maxquestion`, `maxmarks`, `attempted`, `correct`, `obtained`, `view`) VALUES
(4, 9, 'rakshits31', 7, 7, 3, 3, 3, -1),
(5, 9, 'mahesh213', 7, 7, 6, 2, 2, -1),
(6, 9, 'maneesh123', 7, 7, 6, 4, 4, -1),
(7, 9, 'tejasshelar23', 7, 7, 0, 0, 0, -1),
(8, 9, 'anupritishirke', 7, 7, 7, 6, 6, -1),
(9, 9, 'rajashree45', 7, 7, 5, 4, 4, -1),
(10, 9, 'pravin345', 7, 7, 6, 5, 5, -1),
(11, 5, 'anupritishirke', 30, 30, 28, 26, 26, 322196387),
(12, 5, 'rajashree45', 30, 30, 29, 14, 14, -1),
(14, 2, 'pravinvaid', 25, 25, 0, 0, 0, -1),
(15, 9, 'pravinvaid', 7, 7, 7, 6, 6, -1),
(16, 5, 'sagar', 30, 30, 1, 1, 1, -1),
(17, 5, 'sagarghodake', 30, 30, 9, 1, 1, -1),
(18, 9, 'sagarghodake', 7, 7, 7, 4, 4, -1),
(19, 8, 'sagarghodake', 30, 30, 3, 1, 1, -1),
(20, 6, 'sagarghodake', 30, 30, 2, 1, 1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sectionid` int(11) NOT NULL,
  `sectionname` varchar(100) NOT NULL,
  `examid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionid`, `sectionname`, `examid`) VALUES
(8, 'Java SE 8', 6),
(9, 'Core Python', 7),
(10, 'ASP.NET', 10),
(11, 'Aptitude & Reasoning', 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dateofbirth` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `regdate` varchar(100) DEFAULT '2020-04-02'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`username`, `password`, `name`, `address`, `gender`, `dateofbirth`, `email`, `contact`, `regdate`) VALUES
('ajitshinde', '2019559494', 'ajit shinde', 'satara', 'Male', '1996-12-05', 'shinde@gmail.com', '9587456212', '2020-05-30'),
('amitshinde', '779248731', '', '', 'Male', '', '', '', '2020-06-02'),
('angadsha', '2021938075', 'ANGAD SHARMA', 'dattanager,pune', 'Male', '1993-11-11', 'ksjjkjskjfk@gmail.com', '6678767890', '2020-05-29'),
('farhan123', '46792755', 'farhan akthar', 'pune.', 'Male', '1993-12-03', 'farhanak@gmail.com', '45678', '2020-06-02'),
('mahesh213', '46792755', 'mahesh squad', 'kothrud,pune.', 'Male', '1995-01-20', 'mahesh45@gmail.com', '8879', '2020-06-02'),
('maneesh123', '46792755', 'manesh kumar ', 'bihar.', 'Male', '1992-09-11', 'm@gmail.com', '67845', '2020-06-02'),
('pravin345', '46792755', 'pravin singh', 'karvenager,pune', 'Male', '1993-12-16', 'pravin345@gmail.com', '78967', '2020-06-02'),
('pravinvaid', '-1744942811', 'pravin vaidya', 'dattanager,pune', 'Male', '1992-11-16', 'montyshetty11@gmail.com', '8898908907', '2020-06-02'),
('rajashree45', '46792755', 'rajashree kumbhar', 'kolhapur.', 'Female', '1994-10-12', 'raju23@gmail.com', '87866', '2020-06-02'),
('rakshits31', '1163280337', 'rakshit sarvotham shetty', 'teleco colony dattanager pune', 'male', '16/11/1992', 'rakshits31@gmail.com', '880', '2020-06-02'),
('ranjeet31', '46792755', 'ranjeet shetty', 'balajinager,pune.', 'Male', '1991-09-19', 'rony54@gmail.com', '8897', '2020-06-02'),
('sagarghodake', '109196746', 'Sagar Satyavan Ghodake', 'Narhegaon,Pune', 'Male', '1997-01-03', 'sagarghodake1432@gmail.com', '9527495733', '2020-08-24'),
('saibabar', '1847789689', 'Sai Babar', 'Pune', 'Male', '2014-01-25', 'sai@gmailcom', '9632147852', '2020-08-24'),
('sidhu', '220827127', 'sidhanath thorat', 'Satara', 'Male', '1997-11-26', 'sidhu49@gmail.com', '9876543210', '2020-06-02'),
('somnath', '-2029385608', 'somnath', 'Narhegaon,Pune-411041', 'Male', '1997-02-01', 'somnath@gmail.com', '9856741245', '2020-08-24'),
('tejasshelar23', '-1861353340', 'tejas shelar', 'pune', 'Male', '1993-11-16', 'tejasshelar@gmail.com', '77845', '2020-06-02'),
('vallabh123', '2018166324', 'vallabh paratkar', 'kothrud,pune.', 'Male', '1994-11-16', 'vallabhp95@gmail.com', '6789', '2020-06-02'),
('vallabha', '231333660', 'Vallabh', 'Narhegaon,Pune', 'Male', '2012-12-01', 'vallabh@gmail.com', '9856471245', '2020-08-24'),
('vijayshinde', '112208527', 'Vijay Shinde', 'Satara', 'Male', '1996-02-01', 'vijay@gmail.com', '9532547896', '2020-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `studymaterial`
--

CREATE TABLE `studymaterial` (
  `documentid` int(11) NOT NULL,
  `subjectname` varchar(50) DEFAULT NULL,
  `documenttype` varchar(100) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `testid` int(11) NOT NULL,
  `testname` varchar(50) NOT NULL,
  `testtype` varchar(30) NOT NULL,
  `maxquestion` int(11) NOT NULL,
  `maxmarks` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `testfee` int(5) NOT NULL,
  `examid` int(11) DEFAULT NULL,
  `open` varchar(15) DEFAULT NULL,
  `closes` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`testid`, `testname`, `testtype`, `maxquestion`, `maxmarks`, `duration`, `testfee`, `examid`, `open`, `closes`) VALUES
(2, 'Java SE 8', 'practice', 25, 25, 15, 0, 6, '2020-05-11', '2020-05-25'),
(3, 'Java SE 8 (2)', 'practice', 20, 20, 15, 0, 6, '2020-05-11', '2020-05-18'),
(4, 'Java SE 8 (3)', 'practice', 30, 30, 25, 0, 6, '2020-05-11', '2020-05-20'),
(5, 'Java SE 8', 'mock', 30, 30, 30, 0, 6, '2020-05-11', 'no CLosing Date'),
(6, 'Java SE Eval 2', 'mock', 30, 30, 25, 0, 6, '2020-05-11', 'no CLosing Date'),
(7, 'Java SE Eval 3', 'mock', 30, 30, 25, 0, 6, '2020-05-11', 'no CLosing Date'),
(8, 'Java SE Eval 4', 'mock', 30, 30, 25, 0, 6, '2020-05-11', 'no CLosing Date'),
(9, 'Java SE 8 (4)', 'practice', 7, 7, 5, 0, 6, '2020-05-15', '2020-05-25'),
(10, 'Java SE 8 (5)', 'practice', 12, 12, 7, 0, 6, '2020-06-02', '2020-06-25'),
(11, 'Java SE 8 (6)', 'practice', 15, 15, 10, 0, 6, '2020-06-05', '2020-06-25'),
(12, 'Java SE 8 (7)', 'practice', 15, 15, 10, 0, 6, '2020-06-07', '2020-06-23'),
(14, 'Python Test', 'mock', 15, 30, 14, 0, 7, '2020-06-17', '2020-06-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignmentid`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `categoryname` (`categoryname`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`examid`),
  ADD KEY `fk_categoryid` (`categoryid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`questionid`),
  ADD KEY `fk_sectionid` (`sectionid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionid`),
  ADD KEY `fk_sectionexamid` (`examid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `studymaterial`
--
ALTER TABLE `studymaterial`
  ADD PRIMARY KEY (`documentid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`testid`),
  ADD KEY `fk_examid` (`examid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `examid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `sectionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studymaterial`
--
ALTER TABLE `studymaterial`
  MODIFY `documentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `testid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `fk_categoryid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_sectionid` FOREIGN KEY (`sectionid`) REFERENCES `section` (`sectionid`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `fk_sectionexamid` FOREIGN KEY (`examid`) REFERENCES `exam` (`examid`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `fk_examid` FOREIGN KEY (`examid`) REFERENCES `exam` (`examid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
