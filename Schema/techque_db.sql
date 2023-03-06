-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 09:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techque_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pfpUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `firstname`, `lastname`, `email`, `password`, `pfpUrl`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`language`) VALUES
('C#'),
('C++'),
('Java');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `certificate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessonmetadata`
--

CREATE TABLE `lessonmetadata` (
  `id` int(11) NOT NULL,
  `lessonId` int(11) DEFAULT NULL,
  `usersViewed` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessonmetadata`
--

INSERT INTO `lessonmetadata` (`id`, `lessonId`, `usersViewed`) VALUES
(1, 1, '65'),
(2, 2, '65'),
(3, 1, '65'),
(4, 1, '65'),
(5, 1, '65'),
(6, 25, '65'),
(7, 31, '65'),
(8, 31, '65'),
(9, 3, '65'),
(10, 0, '66'),
(11, 1, '66'),
(12, 0, '66'),
(13, 0, '66'),
(14, 0, '66'),
(15, 1, '66'),
(16, 2, '66'),
(17, 2, '66'),
(18, 4, '5'),
(19, 0, '5'),
(20, 4, '5'),
(21, 8, '66'),
(22, 20, '66'),
(23, 0, '66'),
(24, 19, '66'),
(25, 1, '66'),
(26, 2, '66'),
(27, 3, '66'),
(28, 7, '66'),
(29, 4, '66'),
(30, 5, '66'),
(31, 6, '66'),
(32, 8, '66'),
(33, 9, '66'),
(34, 9, '66'),
(35, 10, '66'),
(36, 14, '66'),
(37, 15, '66'),
(38, 16, '66'),
(39, 17, '66'),
(40, 18, '66'),
(41, 19, '66'),
(42, 20, '66'),
(43, 1, '66'),
(44, 0, '66'),
(45, 11, '66'),
(46, 12, '66'),
(47, 13, '66'),
(48, 34, '65');

-- --------------------------------------------------------

--
-- Table structure for table `new_lessons`
--

CREATE TABLE `new_lessons` (
  `lessonId` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `category` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `thumbnailImage` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_lessons`
--

INSERT INTO `new_lessons` (`lessonId`, `name`, `category`, `content`, `thumbnailImage`) VALUES
(1, 'C# Intro', 'C#', '# C# Intro\r\n---\r\n## What is C#?\r\nC# is pronounced \"C-Sharp\".\r\n\r\nIt is an object-oriented programming language created by Microsoft that runs on the .NET Framework.\r\n\r\nC# has roots from the C family, and the language is close to other popular languages like **C++** and **Java**.\r\n\r\nThe first version was released in year 2002. The latest version, C# 11, was released in November 2022.\r\n\r\n## C# is used for:\r\n\r\n- Mobile applications\r\n- Desktop applications\r\n- Web applications\r\n- Web services\r\n- Web sites\r\n- Games\r\n- And much, much more!\r\n## Why Use C#?\r\n- It is one of the most popular programming language in the world\r\n- It is easy to learn and simple to use\r\n- It has a huge community support\r\n- C# is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs\r\n- As C# is close to C, C++ and Java, it makes it easy for programmers to switch to C# or vice versa', NULL),
(2, 'C# Syntax', 'C#', '# C# Syntax\r\n---\r\n## C# Syntax\r\n\r\n\r\n**Program.cs**\r\n\r\n`using` System;\r\n\r\n`namespace` HelloWorld\r\n\r\n{\r\n\r\n `class` Program\r\n\r\n  {\r\n\r\n `static` void Main(string[] args)\r\n\r\n    {\r\n   \r\n   Console.`WriteLine`(\"Hello World!\");    \r\n\r\n        }\r\n      }\r\n\r\n    }\r\n**Result:**\r\n\r\nHello World!\r\n\r\n**Example explained**\r\n\r\n**Line 1:** using System means that we can use classes from the System namespace.\r\n\r\n**Line 2:** A blank line. C# ignores white space. However, multiple lines makes the code more readable.\r\n\r\n**Line 3:** namespace is used to organize your code, and it is a container for classes and other namespaces.\r\n\r\n**Line 4:** The curly braces {} marks the beginning and the end of a block of code.\r\n\r\n**Line 5:** class is a container for data and methods, which brings functionality to your program. Every line of code that runs in C# must be inside a class. In our example, we named the class Program.\r\nLine 6: Another thing that always appear in a C# program, is the Main method. Any code inside its curly brackets {} will be executed. You don\'t have to understand the keywords before and after Main. You will get to know them bit by bit while reading this tutorial.\r\n\r\n**Line 6:** Console is a class of the System namespace, which has a WriteLine() method that is used to output/print text. In our example it will output \"Hello World!\".', NULL),
(3, 'C# Output', 'C#', '# C# Output\r\n---\r\n\r\n## C# Output\r\nTo output values or print text in C#, you can use the `WriteLine()` method:\r\n\r\n**Example**\r\n\r\nConsole.`WriteLine`(\"Hello World!\");\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\nYou can add as many `WriteLine()` methods as you want. Note that it will add a new line for each method:\r\n\r\n**Example**\r\n\r\nConsole.`WriteLine`(\"Hello World!\");\r\n\r\nConsole.`WriteLine`(\"I am Learning C#\");\r\n\r\nConsole.`WriteLine`(\"It is awesome!\");\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\nI am Learning C#\r\n\r\nIt is awesome!\r\n', NULL),
(4, 'C# Comment', 'C#', '# C# Comments\r\n---\r\n\r\n## C# Comments\r\nComments can be used to explain C# code, and to make it more readable. It can also be used to prevent execution when testing alternative code.\r\n\r\n## Single-line Comments\r\nSingle-line comments start with two forward slashes (`//`).\r\n\r\nAny text between `//` and the end of the line is ignored by C# (will not be executed).\r\n\r\nThis example uses a single-line comment before a line of code:\r\n\r\n**Example**\r\n\r\n// This is a comment\r\nConsole.`WriteLine`(\"Hello World!\");\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\nThis example uses a single-line comment at the end of a line of code:\r\n\r\nExample\r\nConsole.WriteLine(\"Hello World!\");  // This is a comment\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\n## C# Multi-line Comments\r\nMulti-line comments start with `/*` and ends with `*/`.\r\n\r\nAny text between `/*` and `*/` will be ignored by C#.\r\n\r\nThis example uses a multi-line comment (a comment block) to explain the code:\r\n\r\n**Example**\r\n\r\n/* The code below will print the words Hello World\r\nto the screen, and it is amazing */\r\n\r\nConsole.WriteLine(\"Hello World!\");\r\n\r\n**Result:**\r\n\r\nHello World! ', NULL),
(5, 'C# Variables', 'C#', '# C# Variables\r\n---\r\n## C# Variables\r\nVariables are containers for storing data values.\r\n\r\nIn C#, there are different **types** of variables (defined with different keywords), for example:\r\n\r\n- `int` - stores integers (whole numbers), without decimals, such as 123 or -123\r\n- `double` - stores floating point numbers, with decimals, such as 19.99 or -19.99\r\n- `char` - stores single characters, such as \'a\' or \'B\'. Char values are surrounded by single quotes\r\n- `string` - stores text, such as \"Hello World\". String values are surrounded by double quotes\r\n- `bool` - stores values with two states: true or false\r\n\r\n## Declaring (Creating) Variables\r\nTo create a variable, you must specify the type and assign it a value:\r\n\r\n**Syntax**\r\n\r\n*type variableName = value*;\r\n\r\nWhere *type* is a C# type (such as `int` or `string`), and *variableName* is the name of the variable (such as **x** or **name**). The equal sign is used to assign values to the variable.\r\n\r\nTo create a variable that should store text, look at the following example:\r\n\r\n**Example**\r\n\r\nCreate a variable called name of type string and assign it the value **\"John\"**:\r\n\r\n`string` name = \"John\";\r\n\r\nConsole.`WriteLine`(name);\r\n\r\n**Result:**\r\n\r\nJohn', NULL),
(6, 'C# Data Types', 'C#', '## C# Data Type\r\n---\r\nAs explained in the variables chapter, a variable in C# must be a specified data type:\r\n\r\n**Example**\r\n\r\n`int` myNum = 5;               // Integer (whole number)\r\n\r\n`double` myDoubleNum = 5.99D;  // Floating point number\r\n\r\n`char` myLetter = \'D\';         // Character\r\n\r\n`bool` myBool = true;          // Boolean\r\n\r\n`string` myText = \"Hello\";     // String\r\n\r\nA data type specifies the size and type of variable values.\r\n\r\nIt is important to use the correct data type for the corresponding variable; to avoid errors, to save time and memory, but it will also make your code more maintainable and readable. The most common data types are:\r\n\r\n| Data Type| Size | Description |\r\n| ----------- | ----------- | ----------- |\r\n| int | 4 bytes  | Stores whole numbers from -2,147,483,648 to 2,147,483,647|\r\n| long | 8 bytes  | 	Stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807|\r\n| float | 4 bytes  | Stores fractional numbers. Sufficient for storing 6 to 7 decimal digits|\r\n| double | 8 bytes  | Stores fractional numbers. Sufficient for storing 15 decimal digits |\r\n| bool | 1 bit | 	Stores true or false values  |\r\n| char | 2 bytes | 		Stores a single character/letter, surrounded by single quotes |\r\n| string | 2 bytes per character| Stores a sequence of characters, surrounded by double quotes |\r\n', NULL),
(7, 'C# Type Casting', 'C#', '## C# Type Casting\r\n---\r\nType casting is when you assign a value of one data type to another type.\r\n\r\nIn C#, there are two types of casting:\r\n\r\n- **Implicit Casting** (automatically) - converting a smaller type to a larger type size\r\n`char` -> `int` -> `long` -> `float` -> `double`\r\n\r\n- **Explicit Casting** (manually) - converting a larger type to a smaller size type\r\n`double` -> `float` -> `long` -> `int` -> `char`\r\n\r\n## Implicit Casting\r\nImplicit casting is done automatically when passing a smaller size type to a larger size type:\r\n\r\n**Example**\r\n\r\n`int` myInt = 9;\r\ndouble myDouble = myInt;       // Automatic casting: int to double\r\n\r\nConsole.`WriteLine`(myInt);      // Outputs 9\r\n\r\nConsole.`WriteLine`(myDouble);   // Outputs 9\r\n\r\n## Explicit Casting\r\nExplicit casting must be done manually by placing the type in parentheses in front of the value:\r\n\r\n**Example**\r\n\r\n`double` myDouble = 9.78;\r\n\r\n`int` myInt = (int) myDouble;    // Manual casting: double to int\r\n\r\nConsole.`WriteLine`(myDouble);   // Outputs 9.78\r\nConsole.`WriteLine`(myInt);      // Outputs 9', NULL),
(8, 'C# User Input', 'C#', '## C# User Input\r\n---\r\nYou have already learned that `Console.WriteLine()` is used to output (print) values. Now we will use `Console.ReadLine()` to get user input.\r\n\r\nIn the following example, the user can input his or hers username, which is stored in the variable `userName`. Then we print the value of `userName`:\r\n\r\n**Example**\r\n\r\n// Type your username and press enter\r\n\r\nConsole.`WriteLine`(\"Enter username:\");\r\n\r\n// Create a string variable and get user input from the keyboard and store it in the variable\r\n\r\n`string` userName = Console.ReadLine();\r\n\r\n// Print the value of the variable (userName), which will display the input value\r\n\r\nConsole.`WriteLine`(\"Username is: \" + userName);\r\n\r\n## User Input and Numbers\r\nThe `Console.ReadLine()` method returns a string. Therefore, you cannot get information from another data type, such as int. The following program will cause an error:\r\n\r\nExample\r\nConsole.`WriteLine`(\"Enter your age:\");\r\n\r\nint age = Console.`ReadLine`();\r\n\r\nConsole.`WriteLine`(\"Your age is: \" + age);\r\n\r\n**The error message will be something like this:**\r\n\r\nCannot implicitly convert type \'string\' to \'int\'\r\n\r\nLike the error message says, you cannot implicitly convert type \'string\' to \'int\'.\r\n\r\nYou can convert any type explicitly, by using one of the `Convert.To` methods:\r\n\r\n**Example**\r\n\r\nConsole.`WriteLine`(\"Enter your age:\");\r\n\r\n`int` age = `Convert.ToInt32`(Console.`ReadLine`());\r\n\r\nConsole.`WriteLine`(\"Your age is: \" + age);', NULL),
(9, 'C# Arithmetic', 'C#', '## C# Arithmetic Operators\r\n---\r\n### Operators\r\nOperators are used to perform operations on variables and values.\r\n\r\nIn the example below, we use the `+` operator to add together two values:\r\n\r\n**Example**\r\n\r\n`int` x = 100 `+` 50;\r\n\r\nAlthough the `+` operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:\r\n\r\n**Example**\r\n\r\n`int` sum1 = 100 `+` 50;        // 150 (100 + 50)\r\n\r\n`int` sum2 = sum1 `+` 250;      // 400 (150 + 250)\r\n\r\n`int` sum3 = sum2 `+` sum2;     // 800 (400 + 400)\r\n\r\n### Arithmetic Operators\r\nArithmetic operators are used to perform common mathematical operations:\r\n\r\n| Operator | Name |Description | Example |\r\n| ----------- | ----------- | ----------- | ----------- |\r\n| + | Addition | Adds together two values | x + y |\r\n| - | Subtraction | 	Subtracts one value from another | x - y |\r\n| * | Multiplication | 	Multiplies two values | x * y |\r\n| / | Division | 	Divides one value by another | x / y |\r\n| % | Modulus | Returns the division remainder | x % y |\r\n| ++ | Increment | 	Increases the value of a variable by 1 | x++ |\r\n| -- | Decrement | 	decreases the value of a variable by 1 | x-- |', NULL),
(10, 'C# Assignment Operators', 'C#', '## C# Assignment Operators\r\n---\r\n## Assignment Operators\r\nAssignment operators are used to assign values to variables.\r\n\r\nIn the example below, we use the **assignment** operator (`=`) to assign the value **10** to a variable called **x**:\r\n\r\n**Example**\r\n\r\n`int` x = 10;\r\n\r\nThe addition assignment operator (`+=`) adds a value to a variable:\r\n\r\n**Example**\r\n\r\n`int` x = 10;\r\n\r\nx += 5; // with this the x value will be 15\r\n\r\nA list of all assignment operators:\r\n\r\n| Operator | Example | Same As |\r\n| ----------- | ----------- | ----------- |\r\n | =|	x = 5	|x = 5|	\r\n|+=	|x += 3	|x = x + 3|	\r\n|-=	|x -= 3|	x = x - 3	|\r\n|*=	|x *= 3	|x = x * 3	|\r\n|/=	|x /= 3|	x = x / 3	|\r\n|%=	|x %= 3	|x = x % 3	|\r\n|&=	|x &= 3|	x = x & 3|	\r\n|l=	|x l= 3	|x = x l 3	|\r\n|^=	|x ^= 3|	x = x ^ 3	|\r\n|>>=	|x >>= 3	|x = x >> 3|	\r\n<<=	|x <<= 3	|x = x << 3', NULL),
(11, 'C# Comparison Operator', 'C#', '## Comparison Operator\r\n---\r\nComparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.\r\n\r\nThe return value of a comparison is either `True` or `False`. These values are known as *Boolean values*, and you will learn more about them in the **Booleans** and **If..Else** chapter.\r\n\r\nIn the following example, we use the **greater than operator** (`>`) to find out if 5 is greater than 3:\r\n\r\n**Example**\r\n\r\n`int` x = 5;\r\n\r\n`int` y = 3;\r\n\r\nConsole.`WriteLine`(x `>` y); // returns True because 5 is greater than 3\r\n\r\nA list of all comparison operators:\r\n\r\n| Operator | Name | Example |\r\n| ----------- | ----------- | ----------- |\r\n|==	|Equal to|	x == y |	\r\n|!=	|Not equal	|x != y	|\r\n|>	|Greater than|	x > y	|\r\n|<	|Less than	|x < y	|\r\n|>=	|Greater than or equal to|	x >= y	\r\n|<=	|Less than or equal to	|x <= y|', NULL),
(12, 'C# Logical Operator', 'C#', '## C# Logical Operator\r\n---\r\n\r\nAs with **comparison operators**, you can also test for `True` or `False` values with **logical operators**.\r\n\r\nLogical operators are used to determine the logic between variables or values:\r\n\r\n\r\n| Operator | Name | Description | Example |\r\n| ----------- | ----------- |  ----------- | ----------- |\r\n|&& |	Logical and|	Returns True if both statements are true|	x < 5 &&  x < 10	|\r\n|II	|Logical or|	Returns True if one of the statements is true|	x < 5 II x < 4	|\r\n|!	|Logical not	|Reverse the result, returns False if the result is true|	!(x < 5 && x < 10)', NULL),
(13, 'C# Math', 'C#', '# C# Math\r\n---\r\nThe C# Math class has many methods that allows you to perform mathematical tasks on numbers.\r\n\r\n## Math.Max(x,y)\r\nThe `Math.Max(x,y)` method can be used to find the highest value of *x* and *y*:\r\n\r\n**Example**\r\n\r\nMath.`Max`(5, 10);\r\n\r\n## Math.Min(x,y)\r\nThe `Math.Min(x,y)` method can be used to find the lowest value of of *x* and *y*:\r\n\r\n**Example**\r\n\r\nMath.`Min`(5, 10);\r\n\r\n## Math.Sqrt(x)\r\nThe `Math.Sqrt(x)` method returns the square root of x:\r\n\r\n**Example**\r\n\r\nMath.`Sqrt`(64);\r\n\r\n## Math.Abs(x)\r\nThe `Math.Abs(x)` method returns the absolute (positive) value of x:\r\n\r\n**Example**\r\n\r\nMath.`Abs`(-4.7);\r\n\r\n## Math.Round()\r\n`Math.Round()` rounds a number to the nearest whole number:\r\n\r\n**Example**\r\n\r\nMath.`Round`(9.99);', NULL),
(14, 'C# Strings', 'C#', '# C# Strings\r\n---\r\nStrings are used for storing text.\r\n\r\nA `string` variable contains a collection of characters surrounded by double quotes:\r\n\r\n**Example**\r\n\r\nCreate a variable of type `string` and assign it a value:\r\n\r\n`string` greeting = \"Hello\";\r\n\r\n**Result:**\r\n\r\nHello\r\n\r\nA string variable can contain many words, if you want:\r\n\r\nExample\r\nstring greeting2 = \"Nice to meet you!\";\r\n\r\n**Result:**\r\n\r\nNice to meet you!\r\n\r\n## String Length\r\nA string in C# is actually an object, which contain properties and methods that can perform certain operations on strings. For example, the length of a string can be found with the `Length` property:\r\n\r\n**Example**\r\n\r\n`string` txt = \"ABCDEFGHIJKLMNOPQRSTUVWXYZ\";\r\n\r\nConsole.`WriteLine`(\"The length of the txt string is: \" + txt.Length);\r\n\r\n## Other Methods\r\nThere are many string methods available, for example `ToUpper() `and `ToLower()`, which returns a copy of the string converted to uppercase or lowercase:\r\n\r\n**Example**\r\n\r\n`string` txt = \"Hello World\";\r\nConsole.`WriteLine`(txt.`ToUpper()`);   // Outputs \"HELLO WORLD\"\r\n\r\nConsole.`WriteLine`(txt.`ToLower()`);   // Outputs \"hello world\"', NULL),
(15, 'C# String Concatenation', 'C#', '## String Concatenation\r\n---\r\n\r\nThe `+` operator can be used between strings to combine them. This is called **concatenation**:\r\n\r\n**Example**\r\n\r\n`string` firstName = \"John \";\r\n\r\n`string` lastName = \"Doe\";\r\n\r\n`string` name = firstName + lastName;\r\n\r\nConsole.`WriteLine`(name);\r\n\r\nNote that we have added a space after \"John\" to create a space between firstName and lastName on print.\r\n\r\nYou can also use the `string.Concat()` method to concatenate two strings:\r\n\r\n**Example**\r\n\r\n`string` firstName = \"John \";\r\n\r\n`string` lastName = \"Doe\";\r\n\r\n`string` name = `string.Concat`(firstName, lastName);\r\nConsole.`WriteLine`(name);\r\n\r\n## Adding Numbers and Strings\r\nWARNING!\r\n\r\nC# uses the + operator for both addition and concatenation.\r\n\r\n**Remember**: Numbers are added. Strings are concatenated.\r\n\r\nIf you add two numbers, the result will be a number:\r\n\r\n**Example**\r\n\r\n`int` x = 10;\r\n\r\n`int` y = 20;\r\n\r\n`int` z = x + y;  // z will be 30 (an integer/number)\r\n\r\nIf you add two strings, the result will be a string concatenation:\r\n\r\n**Example**\r\n\r\n`string` x = \"10\";\r\n\r\n`string` y = \"20\";\r\n\r\n`string` z = x + y;  // z will be 1020 (a string)', NULL),
(16, 'C# Interpolation', 'C#', '## C# Interpolation\r\n---\r\n### String Interpolation\r\nAnother option of *string concatenation*, is **string interpolation**, which substitutes values of variables into placeholders in a string. Note that you do not have to worry about spaces, like with concatenation:\r\n\r\n**Example**\r\n\r\n`string` firstName = \"John\";\r\n\r\n`string` lastName = \"Doe\";\r\n\r\n`string` name = `$`\"My full name is: {firstName} {lastName}\";\r\nConsole.`WriteLine`(name);\r\n\r\nAlso note that you have to use the dollar sign (`$`) when using the string interpolation method.\r\n\r\nString interpolation was introduced in C# version 6.\r\n\r\n', NULL),
(17, 'C# Booleans', 'C#', '# C# Booleans\r\n---\r\n\r\nVery often, in programming, you will need a data type that can only have one of two values, like:\r\n\r\n- YES / NO\r\n- ON / OFF\r\n- TRUE / FALSE\r\n\r\nFor this, C# has a **bool** data type, which can take the values `true` or `false`.\r\n\r\n## Boolean Values\r\nA boolean type is declared with the `bool` keyword and can only take the values `true` or `false`:\r\n\r\n**Example**\r\n\r\n`bool` isCSharpFun = true;\r\n\r\n`bool` isFishTasty = false;\r\n\r\nConsole.`WriteLine`(isCSharpFun);   // Outputs True\r\n\r\nConsole.`WriteLine`(isFishTasty);   // Outputs False\r\n\r\nHowever, it is more common to return boolean values from boolean expressions, for conditional testing (see below).\r\n\r\n## Boolean Expression\r\nA Boolean expression returns a boolean value: `True` or `False`, by comparing values/variables.\r\n\r\nThis is useful to build logic, and find answers.\r\n\r\nFor example, you can use a comparison operator, such as the **greater than** (`>`) operator to find out if an expression (or a variable) is true:\r\n\r\n**Example**\r\n\r\n`int` x = 10;\r\n\r\n`int` y = 9;\r\n\r\nConsole.`WriteLine`(x > y); // returns True, because 10 is higher than 9\r\n\r\nOr even easier:\r\n\r\n**Example**\r\n\r\nConsole.`WriteLine`(10 > 9); // returns True, because 10 is higher than 9\r\n\r\nIn the examples below, we use the **equal to** (`==`) operator to evaluate an expression:\r\n\r\n**Example**\r\n\r\n`int` x = 10;\r\nConsole.`WriteLine`(x == 10); // returns True, because the value of x is equal to 10\r\n\r\n**Example**\r\n\r\nConsole.`WriteLine`(10 == 15); // returns False, because 10 is not equal to 15\r\n\r\n## Real Life Example\r\nLet\'s think of a \"real life example\" where we need to find out if a person is old enough to vote.\r\n\r\nIn the example below, we use the >= comparison operator to find out if the age (25) is greater than OR equal to the voting age limit, which is set to 18:\r\n\r\n**Example**\r\n\r\n`int` myAge = 25;\r\n\r\n`int` votingAge = 18;\r\n\r\nConsole.WriteLine(myAge >= votingAge);\r\n\r\nCool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an if...else statement, so we can perform different actions depending on the result:\r\n\r\n**Example**\r\n\r\nOutput \"Old enough to vote!\" if myAge is greater than or equal to 18. Otherwise output \"Not old enough to vote.\":\r\n\r\n`int` myAge = 25;\r\n\r\n`int` votingAge = 18;\r\n\r\n`if` (myAge >= votingAge) \r\n\r\n{\r\n\r\n  Console.`WriteLine`(\"Old enough to vote!\");\r\n\r\n}\r\n \r\nelse \r\n\r\n{\r\n\r\n  Console.`WriteLine`(\"Not old enough to vote.\");\r\n', NULL),
(18, 'C# If', 'C#', '## C# Conditions and If Statements\r\n---\r\n\r\nC# supports the usual logical conditions from mathematics:\r\n\r\n- Less than: `a < b`\r\n- Less than or equal to: `a <= b`\r\n- Greater than: `a > b`\r\n- Greater than or equal to: `a >= b`\r\n- Equal to `a == b`\r\n- Not Equal to: `a != b`\r\n\r\nYou can use these conditions to perform different actions for different decisions.\r\n\r\nC# has the following conditional statements:\r\n\r\n- Use `if` to specify a block of code to be executed, if a specified condition is true\r\n- Use `else` to specify a block of code to be executed, if the same condition is false\r\n- Use `else if` to specify a new condition to test, if the first condition is false\r\n- Use switch to specify many alternative blocks of code to be executed\r\n## The if Statement\r\nUse the if statement to specify a block of C# code to be executed if a condition is True.\r\n\r\n**Syntax**\r\n\r\n`if` (condition) \r\n{\r\n\r\n  // block of code to be executed if the condition is True\r\n\r\n}\r\n\r\n**Note that if is in lowercase letters. Uppercase letters (If or IF) will generate an error.**\r\n\r\nIn the example below, we test two values to find out if 20 is greater than 18. If the condition is True, print some text:\r\n\r\n**Example**\r\n\r\n`if` (20 > 18) \r\n\r\n{\r\n\r\n  Console.`WriteLine`(\"20 is greater than 18\");\r\n\r\n}', NULL),
(19, 'C# While Loop', 'C#', '# While Loop\r\n---\r\n## Loops\r\nLoops can execute a block of code as long as a specified condition is reached.\r\n\r\nLoops are handy because they save time, reduce errors, and they make code more readable.\r\n\r\n## C# While Loop\r\nThe `while` loop loops through a block of code as long as a specified condition is True:\r\n\r\n**Syntax**\r\n\r\n`while` (condition) \r\n\r\n{\r\n\r\n  // code block to be executed\r\n\r\n}\r\n\r\nIn the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:\r\n\r\n**Example**\r\n\r\n`int` i = 0;\r\n\r\n`while` (i < 5) \r\n\r\n{\r\n\r\n  Console.`WriteLine`(i);\r\n\r\n  i++;\r\n\r\n}\r\n\r\n**Note: Do not forget to increase the variable used in the condition, otherwise the loop will never end!**\r\n\r\n## The Do/While Loop\r\n\r\nThe `do/while` loop is a variant of the `while` loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.\r\n\r\n**Syntax**\r\n\r\n`do` \r\n\r\n{\r\n  // code block to be executed\r\n}\r\nwhile (condition);\r\nThe example below uses a do/while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:\r\n\r\nExample\r\nint i = 0;\r\ndo \r\n{\r\n\r\n  Console.`WriteLine`(i);\r\n\r\n  i++;\r\n\r\n}\r\n\r\n`while` (i < 5);\r\n\r\n**Do not forget to increase the variable used in the condition, otherwise the loop will never end!**', NULL),
(20, 'C# For Loop', 'C#', '# For Loop\r\n---\r\n\r\nWhen you know exactly how many times you want to loop through a block of code, use the `for` loop instead of a `while` loop:\r\n\r\n**Syntax**\r\n\r\n`for` (statement 1; statement 2; statement 3) \r\n\r\n{\r\n\r\n  // code block to be executed\r\n\r\n}\r\n\r\n**Statement 1** is executed (one time) before the execution of the code block.\r\n\r\n**Statement 2** defines the condition for executing the code block.\r\n\r\n**Statement 3** is executed (every time) after the code block has been executed.\r\n\r\nThe example below will print the numbers 0 to 4:\r\n\r\n**Example**\r\n\r\n`for` (int i = 0; i < 5; i++) \r\n\r\n{\r\n\r\n  Console.`WriteLine`(i);\r\n\r\n}\r\n\r\n**Example explained**\r\n\r\nStatement 1 sets a variable before the loop starts (`int i = 0`).\r\n\r\nStatement 2 defines the condition for the loop to run (`i` must be less than `5`). If the condition is `true`, the loop will start over again, if it is `false`, the loop will end.\r\n\r\nStatement 3 increases a value (`i++`) each time the code block in the loop has been executed.\r\n\r\n**Another Example**\r\n\r\nThis example will only print even values between 0 and 10:\r\n\r\n**Example**\r\n\r\n`for` (int i = 0; i <= 10; i = i + 2) \r\n\r\n{\r\n\r\n  Console.`WriteLine`(i);\r\n\r\n}\r\n\r\n## Nested Loops\r\nIt is also possible to place a loop inside another loop. This is called a **nested loop**.\r\n\r\nThe \"inner loop\" will be executed one time for each iteration of the \"outer loop\":\r\n\r\n**Example**\r\n\r\n// Outer loop\r\n\r\n`for` (int i = 1; i <= 2; ++i) \r\n\r\n{\r\n\r\n  Console.`WriteLine`(\"Outer: \" + i);  // Executes 2 times\r\n\r\n\r\n  // Inner loop\r\n\r\n  `for` (int j = 1; j <= 3; j++) \r\n\r\n  {\r\n\r\n    Console.`WriteLine`(\" Inner: \" + j); // Executes 6 times (2 * 3)\r\n\r\n     }\r\n}', NULL),
(22, 'Java Intro', 'Java', '# Java Intro\r\n---\r\n## What is Java?\r\nJava is a popular programming language, created in **1995**.\r\n\r\nIt is owned by **Oracle**, and more than **3 billion** devices run Java.\r\n\r\nIt is used for:\r\n\r\n- Mobile applications (specially Android apps)\r\n- Desktop applications\r\n- Web applications\r\n- Web servers and application servers\r\n- Games\r\n- Database connection\r\n- And much, much more!\r\n## Why Use Java?\r\n- Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)\r\n- It is one of the most popular programming language in the world\r\n- It has a large demand in the current job market\r\n- It is easy to learn and simple to use\r\n- It is open-source and free\r\n- It is secure, fast and powerful\r\n- It has a huge community support (tens of millions of developers)\r\nJava is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs\r\n- As Java is close to C++ and C#, it makes it easy for programmers to switch to Java or vice versa', NULL),
(23, 'Java Syntax', 'Java', '# Java Syntax\r\n---\r\n\r\nWe used the following code to print \"Hello World\" to the screen:\r\n\r\nMain.java\r\n\r\n`public class` Main {\r\n\r\n  `public static` void main(String[] args) {  \r\n    `System`.out.`println`(\"Hello World\");         \r\n                    }\r\n\r\n}\r\n\r\n**Example explained**\r\n\r\nEvery line of code that runs in Java must be inside a `class`. In our example, we named the class `Main`. A class should always start with an uppercase first letter.\r\n\r\n**Note**: Java is case-sensitive: \"MyClass\" and \"myclass\" has different meaning.\r\n\r\nThe name of the java file **must match** the class name. When saving the file, save it using the class name and add \".java\" to the end of the filename. To run the example above on your computer, make sure that Java is properly installed: Go to the Get Started Chapter for how to install Java. The output should be:\r\n\r\nHello World\r\n\r\n## The main Method\r\nThe `main()` method is required and you will see it in every Java program:\r\n\r\n`public static` void main(`String`[] args)\r\n\r\nAny code inside the `main()` method will be executed. Don\'t worry about the keywords before and after main. You will get to know them bit by bit while reading this tutorial.\r\n\r\nFor now, just remember that every Java program has a `class` name which must match the filename, and that every program must contain the `main()` method.\r\n\r\n## System.out.println()\r\nInside the `main()` method, we can use the `println()` method to print a line of text to the screen:\r\n\r\n`public static` void main(String[] args) {\r\n\r\n  `System`.out.`println`(\"Hello World\");\r\n\r\n}\r\n\r\n**Note**: The curly braces `{}` marks the beginning and the end of a block of code.\r\n\r\n`System` is a built-in Java class that contains useful members, such as `out`, which is short for \"output\". The `println()` method, short for \"print line\", is used to print a value to the screen (or a file).\r\n\r\nDon\'t worry too much about `System`, `out` and `println()`. Just know that you need them together to print stuff to the screen.\r\n\r\nYou should also note that each code statement must end with a semicolon (`;`).', NULL),
(24, 'Java Output', 'Java', '# Java Output\r\n---\r\n## Print Text\r\nYou learned from the previous chapter that you can use the `println()` method to output values or print text in Java:\r\n\r\n**Example**\r\n\r\n`System.`out.`println`(\"Hello World!\");\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\nYou can add as many `println()` methods as you want. Note that it will add a new line for each method:\r\n\r\n**Example**\r\n\r\n`System`.out.`println`(\"Hello World!\");\\\r\n`System`.out.`println`(\"I am learning Java.\");\\\r\n`System`.out.`println`(\"It is awesome!\");\r\n\r\n**Result:**\r\n\r\nHello World!\\\r\nI am learning Java\\\r\nIt is awesome!\r\n\r\n## Double Quotes\r\nWhen you are working with text, it must be wrapped inside double quotations marks `\"\"`.\r\n\r\nIf you forget the double quotes, an error occurs:\r\n\r\n**Example**\r\n\r\n`System`.out.`println`(\"This sentence will work!\");\\\r\n`System`.out.`println`(This sentence will produce an error);\r\n\r\n## The Print() Method\r\nThere is also a `print()` method, which is similar to `println()`.\r\n\r\nThe only difference is that it does not insert a new line at the end of the output:\r\n\r\n**Example**\r\n\r\n`System`.out.`print`(\"Hello World! \");\\\r\n`System`.out.`print`(\"I will print on the same line.\");\r\n\r\n**Result:**\r\n \r\nHello World! I will print on the same line.\r\n\r\nNote that we add an extra space (after \"Hello World!\" in the example above), for better readability. ', NULL),
(25, 'Java Comments', 'Java', '# Java Comment\r\n---\r\n\r\n## Java Comments\r\nComments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.\r\n\r\n## Single-line Comments\r\nSingle-line comments start with two forward slashes (`//`).\r\n\r\nAny text between `//` and the end of the line is ignored by C# (will not be executed).\r\n\r\nThis example uses a single-line comment before a line of code:\r\n\r\n**Example**\r\n\r\n// This is a comment\\\r\n`System`.out.`println`(\"Hello World\");\r\n\r\n\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\nThis example uses a single-line comment at the end of a line of code:\r\n\r\n**Example**\r\n\r\n`System`.out.`println`(\"Hello World\"); // This is a comment\r\n\r\n**Result:**\r\n\r\nHello World!\r\n\r\n## Java Multi-line Comments\r\nMulti-line comments start with `/*` and ends with `*/`.\r\n\r\nAny text between `/*` and `*/` will be ignored by Java.\r\n\r\nThis example uses a multi-line comment (a comment block) to explain the code:\r\n\r\n**Example**\r\n\r\n/* The code below will print the words Hello World\r\nto the screen, and it is amazing */\r\n\r\n`System`.out.`println`(\"Hello World\");\r\n\r\n**Result:**\r\n\r\nHello World! ', NULL),
(26, 'Java Variable', 'Java', '# Java Variable\r\n---\r\n## Java Variables\r\nVariables are containers for storing data values.\r\n\r\nIn Java, there are different **types** of variables (defined with different keywords), for example:\r\n\r\n- `int` - stores integers (whole numbers), without decimals, such as 123 or -123\r\n- `double` - stores floating point numbers, with decimals, such as 19.99 or -19.99\r\n- `char` - stores single characters, such as \'a\' or \'B\'. Char values are surrounded by single quotes\r\n- `string` - stores text, such as \"Hello World\". String values are surrounded by double quotes\r\n- `bool` - stores values with two states: true or false\r\n\r\n## Declaring (Creating) Variables\r\nTo create a variable, you must specify the type and assign it a value:\r\n\r\n**Syntax**\r\n\r\n*type variableName = value*;\r\n\r\nWhere *type* is a Java type (such as `int` or `string`), and *variableName* is the name of the variable (such as **x** or **name**). The equal sign is used to assign values to the variable.\r\n\r\nTo create a variable that should store text, look at the following example:\r\n\r\n**Example**\r\n\r\nCreate a variable called name of type string and assign it the value **\"John\"**:\r\n\r\n`string` name = \"John\";\r\n\r\n`System`.out.`println`(name);\r\n\r\n**Result:**\r\n\r\nJohn', NULL),
(27, 'Java Datatypes', 'Java', '## Java Data Type\r\n---\r\nAs explained in the variables chapter, a variable in Java must be a specified data type:\r\n\r\n**Example**\r\n\r\n`int` myNum = 5;               // Integer (whole number)\r\n\r\n`double` myDoubleNum = 5.99D;  // Floating point number\r\n\r\n`char` myLetter = \'D\';         // Character\r\n\r\n`bool` myBool = true;          // Boolean\r\n\r\n`string` myText = \"Hello\";     // String\r\n\r\n**Data types are divided into two groups:**\r\n\r\n- Primitive data types - includes `byte`, `short`, `int`, `long`, `float`, `double`, `boolean` and `char`\r\n- Non-primitive data types - such as `String`, `Arrays` and `Classes`\r\n\r\n| Data Type| Size | Description |\r\n| ----------- | ----------- | ----------- |\r\n| int | 4 bytes  | Stores whole numbers from -2,147,483,648 to 2,147,483,647|\r\n|short|	2 bytes	|Stores whole numbers from -32,768 to 32,767\r\n| long | 8 bytes  | 	Stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807|\r\n| float | 4 bytes  | Stores fractional numbers. Sufficient for storing 6 to 7 decimal digits|\r\n| double | 8 bytes  | Stores fractional numbers. Sufficient for storing 15 decimal digits |\r\n| bool | 1 bit | 	Stores true or false values  |\r\n| char | 2 bytes | 		Stores a single character/letter, surrounded by single quotes |\r\n| string | 2 bytes per character| Stores a sequence of characters, surrounded by double quotes |\r\n', NULL),
(28, 'Java Type Casting', 'Java', '## Type Casting\r\n---\r\n\r\nType casting is when you assign a value of one primitive data type to another type.\r\n\r\nIn Java, there are two types of casting:\r\n\r\n- **Widening Casting** (automatically) - converting a smaller type to a larger type size\r\n`byte` -> `short` -> `char` -> `int` -> `long` -> `float` -> `double`\r\n\r\n- **Narrowing Casting** (manually) - converting a larger type to a smaller size type\r\n`double` -> `float` -> `long` -> `int` -> `char` -> `short` -> `byte`\r\n## Widening Casting\r\nWidening casting is done automatically when passing a smaller size type to a larger size type:\r\n\r\n**Example**\r\n\r\n`public class` Main {\\\r\n  `public static` void main(String[] args) {\\\r\n    `int` myInt = 9;\\\r\n    `double` myDouble = myInt; // Automatic casting: int to double\r\n    `System`.out.`println`(myInt);      // Outputs 9\\\r\n    `System`.out.`println`(myDouble);   // Outputs 9.0\r\n  }\r\n}\r\n\r\n## Narrowing Casting\r\nNarrowing casting must be done manually by placing the type in parentheses in front of the value:\r\n\r\n**Example**\r\n\r\n`public class` Main {\\\r\n  `public static` void main(String[] args) {\\\r\n    `double` myDouble = 9.78d;\\\r\n    `int` myInt = (int) myDouble; // Manual casting: double to int\\\r\n   ` System`.out.`println`(myDouble);   // Outputs 9.78\r\n    `System`.out.`println`(myInt);      // Outputs 9\\\r\n  }\\\r\n}', NULL),
(29, 'Java Operators', 'Java', '## Java Operators\r\n---\r\n\r\nOperators are used to perform operations on variables and values.\r\n\r\nIn the example below, we use the `+` **operator** to add together two values:\r\n\r\n**Example**\r\n\r\n`int` x = 100 `+` 50;\r\n\r\nAlthough the `+` operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:\r\n\r\n**Example**\r\n\r\n`int` sum1 = 100 `+` 50;        // 150 (100 + 50)\\\r\n`int` sum2 = sum1 `+` 250;      // 400 (150 + 250)\\\r\n`int` sum3 = sum2 `+` sum2;     // 800 (400 + 400)\r\n\r\nJava divides the operators into the following groups:\r\n\r\n- Arithmetic operators\r\n- Assignment operators\r\n- Comparison operators\r\n- Logical operators\r\n- Bitwise operators\r\n\r\n### Arithmetic Operators\r\nArithmetic operators are used to perform common mathematical operations:\r\n\r\n| Operator | Name |Description | Example |\r\n| ----------- | ----------- | ----------- | ----------- |\r\n| + | Addition | Adds together two values | x + y |\r\n| - | Subtraction | 	Subtracts one value from another | x - y |\r\n| * | Multiplication | 	Multiplies two values | x * y |\r\n| / | Division | 	Divides one value by another | x / y |\r\n| % | Modulus | Returns the division remainder | x % y |\r\n| ++ | Increment | 	Increases the value of a variable by 1 | x++ |\r\n| -- | Decrement | 	decreases the value of a variable by 1 | x-- |', NULL),
(30, 'Java Strings', 'Java', '## Java Strings\r\n---\r\n`Strings` are used for storing text.\r\n\r\nA String variable contains a collection of characters surrounded by double quotes:\r\n\r\n**Example**\r\n\r\nCreate a variable of type `String` and assign it a value:\r\n\r\n`String` greeting = \"Hello\";\r\n\r\n## String Length\r\nA String in Java is actually an object, which contain methods that can perform certain operations on strings. For example, the length of a string can be found with the `length()` method:\r\n\r\n**Example**\r\n\r\n`String` txt = \"ABCDEFGHIJKLMNOPQRSTUVWXYZ\";\r\n`System`.out.`println`(\"The length of the txt string is: \" + txt.length());\r\n\r\n## More String Methods\r\nThere are many string methods available, for example `toUpperCase()` and `toLowerCase()`:\r\n\r\n**Example**\r\n\r\n`String` txt = \"Hello World\";\\\r\n`System`.out.`println`(txt.toUpperCase());   // Outputs \"HELLO WORLD\"\r\n`System`.out.`println`(txt.toLowerCase());   // Outputs \"hello world\"\r\n\r\n## Finding a Character in a String\r\nThe `indexOf()` method returns the **index** (the position) of the first occurrence of a specified text in a string (including whitespace):\r\n\r\n**Example**\r\n\r\n`String` txt = \"Please locate where \'locate\' occurs!\";\r\n`System`.out.`println`(txt.`indexOf`(\"locate\")); // Outputs 7\r\n\r\nJava counts positions from zero.\r\n0 is the first position in a string, 1 is the second, 2 is the third ...', NULL),
(32, 'Java Math', 'Java', '# Java Math\r\n---\r\nThe Java Math class has many methods that allows you to perform mathematical tasks on numbers.\r\n\r\n## Math.Max(x,y)\r\nThe `Math.Max(x,y)` method can be used to find the highest value of *x* and *y*:\r\n\r\n**Example**\r\n\r\nMath.`Max`(5, 10);\r\n\r\n## Math.Min(x,y)\r\nThe `Math.Min(x,y)` method can be used to find the lowest value of of *x* and *y*:\r\n\r\n**Example**\r\n\r\nMath.`Min`(5, 10);\r\n\r\n## Math.Sqrt(x)\r\nThe `Math.Sqrt(x)` method returns the square root of x:\r\n\r\n**Example**\r\n\r\nMath.`Sqrt`(64);\r\n\r\n## Math.Abs(x)\r\nThe `Math.Abs(x)` method returns the absolute (positive) value of x:\r\n\r\n**Example**\r\n\r\nMath.`Abs`(-4.7);\r\n\r\n## Random Numbers\r\n`Math.random()` returns a random number between 0.0 (inclusive), and 1.0 (exclusive):\r\n\r\nExample\\\r\n`Math.random()`;\r\n\r\nTo get more control over the random number, for example, if you only want a random number between 0 and 100, you can use the following formula:\r\n\r\n**Example**\r\n\r\n`int` randomNum = (`int`)(`Math.random`() * 101);  // 0 to 100', NULL),
(33, 'Java Booleans', 'Java', '## Java Booleans\r\n---\r\n\r\nVery often, in programming, you will need a data type that can only have one of two values, like:\r\n\r\n- YES / NO\r\n- ON / OFF\r\n- TRUE / FALSE\r\n\r\nFor this, Java has a `boolean` data type, which can store `true` or `false` values.\r\n\r\n## Boolean Values\r\nA boolean type is declared with the `boolean` keyword and can only take the values `true` or `false`:\r\n\r\n**Example**\r\n\r\n`boolean` isJavaFun = true;\\\r\n`boolean `isFishTasty = false;\\\r\n`System`.out.`println`(isJavaFun);     // Outputs true\r\n`System`.out.`println`(isFishTasty);   // Outputs false\r\n\r\nHowever, it is more common to return boolean values from boolean expressions, for conditional testing (see below).\r\n\r\n## Boolean Expression\r\nA Boolean expression returns a boolean value: `true` or `false`.\r\n\r\nThis is useful to build logic, and find answers.\r\n\r\nFor example, you can use a **comparison operator**, such as the **greater than** (`>`) operator, to find out if an expression (or a variable) is true or false:\r\n\r\n**Example**\r\n\r\n`int` x = 10;\\\r\n`int` y = 9;\\\r\n`System`.out.`println`(x > y); // returns true, because 10 is higher than 9\r\n\r\nOr even easier:\r\n\r\n**Example**\r\n\r\n`System`.out.`println`(10 > 9); // returns true, because 10 is higher than 9\r\n\r\nIn the examples below, we use the **equal to** (`==`) operator to evaluate an expression:\r\n\r\nExample\r\nint x = 10;\r\nSystem.out.println(x == 10); // returns true, because the value of x is equal to 10\r\n\r\n**Example**\r\n\r\n`System`.out.`println`(10 == 15); // returns false, because 10 is not equal to 15\r\n\r\n**Real Life Example**\r\n\r\nLet\'s think of a \"real life example\" where we need to find out if a person is old enough to vote.\r\n\r\nIn the example below, we use the `>=` comparison operator to find out if the age (**25**) is **greater than** OR **equal to** the voting age limit, which is set to **18**:\r\n\r\n**Example**\r\n\r\n`int` myAge = 25;\\\r\n`int` votingAge = 18;\\\r\n`System`.out.`println`(myAge >= votingAge);\r\n\r\nCool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an `if...else` statement, so we can perform different actions depending on the result:\r\n\r\n**Example**\r\n\r\nOutput \"Old enough to vote!\" if `myAge` is **greater than or equal to** `18`. Otherwise output \"Not old enough to vote.\":\r\n\r\n`int` myAge = 25;\r\n`int` votingAge = 18;\r\n\r\n`if` (myAge >= votingAge) {\\\r\n  `System`.out.`println`(\"Old enough to vote!\");\\\r\n} `else` {\\\r\n  `System`.out.`println`(\"Not old enough to vote.\");\\\r\n}', NULL),
(34, 'Java If...Else', 'Java', '## Java Conditions and If Statements\r\n---\r\n\r\nYou already know that Java supports the usual logical conditions from mathematics:\r\n\r\n- Less than: `a < b`\r\n- Less than or equal to: `a <= b`\r\n- Greater than: `a > b`\r\n- Greater than or equal to: `a >= b`\r\n- Equal to `a == b`\r\n- Not Equal to: `a != b`\r\n\r\nYou can use these conditions to perform different actions for different decisions.\r\n\r\nJava has the following conditional statements:\r\n\r\n- Use `if` to specify a block of code to be executed, if a specified condition is true\r\n- Use `else` to specify a block of code to be executed, if the same condition is false\r\n- Use `else if` to specify a new condition to test, if the first condition is false\r\n- Use `switch` to specify many alternative blocks of code to be executed\r\n## The if Statement\r\nUse the if statement to specify a block of Java code to be executed if a condition is true.\r\n\r\n**Syntax**\r\n\r\n`if` (condition) {\\\r\n  // block of code to be executed if the condition is true\\\r\n}\r\n\r\nNote that `if` is in lowercase letters. Uppercase letters (If or IF) will generate an error.\r\n\r\nIn the example below, we test two values to find out if 20 is greater than 18. If the condition is `true`, print some text:\r\n\r\n**Example**\r\n\r\n`if` (20 > 18) {\\\r\n  `System`.out.`println`(\"20 is greater than 18\");\\\r\n}\r\n\r\nWe can also test variables:\r\n\r\n**Example**\r\n\r\n`int` x = 20;\\\r\n`int` y = 18;\\\r\n`if` (x > y) {\\\r\n  `System`.out.`println`(\"x is greater than y\");\\\r\n}\r\n\r\n**Example explained**\r\n\r\nIn the example above we use two variables, **x** and **y**, to test whether x is greater than y (using the > operator). As x is 20, and y is 18, and we know that 20 is greater than 18, we print to the screen that \"x is greater than y\".', NULL),
(35, 'Java Switch', 'Java', '## Java Switch Statements\r\n---\r\nInstead of writing **many** `if..else` statements, you can use the **switch** statement.\r\n\r\nThe **switch** statement selects one of many code blocks to be executed:\r\n\r\n**Syntax**\r\n\r\n`switch`(expression) {\\\r\n  `case` x:\\\r\n    // code block\\\r\n    break;\\\r\n  `case` y:\\\r\n    // code block\\\r\n    break;\\\r\n  `default`:\\\r\n    // code block\\\r\n}\r\n\r\nThis is how it works:\r\n\r\n- The `switch` expression is evaluated once.\r\n- The value of the expression is compared with the values of each `case`.\r\n- If there is a match, the associated block of code is executed.\r\n- The `break` and `default` keywords are optional, and will be described later in this chapter\r\n\r\nThe example below uses the weekday number to calculate the weekday name:\r\n\r\n**Example**\r\n\r\n`int` day = 4;\\\r\n`switch` (day) {\\\r\n  `case` 1:\\\r\n    `System`.out.`println`(\"Monday\");\\\r\n    `break`;\\\r\n  `case 2`:\\\r\n    `System`.out.`println`(\"Tuesday\");\\\r\n    `break`;\\\r\n  `case` 3:\\\r\n    `System`.out.`println`(\"Wednesday\");\\\r\n    `break;`\\\r\n  `case` 4:\\\r\n    `System`.out.`println`(\"Thursday\");\\\r\n    `break`;\\\r\n  `case` 5:\\\r\n    `System`.out.`println`(\"Friday\");\\\r\n    `break`;\\\r\n  `case` 6:\\\r\n    `System`.out.`println`(\"Saturday\");\\\r\n    `break`;\\\r\n  `case` 7:\\\r\n    `System`.out.`println`(\"Sunday\");\\\r\n    `break`;\\\r\n}\\\r\n// Outputs \"Thursday\" (day 4)\r\n\r\n## The break Keyword\r\nWhen Java reaches a `break`x keyword, it breaks out of the switch block.\r\n\r\nThis will stop the execution of more code and case testing inside the block.\r\n\r\nWhen a match is found, and the job is done, it\'s time for a break. There is no need for more testing.', NULL),
(36, 'Java While Loop', 'Java', '# Loops\r\n---\r\n\r\nLoops can execute a block of code as long as a specified condition is reached.\r\n\r\nLoops are handy because they save time, reduce errors, and they make code more readable.\r\n\r\n## Java While Loop\r\nThe `while` loop loops through a block of code as long as a specified condition is `true`:\r\n\r\n**Syntax**\r\n\r\n`while` (condition) {\\\r\n  // code block to be executed\\\r\n}\r\n\r\nIn the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:\r\n\r\n**Example**\r\n\r\n`int` i = 0;\\\r\n`while` (i < 5) {\\\r\n  `System`.out.`println`(i);\\\r\n  i++;\\\r\n}\r\n\r\nNote: Do not forget to increase the variable used in the condition, otherwise the loop will never end!\r\n\r\n## The Do/While Loop\r\nThe `do/while` loop is a variant of the `while` loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.\r\n\r\n**Syntax**\r\n\r\n`do` {\\\r\n  // code block to be executed\\\r\n}\\\r\nwhile (condition);\\\r\n\r\nThe example below uses a `do/while` loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:\r\n\r\n**Example**\r\n\r\n`int` i = 0;\\\r\n`do` {\\\r\n  `System`.out.`println`(i);\r\n  i++;\r\n}\r\n`while` (i < 5);\r\n\r\nDo not forget to increase the variable used in the condition, otherwise the loop will never end!', NULL),
(37, 'Java For Loop', 'Java', '# For Loop\r\n---\r\nWhen you know exactly how many times you want to loop through a block of code, use the `for` loop instead of a `while` loop:\r\n\r\n**Syntax**\r\n\r\n`for` (statement 1; statement 2; statement 3) {\\\r\n  // code block to be executed\\\r\n}\r\n\r\n**Statement 1** is executed (one time) before the execution of the code block.\r\n\r\n**Statement 2** defines the condition for executing the code block.\r\n\r\n**Statement 3** is executed (every time) after the code block has been executed.\r\n\r\nThe example below will print the numbers 0 to 4:\r\n\r\n**Example**\r\n\r\n`for` (`int` i = 0; i < 5; i++) {\\\r\n  `System`.out.`println`(i);\\\r\n}\r\n\r\n**Example explained**\r\n\r\n**Statement 1** sets a variable before the loop starts (int i = 0).\r\n\r\n**Statement 2** defines the condition for the loop to run (i must be less than 5). If the condition is true, the loop will start over again, if it is false, the loop will end.\r\n\r\n**Statement 3** increases a value (i++) each time the code block in the loop has been executed.\r\n\r\n**Another Example**\r\n\r\nThis example will only print even values between 0 and 10:\r\n\r\n**Example**\r\n\r\n`for` (`int` i = 0; i <= 10; i = i + 2) {\\\r\n  `System`.out.`println`(i);\\\r\n}\r\n\r\n## Nested Loops\r\nIt is also possible to place a loop inside another loop. This is called a **nested loop**.\r\n\r\nThe \"inner loop\" will be executed one time for each iteration of the \"outer loop\":\r\n\r\n**Example**\r\n\r\n// Outer loop\\\r\n`for` (`int` i = 1; i <= 2; i++) {\\\r\n  `System`.out.`println`(\"Outer: \" + i); // Executes 2 times\r\n  \r\n  // Inner loop\\\r\n  `for` (`int` j = 1; j <= 3; j++) {\\\r\n    `System`.out.`println`(\" Inner: \" + j); // Executes 6 times (2 * 3)\\\r\n  }\\\r\n} ', NULL);
INSERT INTO `new_lessons` (`lessonId`, `name`, `category`, `content`, `thumbnailImage`) VALUES
(38, 'Java Break and Continue', 'Java', '## Java Break\r\n---\r\nYou have already seen the `break` statement used in an earlier chapter of this tutorial. It was used to \"jump out\" of a `switch` statement.\r\n\r\nThe `break` statement can also be used to jump out of a **loop**.\r\n\r\nThis example stops the loop when i is equal to 4:\r\n\r\n**Example**\r\n\r\n`for` (int i = 0; i < 10; i++) {\\\r\n  `if` (i == 4) {\\\r\n    `break`;\\\r\n  }\\\r\n  `System`.out.`println`(i);\\\r\n}\r\n \r\n\r\n## Java Continue\r\nThe `continue` statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.\r\n\r\nThis example skips the value of 4:\r\n\r\n**Example**\r\n\r\n`for` (int i = 0; i < 10; i++) {\\\r\n  `if` (i == 4) {\\\r\n    `continue`;\\\r\n  }\\\r\n  `System`.out.`println`(i);\\\r\n}', NULL),
(39, 'Java Arrays', 'Java', '# Arrays\r\n---\r\nArrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.\r\n\r\nTo declare an array, define the variable type with **square brackets**:\r\n\r\n`String`[] cars;\r\n\r\nWe have now declared a variable that holds an array of strings. To insert values to it, you can place the values in a comma-separated list, inside curly braces:\r\n\r\n\r\n`String`[] cars = {\"Volvo\", \"BMW\", \"Ford\", \"Mazda\"};\r\n\r\nTo create an array of integers, you could write:\r\n\r\n`int`[] myNum = {10, 20, 30, 40};\r\n\r\n## Access the Elements of an Array\r\nYou can access an array element by referring to the index number.\r\n\r\nThis statement accesses the value of the first element in cars:\r\n\r\n**Example**\r\n\r\n`String`[] cars = {\"Volvo\", \"BMW\", \"Ford\", \"Mazda\"};\r\n`System`.out.`println`(cars[0]);\\\r\n// Outputs Volvo\r\n\r\n**Note**: Array indexes start with 0: [0] is the first element. [1] is the second element, etc.\r\n\r\n## Change an Array Element\r\nTo change the value of a specific element, refer to the index number:\r\n\r\n**Example**\r\n\r\ncars[`0`] = \"Opel\";\r\n\r\n**Example**\r\n\r\n`String`[] cars = {\"Volvo\", \"BMW\", \"Ford\", \"Mazda\"};\\\r\ncars[`0`] = \"Opel\";\\\r\nSystem.out.println(cars[0]);\r\n// Now outputs Opel instead of Volvo\r\n\r\n## Array Length\r\nTo find out how many elements an array has, use the length property:\r\n\r\n**Example**\r\n\r\n`String`[] cars = {\"Volvo\", \"BMW\", \"Ford\", \"Mazda\"};\r\n`System`.out.`println`(cars.length);\\\r\n// Outputs 4', NULL),
(40, 'Java OOP', 'Java', '# OOP\r\n---\r\n## Java - What is OOP?\r\nOOP stands for **Object-Oriented Programming**.\r\n\r\nProcedural programming is about writing procedures or methods that perform operations on the data, while object-oriented programming is about creating objects that contain both data and methods.\r\n\r\nObject-oriented programming has several advantages over procedural programming:\r\n\r\n- OOP is faster and easier to execute\r\n- OOP provides a clear structure for the programs\r\n- OOP helps to keep the Java code DRY \"Don\'t Repeat Yourself\", and makes the code easier to maintain, modify and debug\r\n- OOP makes it possible to create full reusable applications with less code and shorter development time\r\n\r\n**Tip**: The \"Don\'t Repeat Yourself\" (DRY) principle is about reducing the repetition of code. You should extract out the codes that are common for the application, and place them at a single place and reuse them instead of repeating it.\r\n\r\n## Java - What are Classes and Objects?\r\nClasses and objects are the two main aspects of object-oriented programming.\r\n\r\nLook at the following illustration to see the difference between class and objects:\r\n\r\n| class | objects |\r\n| ----------- | ----------- |\r\n| Fruit | Apple |\r\n|  | Banana |\r\n|  | Mango |', NULL),
(41, 'Java Classes and Objects', 'Java', '## Java Classes/Objects\r\n---\r\nJava is an object-oriented programming language.\r\n\r\nEverything in Java is associated with classes and objects, along with its attributes and methods. For example: in real life, a car is an object. The car has **attributes**, such as weight and color, and **methods**, such as drive and brake.\r\n\r\nA Class is like an object constructor, or a \"blueprint\" for creating objects.\r\n\r\n## Create a Class\r\nTo create a class, use the keyword `class`:\r\n\r\n#### Main.java\r\nCreate a class named \"`Main`\" with a variable x:\r\n\r\n`public class` Main {\\\r\n  `int` x = 5;\\\r\n}\r\n\r\nRemember from the Java Syntax chapter that a class should always start with an uppercase first letter, and that the name of the java file should match the class name.\r\n\r\n## Create an Object\r\nIn Java, an object is created from a class. We have already created the class named `Main`, so now we can use this to create objects.\r\n\r\nTo create an object of `Main`, specify the class name, followed by the object name, and use the keyword `new`:\r\n\r\n**Example**\r\n\r\nCreate an object called \"`myObj`\" and print the value of x:\r\n\r\n`public class` Main {\\\r\n  `int` x = 5;\r\n\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    `System`.out.`println`(myObj.x);\\\r\n  }\\\r\n}\r\n\r\n## Multiple Objects\r\nYou can create multiple objects of one class:\r\n\r\n**Example**\r\n\r\nCreate two objects of `Main`:\r\n\r\n`public class` Main {\\\r\n  `int` x = 5;\r\n\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj1 = new Main();  // Object 1\\\r\n    `Main` myObj2 = new Main();  // Object 2\\\r\n    `System`.out.`println`(myObj1.x);\\\r\n    `System`.out.`println`(myObj2.x);\\\r\n  }\\\r\n}\r\n \r\n\r\n## Using Multiple Classes\r\nYou can also create an object of a class and access it in another class. This is often used for better organization of classes (one class has all the attributes and methods, while the other class holds the `main()` method (code to be executed)).\r\n\r\nRemember that the name of the java file should match the class name. In this example, we have created two files in the same directory/folder:\r\n\r\n- Main.java\r\n- Second.java\r\n### Main.java\r\n`public` class Main {\\\r\n  `int` x = 5;\\\r\n}\r\n### Second.java\r\n`class` Second {\\\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    `System`.out.`println`(myObj.x);\\\r\n  }\\\r\n}\r\n\r\nWhen both files have been compiled:\r\n\r\n*C:\\Users\\Your Name>javac Main.java*\\\r\n*C:\\Users\\Your Name>javac Second.java*\r\n\r\n**Run the Second.java file:**\r\n\r\n*C:\\Users\\Your Name>java Second*\r\n\r\n**And the output will be:**\r\n\r\n5', NULL),
(42, 'Java Class Attributes', 'Java', '## Class Attributes\r\n---\r\n\r\nIn the previous chapter, we used the term \"variable\" for `x` in the example (as shown below). It is actually an **attribute** of the class. Or you could say that class attributes are variables within a class:\r\n\r\n**Example**\r\n\r\nCreate a class called \"`Main`\" with two attributes: `x` and `y`:\r\n\r\n`public class` Main {\\\r\n ` int` x = 5;\\\r\n  `int` y = 3;\\\r\n}\r\n\r\nAnother term for class attributes is **fields**.\r\n\r\n## Accessing Attributes\r\nYou can access attributes by creating an object of the class, and by using the dot syntax (`.`):\r\n\r\nThe following example will create an object of the `Main` class, with the name `myObj`. We use the `x` attribute on the object to print its value:\r\n\r\n**Example**\r\n\r\nCreate an object called \"`myObj`\" and print the value of `x`:\r\n\r\n`public class` Main {\\\r\n  `int` x = 5;\r\n\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    `System`.out.`println`(myObj.x);\\\r\n  }\\\r\n}\r\n \r\n## Modify Attributes\r\nYou can also modify attribute values:\r\n\r\n**Example**\r\n\r\nSet the value of `x` to 40:\r\n\r\n`public class` Main {\r\n  `int` x;\r\n\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    myObj.x = 40;\\\r\n    `System`.out.`println`(myObj.x);\\\r\n  }\\\r\n}\r\n \r\n\r\nOr override existing values:\r\n\r\n**Example**\r\n\r\nChange the value of `x` to 25:\r\n\r\n`public class` Main {\\\r\n  `int` x = 10;\r\n\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    myObj.x = 25; // x is now 25\\\r\n    `System`.out.`println`(myObj.x);\\\r\n  }\\\r\n}\r\n \r\n\r\nIf you don\'t want the ability to override existing values, declare the attribute as `final`:\r\n\r\n**Example**\r\n\r\n`public class` Main {\\\r\n  `final int` x = 10;\r\n\r\n ` public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    myObj.x = 25; // will generate an error: cannot assign a value to a final variable\\\r\n    `System`.out.`println`(myObj.x);\\\r\n  }\\\r\n}\r\n \r\n\r\nThe `final` keyword is useful when you want a variable to always store the same value, like PI (3.14159...).\r\n\r\nThe final keyword is called a \"modifier\". You will learn more about these in the Java Modifiers Chapter.\r\n\r\n## Multiple Objects\r\nIf you create multiple objects of one class, you can change the attribute values in one object, without affecting the attribute values in the other:\r\n\r\n**Example**\r\n\r\nChange the value of `x` to 25 in `myObj2`, and leave `x` in `myObj1` unchanged:\r\n\r\n`public class` Main {\\\r\n  `int` x = 5;\r\n\r\n ` public static` void main(String[] args) {\\\r\n    `Main` myObj1 = new `Main`();  // Object 1\\\r\n    `Main` myObj2 = new `Main`();  // Object 2\\\r\n    myObj2.x = 25;\\\r\n    `System`.out.`println`(myObj1.x);  // Outputs 5\\\r\n    `System`.out.`println`(myObj2.x);  // Outputs 25\\\r\n  }\r\n}\r\n\r\n## Multiple Attributes\r\nYou can specify as many attributes as you want:\r\n\r\n**Example**\r\n\r\n`public class` Main {\\\r\n  `String` fname = \"John\";\\\r\n  `String` lname = \"Doe\";\\\r\n  `int` age = 24;\r\n\r\n  `public static` void main(String[] args) {\\\r\n    `Main` myObj = new `Main`();\\\r\n    `System`.out.`println`(\"Name: \" + myObj.fname + \" \" + `myObj`.lname);\\\r\n   ` System`.out.`println`(\"Age: \" + myObj.age);\\\r\n  }\\\r\n}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` bigint(20) NOT NULL,
  `language` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timelimit` bigint(20) NOT NULL DEFAULT 0,
  `requiredLessons` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `language`, `title`, `timelimit`, `requiredLessons`) VALUES
(39, 'C#', 'C# Intro', 0, '1'),
(40, 'C#', 'C# Syntax', 0, '2'),
(41, 'C#', 'C# Output', 0, '3'),
(42, 'C#', 'C# Comments', 0, '4'),
(43, 'C#', 'C# Variables', 0, '5'),
(44, 'C#', 'C# Data Types', 0, '6'),
(45, 'C#', 'C# Type Casting', 0, '7'),
(46, 'C#', 'C# User Input', 0, '8'),
(47, 'C#', 'C# Arithmetic', 0, '9'),
(48, 'C#', 'C# Assignment Operators', 0, '10'),
(49, 'C#', 'C# Comparison Operator', 0, '11'),
(50, 'C#', 'C# Logical Operator', 0, '12'),
(51, 'C#', 'C# Math', 0, '13'),
(52, 'C#', 'C# Strings', 0, '14'),
(53, 'C#', 'C# String Concatenation', 0, '15'),
(54, 'C#', 'C# Interpolation', 0, '16'),
(55, 'C#', 'C# Booleans', 0, '17'),
(56, 'C#', 'C# If', 0, '18'),
(57, 'C#', 'C# While Loop', 0, '19'),
(58, 'C#', 'C# For Loop', 0, '20'),
(79, 'Java', 'Java Intro', 0, '22'),
(80, 'Java', 'Java Syntax', 0, '23'),
(81, 'Java', 'Java Output', 0, '24'),
(82, 'Java', 'Java Comments', 0, '25'),
(83, 'Java', 'Java Variable', 0, '26'),
(84, 'Java', 'Java Datatypes', 0, '27'),
(85, 'Java', 'Java Type Casting', 0, '28'),
(86, 'Java', 'Java Operators', 0, '29'),
(87, 'Java', 'Java Strings', 0, '30'),
(88, 'Java', 'Java Math', 0, '32'),
(89, 'Java', 'Java Booleans', 0, '33'),
(90, 'Java', 'Java If...Else', 0, '34'),
(92, 'Java', 'Java Switch', 0, '35'),
(93, 'Java', 'Java While Loop', 0, '36'),
(94, 'Java', 'Java For Loop', 0, '37'),
(95, 'Java', 'Java Break and Continue', 0, '38'),
(96, 'Java', 'Java Arrays', 0, '39'),
(97, 'Java', 'Java OOP', 0, '40'),
(98, 'Java', 'Java Classes and Objects', 0, '41'),
(99, 'Java', 'Java Class Attributes', 0, '42');

-- --------------------------------------------------------

--
-- Table structure for table `quizattempts`
--

CREATE TABLE `quizattempts` (
  `attempt_id` int(11) NOT NULL,
  `quiz_id` bigint(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizattempts`
--

INSERT INTO `quizattempts` (`attempt_id`, `quiz_id`, `userid`, `score`, `items`, `date`) VALUES
(14, 39, 65, 5, 5, 'January 25 2023'),
(15, 39, 65, 5, 5, 'January 25 2023'),
(16, 58, 66, 3, 5, 'January 27 2023'),
(17, 58, 66, 0, 5, 'January 27 2023'),
(18, 58, 66, 5, 5, 'January 27 2023'),
(19, 39, 66, 5, 5, 'January 27 2023'),
(20, 40, 66, 5, 5, 'January 27 2023'),
(21, 41, 66, 5, 5, 'January 27 2023'),
(22, 42, 66, 5, 5, 'January 27 2023'),
(23, 43, 66, 5, 5, 'January 27 2023'),
(24, 45, 66, 5, 5, 'January 27 2023'),
(25, 46, 66, 5, 5, 'January 27 2023'),
(26, 47, 66, 5, 5, 'January 27 2023'),
(27, 48, 66, 5, 5, 'January 27 2023'),
(28, 49, 66, 5, 5, 'January 27 2023'),
(29, 50, 66, 5, 5, 'January 27 2023'),
(30, 51, 66, 5, 5, 'January 27 2023'),
(31, 52, 66, 5, 5, 'January 27 2023'),
(32, 53, 66, 5, 5, 'January 27 2023'),
(33, 54, 66, 5, 5, 'January 27 2023'),
(34, 55, 66, 5, 5, 'January 27 2023'),
(35, 56, 66, 5, 5, 'January 27 2023'),
(36, 57, 66, 5, 5, 'January 27 2023'),
(37, 44, 66, 5, 5, 'January 27 2023'),
(38, 90, 65, 5, 5, 'January 29 2023'),
(39, 90, 65, 5, 5, 'January 29 2023');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestions`
--

CREATE TABLE `quizquestions` (
  `question_id` bigint(20) NOT NULL,
  `quiz_id` bigint(20) NOT NULL,
  `qorder` int(11) NOT NULL,
  `questiontext` varchar(10000) NOT NULL,
  `optA` varchar(255) NOT NULL,
  `optB` varchar(255) NOT NULL,
  `optC` varchar(255) NOT NULL,
  `optD` varchar(255) NOT NULL,
  `optCorrect` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizquestions`
--

INSERT INTO `quizquestions` (`question_id`, `quiz_id`, `qorder`, `questiontext`, `optA`, `optB`, `optC`, `optD`, `optCorrect`) VALUES
(31, 39, 1, 'How do you pronounce C#?', 'C-Sharp', 'C Num', 'C Hashtag', 'both A and B', 'C-Sharp'),
(32, 39, 2, 'Who created C#?', 'Oracle', 'Microsoft', 'Yukihiro Matsumoto', 'Both A and B', 'Microsoft'),
(33, 39, 3, 'When was the First version is released?', '2000', '1999', '2002', '2003', '2002'),
(34, 39, 4, 'C# Version 11 was released in?', 'Nov 2010', 'Nov 2012', 'Nov 2022', 'Nov 2021', 'Nov 2022'),
(35, 39, 5, 'C# can be used for?', 'Mobile App', 'Desktop App', 'Web App', 'All are correct', 'All are correct'),
(36, 40, 1, 'What keyword should we use to use the classes in System namespace?', 'using', 'include', 'add', 'both A and B', 'using'),
(37, 40, 2, 'does C# ignore blank space?', 'Yes', 'No', 'depends', 'Both A and C', 'Yes'),
(38, 40, 3, 'What marks the beginning and ending of your code?', 'curly braces', 'brackets', 'periods', 'comma', 'curly braces'),
(39, 40, 4, 'Writeline() is what?', 'namespace', 'method', 'class', 'object', 'method'),
(40, 40, 5, 'Console is a?', 'namespace', 'method', 'class', 'object', 'class'),
(41, 41, 1, 'How to print in C#?', 'println()', 'WriteLine()', 'print()', 'cout', 'WriteLine()'),
(42, 41, 2, 'What is use to print without new line?', 'println()', 'WriteLine()', 'print()', 'Write()', 'Write()'),
(43, 41, 3, 'How to print Hello World in c#?', 'Console.WriteLine(\"Hello World\");', 'cout<<\"Hello World\"', 'print(\"Hello World\");', 'println(\"Hello World\");', 'Console.WriteLine(\"Hello World\");'),
(44, 41, 4, 'Can you use multiple WriteLine() Method?', 'Yes', 'No', 'Depends', 'Both A and B', 'Yes'),
(45, 41, 5, 'When printing a string in C# the string should be inside of?', 'Double qoutes', 'Single qoutes', 'Parenthesis', 'curly braces', 'Double qoutes'),
(46, 42, 1, 'Comments can be used for', 'explaining the code', 'readability', 'testing alternative code', 'all of the above', 'all of the above'),
(47, 42, 2, 'Any text between // will be?', 'comments', 'ignored by the compiler', 'will not execute', 'all of the above', 'all of the above'),
(48, 42, 3, 'Comments can be placed in?', 'above the code', 'below the code', 'after the code', 'all of the above', 'all of the above'),
(49, 42, 4, 'How to do a comment in c#?', '//', '\\\\', '<---->', '~~', '//'),
(50, 42, 5, 'Any text between /**/ will be?', 'comments', 'ignored by the compiler', 'will not execute', 'all of the above', 'all of the above'),
(51, 43, 1, 'What is the syntax in declaring variables?', 'type = variableName', 'variableName = value', 'type variableName = value', ' type = value', 'type variableName = value'),
(52, 43, 2, 'It is a variable that stores two states: true or false.', 'char', 'bool', 'int', 'float', 'bool'),
(53, 43, 3, 'It is a variable that stores single characters.', 'char', 'string', 'bool', 'int', 'char'),
(54, 43, 4, 'String variables are surrounded by what symbols?', '+string+', '\"string\"', '\'string\'', '`string`', '\"string\"'),
(55, 43, 5, 'Char variables are surrounded by what symbols?', '+char+', '\"char\"', '\'char\'', '`char`', '\'char\''),
(56, 44, 1, 'It is a data type that stores whole numbers from -2,147,483,648 to 2,147,483,647', 'int', 'float', 'long', 'double', 'int'),
(57, 44, 2, 'It is a data type that stores fractional numbers. Sufficient for storing 15 decimal digits.', 'int', 'float', 'long', 'double', 'double'),
(58, 44, 3, 'It is a data type that stores a sequence of characters, surrounded by double quotes.', 'char', 'bool', 'double', 'string', 'string'),
(59, 44, 4, 'It is a data type that stores fractional numbers. Sufficient for storing 6 to 7 decimal digits.', 'int', 'float', 'long', 'double', 'float'),
(60, 44, 5, 'It is a data type that stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.', 'int', 'float', 'long', 'double', 'long'),
(61, 45, 1, 'It is a type of casting that converts smaller types to larger types.', 'Explicit Casting', 'Implicit Casting', 'Manual Casting', 'Automatic Casting', 'Implicit Casting'),
(62, 45, 2, 'Which is the correct order for implicit casting?', 'char -> int -> long -> float -> double', 'int -> char-> long -> double-> float', 'char -> int -> double-> float -> long', 'char -> long-> int-> float -> double', 'char -> int -> long -> float -> double'),
(63, 45, 3, 'Which is the correct order for explicitcasting?', 'char -> int -> long -> float -> double', 'double -> float -> long -> int -> char', 'char -> int -> double-> float -> long', 'char -> long-> int-> float -> double', 'double -> float -> long -> int -> char'),
(64, 45, 4, 'Explicit casting is done ___', 'Automatically', ' by the system', ' by us', ' by placing the type in parentheses in front of the value', 'by placing the type in parentheses in front of the value'),
(65, 45, 5, 'Which is the correct way to cast larger types to smaller types?', 'myInt = (int) myDouble', 'myInt (int) = myDouble', ' (int) myInt = myDouble', '', 'myInt = (int) myDouble'),
(66, 46, 1, 'Which is used to read user input?', 'cin>>', 'Console.InputLine()', 'Console.ReadLine()', 'ReadLine()', 'Console.ReadLine()'),
(67, 46, 2, 'What data type does Console.ReadLine() return?', 'char', 'bool', 'Any datatype', 'string', 'string'),
(68, 46, 3, 'What is Console.ReadLine()?', 'void', 'method', 'class', 'object', 'method'),
(69, 46, 4, 'What is the correct syntax to read user input?', 'string = Console.ReadLine();', 'type variableName = Console.ReadLine()', '', 'ReadlLine(variableName)', 'type variableName = Console.ReadLine()'),
(70, 46, 5, 'What will be the output of the code: string name = Console.ReadLine();', 'The users input', 'Error', 'String', ' ', ' '),
(71, 47, 1, 'It is used to perform operations.', 'Arithmetic', 'Operators', 'Signs', 'Symbols', 'Operators'),
(72, 47, 2, 'It is the operator used to increment values', '+', '%%', '++', '*', '++'),
(73, 47, 3, 'It is the operator used to decrement values', '-', '--', '##', 'vv', '--'),
(74, 47, 4, 'It is the operator used to find the remainder.', '%%', '%', '/', '//', '%'),
(75, 47, 5, 'It is the operator that is used to divide.', '%%', '%', '/', '//', '/'),
(76, 48, 1, 'It is used to assign values to variables.', 'Arithmetic Operators', 'Assignment Operators', 'Comparison Operators', 'Logical Operators', 'Assignment Operators'),
(77, 48, 2, 'It is an assignment operator that adds a value to a variables existing value.', '=', '+=', '-=', '*=', '+='),
(78, 48, 3, 'It is an assignment operator that subtracts a value from the variables existing value.', '=', '+=', '-=', '*=', '-='),
(79, 48, 4, 'It is an assignment operator that multiplies a value from the variables existing value.', '=', '+=', '-=', '*=', '*='),
(80, 48, 5, 'It is an assignment operator that assigns a value to a variable.', '=', '+=', '-=', '*=', '='),
(81, 49, 1, 'It is used to compare values.', 'Arithmetic Operators', 'Assignment Operators', 'Comparison Operators', 'Logical Operators', 'Comparison Operators'),
(82, 49, 2, 'What data type does a comparison operator return?', 'string', 'bool', 'char', 'int', 'bool'),
(83, 49, 3, 'It is a comparison operator that checks if a value is equal to another value.', '==', '>=', '<=', '!=', '=='),
(84, 49, 4, 'It is a comparison operator that checks if a value is not equal to another value.', '==', '>=', '<=', '!=', '!='),
(85, 49, 5, 'It is a comparison operator that checks if a value is greater than or equal to another value.', '>', '>=', '<=', '<', '>='),
(86, 50, 1, 'It is used to test for true or false in determining the logic of between values.', 'Arithmetic Operators', 'Assignment Operators', 'Comparison Operators', 'Logical Operators', 'Logical Operators'),
(87, 50, 2, 'It is the operator that returns true if both statements are true.', '&&', '||', '!', '??', '&&'),
(88, 50, 3, 'It is the operator that returns true if one of the statements are true.', '&&', '||', '!', '??', '||'),
(89, 50, 4, 'It is the operator that returns false if the result is true.', '&&', '||', '!', '??', '!'),
(90, 50, 5, '?? Operator is called __.', 'Logical and', 'Logical or', 'Logical if', 'None of the above', 'None of the above'),
(91, 51, 1, 'What is math?', 'The science that deals with numbers.', 'A class', 'A subject', 'An object', 'A class'),
(92, 51, 2, 'What method from the C# Math class can be used to find the lowest value of x and y?', 'Math. Sqrt(x)', 'Math. Subtract(x,y)', 'Math. Min(x,y)', 'Math. Max(x,y)', 'Math. Min(x,y)'),
(93, 51, 3, 'What method from the C# Math class can be used to find the highest value of x and y?', 'Math. Sqrt(x)', 'Math. Subtract(x,y)', 'Math. Min(x,y)', 'Math. Max(x,y)', 'Math. Max(x,y)'),
(94, 51, 4, 'What method from the C# Math class returns the square root of x?', 'Math. Sqrt(x)', 'Math. Subtract(x,y)', 'Math. Min(x,y)', 'Math. Max(x,y)', 'Math. Sqrt(x)'),
(95, 51, 5, 'What method from the C# Math class returns the absolute value of x?', 'Math. Sqrt(x)', 'Math. Abs(x,y)', 'Math. Min(x,y)', 'Math. Max(x,y)', 'Math. Abs(x,y)'),
(96, 52, 1, 'It is a collection of characters surrounded by double quotes.', 'char', 'chars', 'string', 'bool', 'string'),
(97, 52, 2, 'What is string?', 'variable', 'object ', 'class', 'method', 'object'),
(98, 52, 3, 'How can you find the length of a string?', 'string.Length', 'string,Characters', 'string.Count', 'string.Chars', 'string.Length'),
(99, 52, 4, 'It is used to convert a string to uppercase.', 'CapsLock()', 'Caps()', 'UpperCase()', 'ToUpper()', 'ToUpper()'),
(100, 52, 5, 'It is used to convert a string to lowercase.', 'LowerCase()', 'Low()', 'ToLow()', 'ToLower()', 'ToLower()'),
(101, 53, 1, 'It is the action of linking strings together.', 'Adding', 'Concatenate', 'Expound', 'Elaborate', 'Concatenate'),
(102, 53, 2, 'What operator is used to concatenate strings?', '++', '+', 'quotation marks', '--', '+'),
(103, 53, 3, 'What is the output of the following: Console.WriteLine(10 + 10);', '1010', '20', '10 10', 'Error', '1010'),
(104, 53, 4, 'What is the output of the following: Console.WriteLine(Hello + Hello);', '1010', '20', '10 10', 'Error', 'Error'),
(105, 53, 5, 'What is the output of the following: Console.WriteLine(Hello + 10);', 'Error', 'Hello10', 'Hello 10', 'Hello', 'Error'),
(106, 54, 1, 'It is the substitution of values of variables into placeholders.', 'Concatenation', 'Output', 'String Interpolation', 'String Exterpolation', 'String Interpolation'),
(107, 54, 2, 'What symbol is used in interpolation?', '#', '&', '@', '$', '$'),
(108, 54, 3, 'Which is an example of interpolation?', '{firstName} {secondName}', 'firstName + secondName', 'firstName++', 'None of the above', ''),
(109, 54, 4, 'Which version was interpolation introduced in?', 'version 3', 'version 5', 'version 7', 'version 6', 'version 6'),
(110, 54, 5, 'Interpolation automatically inserts __.', 'symbols', 'spaces', 'letters', 'numbers', 'spaces'),
(111, 55, 1, 'The C# keyword used to declare a boolean data type is ____?', 'int', 'true/false', 'boolean', 'bool', 'bool'),
(112, 55, 2, 'The C# keyword used to declare a boolean data type is ____?', 'True or False', 'Integer or Float', 'Single or Double', 'Yes or No', 'True or False'),
(113, 55, 3, 'What is the result of the expression 10 > 9?', 'FALSE', '9', '10', 'TRUE', 'TRUE'),
(114, 55, 4, 'What will be returned when the expression Console.WriteLine(10 == 15) is evaluated?', 'FALSE', '15', 'TRUE', '10', 'FALSE'),
(115, 55, 5, 'What comparison operator is used in the example above?', '<', '>=', '==', '>', '>='),
(116, 56, 1, 'What type of conditions can be used in C#?', 'True and False', 'If, Else-If, Switch, For Loop', '+, -, *, /', '>=, >, <=, <, ==, !=', '>=, >, <=, <, ==, !='),
(117, 56, 2, 'What keyword is used to specify a block of code to be executed, if a specified condition is true?', 'If', 'Switch', 'Else', 'Else If', 'If'),
(118, 56, 3, 'Which of the following is the correct syntax for an if statement?', 'IF { // block of code to be executed if the condition is True }', 'IF (condition) { // block of code to be executed if the condition is True }', 'if (condition) { // block of code to be executed if the condition is True }', 'If (condition) { // block of code to be executed if the condition is True }', 'if (condition) { // block of code to be executed if the condition is True }'),
(119, 56, 4, 'What keyword is used to specify a block of code to be executed, if the same condition is false?', 'If', 'Switch', 'Else', 'Else If', 'Else'),
(120, 56, 5, 'What keyword is used to specify a new condition to test, if the first condition is false?', 'If', 'Switch', 'Else', 'Else If', 'Else If'),
(121, 57, 1, 'What is the while loop used for in C#?', 'Executing only specific code at certain times', 'Reducing errors and making code more readable', 'Looping through a block of code as long as a specified condition is true.', 'Saving time and improving program organization', 'Looping through a block of code as long as a specified condition is true.'),
(122, 57, 2, 'What code is necessary to ensure the loop will not be an infinite loop?', 'Add a break statement within the loop', 'Increase the variable used in the condition', 'Decrease the variable used in the condition', 'Add an if statement within the loop', 'Increase the variable used in the condition'),
(123, 57, 3, 'When using a do-while loop, what happens before the condition is checked?', 'The loop is terminated.', 'The loop is repeated.', 'The code block is executed.', 'The condition is evaluated.', 'The code block is executed.'),
(124, 57, 4, 'Which looping statement is used for executing the code block once before checking for a condition?', 'do-while', 'if-statement', 'for-loop', 'while-loop', 'do-while'),
(125, 57, 5, 'It is a variant of the while loop.', 'while doing', 'doing while', 'do', 'do while', 'do while'),
(126, 58, 1, 'What statement is necessary to end a loop?', 'If the condition is true', 'Increasing a value each time the code block has been executed', 'If the condition is false', 'Writing values to the Console', 'If the condition is false'),
(127, 58, 2, 'What is the name given to a loop placed inside another loop?', 'Inner loop', 'Outer loop', 'Compound loop', 'Nested loop', 'Nested loop'),
(128, 58, 3, 'When writing a nested loop, which type of loop is executed one time for each iteration of the outer loop?', 'Inner loop', 'Outer loop', 'Compound loop', 'Nested loop', 'Inner loop'),
(129, 58, 4, 'It is a variant of the while loop.', 'while doing', 'doing while', 'do', 'do while', 'do while'),
(130, 58, 5, 'Which statement defines the condition of the for loop?', 'Statement 1', 'Statement 2', 'Statement 3', 'Statement 4', 'Statement 2'),
(131, 79, 1, 'When is Java created?', '1995', '2002', '2000', '1996', '1995'),
(132, 79, 2, 'Who owned Java?', 'Oracle', 'Microsoft', 'Jet Brains', 'None of the Above', 'Oracle'),
(133, 79, 3, 'Java is used for?', 'Games', 'Mobile Apps', 'Web Apps', 'All of the above', 'All of the above'),
(134, 79, 4, 'Approximately how much devices are running on Java?', '3 Billion', '2 Billion', '3 Million', '1 Billlion', '3 Billion'),
(135, 79, 5, 'Why use Java?', 'Its Open source', 'It is Free', 'Its easy to learn', 'All of the above', 'All of the above'),
(136, 80, 1, 'Every line of code that runs in Java must be inside a what?', 'class', 'method', 'namespace', 'None of the above', 'class'),
(137, 80, 2, 'Is Java case sensitive when it comes to naming variables, classes, methods and keywords?', 'Yes', 'No', 'Only for class and methods', 'Only for variable and keywords', 'Yes'),
(138, 80, 3, 'How do you create a class in Java?', 'class myClass {};', 'class {myClass};', 'create class myClass;', 'function myClass {}', 'class myClass {};'),
(139, 80, 4, 'How do you create a method in Java?', 'function myMethod() {}', 'method myMethod() {}', 'void myMethod() {}', 'create myMethod() {}', 'method myMethod() {}'),
(140, 80, 5, 'How do you import a package in Java?', 'import packageName;', 'include packageName;', 'using packageName;', 'require packageName;', 'using packageName;'),
(141, 81, 1, 'What is used to print statements in Java?', 'println()', 'WriteLine()', 'Write()', 'cout', 'println()'),
(142, 81, 2, 'What method you should use to print without new line?', 'println()', 'WriteLine()', 'Write()', 'print()', 'print()'),
(143, 81, 3, 'When printing a string the text should be inside of what?', 'double quotation', 'single quotation', 'brackets', 'None of the above', 'double quotation'),
(144, 81, 4, 'Every line of code should end with what?', 'period', 'semi colon', 'comma', 'None of the above', 'semi colon'),
(145, 81, 5, 'When printing a number it should be inside of what?', 'double quotation', 'single quotation', 'brackets', 'parenthesis of the method', 'parenthesis of the method'),
(146, 82, 1, 'Comments can be used for?', 'explaining the code', 'readability', 'testing alternative code', 'all of the above', 'all of the above'),
(147, 82, 2, 'Any text between // will be?', 'comments', 'ignored by the compiler', 'will not execute', 'all of the above', 'all of the above'),
(148, 82, 3, 'Comments can be placed in what?', 'above', 'under', 'beside', 'all of the above', 'all of the above'),
(149, 82, 4, 'How to do a single line comment in Java?', '//', '<-->', '\\\\', '/**/', '//'),
(150, 82, 5, 'How to do a multi line comment in Java?', '//', '<-->', '\\\\', '/**/', '/**/'),
(151, 83, 1, 'What type of variable is \"int x = 5\"?', 'String', 'Integer', 'Boolean', 'Double', 'Integer'),
(152, 83, 2, 'What type of variable is \"double d = 3.14\"?', 'String', 'Integer', 'Boolean', 'Double', 'Double'),
(153, 83, 3, 'What type of variable is \"boolean b = true\"?', 'String', 'Integer', 'Boolean', 'Double', 'Boolean'),
(154, 83, 4, 'What type of variable is \"char c = \'a\'\"?', 'String', 'Integer', 'Character', 'Double', 'Character'),
(155, 83, 5, 'What type of variable is \"String s = \"Hello World\"\"?', 'String', 'Integer', 'Boolean', 'Double', 'String'),
(156, 84, 1, 'What data type is used to represent whole numbers in Java?', 'float', 'double', 'boolean', 'int', 'int'),
(157, 84, 2, 'What data type is used to represent decimal numbers in Java?', 'float', 'double', 'boolean', 'int', 'double'),
(158, 84, 3, 'What data type is used to represent characters in Java?', 'float', 'double', 'char', 'int', 'char'),
(159, 84, 4, 'What data type is used to represent strings in Java?', 'string', 'double', 'char', 'int', 'string'),
(160, 84, 5, 'What data type is used to represent true or false values in Java?', 'float', 'double', 'boolean', 'int', 'boolean'),
(161, 85, 1, 'What is the result of the following operation: (int) 3.14?', '3', '3.14', '0', 'error', '3'),
(162, 85, 2, 'What is the result of the following operation: (double) 7/3?', '2.3333', '2', '2.0', 'error', '2.0'),
(163, 85, 3, 'What is the result of the following operation: (int) \'a\'?', '\'a\'', '97', 'error', '0', '97'),
(164, 85, 4, 'What is the result of the following operation: (char) 98?', '\'b\'', '97', 'error', '0', '\'b\''),
(165, 85, 5, 'What is the result of the following operation: (int) \"Hello\"?', '\'b\'', '97', 'error', '0', 'error'),
(166, 86, 1, 'What is the symbol for the assignment operator in Java?', '=', '==', '+=', '+', '='),
(167, 86, 2, 'Which operator is used to perform a mathematical division in Java?', '/', '%', '*', '+', '/'),
(168, 86, 3, 'What is the symbol for the logical AND operator in Java?', '&&', '||', '!', '&', '&&'),
(169, 86, 4, 'Which operator is used to check if two values are equal in Java?', '==', '=', '!=', '>', '=='),
(170, 86, 5, 'What is the symbol for the increment operator in Java?', '++', '--', '+=', '*=', '++'),
(171, 87, 1, 'What is the function in Java used to concatenate two strings?', 'add()', 'join()', 'concatenate()', 'append()', 'append()'),
(172, 87, 2, 'How can you find the length of a string in Java?', 'length()', 'len()', 'size()', 'count()', 'length()'),
(173, 87, 3, 'Which method in Java can be used to check if a string contains a specific substring?', 'contains()', 'search()', 'find()', 'locate()', 'contains()'),
(174, 87, 4, 'How can you convert a string to all uppercase in Java?', 'toUpperCase()', 'upper()', 'upperCase()', 'toUpper()', 'toUpperCase()'),
(175, 87, 5, 'What is the function in Java used to split a string into an array of substrings based on a specified delimiter?', 'split()', 'divide()', 'c) segment()', 'breakUp()', 'split()'),
(176, 88, 1, 'What is the function in Java used to calculate the square root of a number?', 'sqrt()', 'squareRoot()', 'root()', 'mathSqrt()', 'sqrt()'),
(177, 88, 2, 'How can you generate a random number in Java within a specified range?', 'random()', 'randInt()', 'nextInt()', 'mathRandom()', 'nextInt()'),
(178, 88, 3, 'What is the function in Java used to round a decimal number to the nearest whole number?', 'round()', 'nearest()', 'mathRound()', 'roundUp()', 'round()'),
(179, 88, 4, 'How can you calculate the value of pi in Java?', 'pi()', 'mathPi()', 'Math.PI', '3.14', 'Math.PI'),
(180, 88, 5, 'What is the function in Java used to raise a number to a specific power?', 'power()', 'pow()', 'exponent()', 'mathPow()', 'pow()'),
(181, 89, 1, 'What is the function in Java used to check if a boolean value is true?', 'isTrue()', 'trueValue()', 'check()', 'booleanValue()', 'booleanValue()'),
(182, 89, 2, 'How can you negate a boolean value in Java?', 'negate()', 'not()', 'inverse()', 'flip()', 'not()'),
(183, 89, 3, 'What is the symbol in Java for the logical OR operator?', '||', '&&', '!', '|', '||'),
(184, 89, 4, 'How can you check if two boolean values are the same in Java?', 'equals()', '==', 'compare()', 'isEqual()', '=='),
(185, 89, 5, 'What is the function in Java used to check if a boolean variable is set to false?', 'isFalse()', 'falseValue()', 'check()', 'booleanValue()', 'isFalse()'),
(186, 90, 1, 'Use the __ statement to specify a block of Java code to be executed if a condition is true', 'if', 'else', 'else if', 'switch', 'if'),
(187, 90, 2, 'What is the syntax in Java for an if statement?', 'if (condition) { statement }', 'if condition statement', 'if: condition { statement }', 'if condition: statement', 'if (condition) { statement }'),
(188, 90, 3, 'How can you add an else clause to an if statement in Java?', 'else statement', 'if (condition) { statement } else { statement }', 'if (condition) { statement }', ' else { statement }', 'if (condition) { statement } else { statement }'),
(189, 90, 4, 'What is the syntax in Java for an if-else if statement?', 'if (condition) { statement } else if (condition) { statement }', 'if (condition) statement else if (condition) statement', 'if: condition { statement } else if: condition { statement }', 'if (condition) { statement } elseif (condition) { statement }', 'if (condition) { statement } else if (condition) { statement }'),
(190, 90, 5, 'How can you add a default case to an if-else if statement in Java?', 'else statement', 'else if (true) { statement }', 'else { statement }', 'default statement', 'else { statement }'),
(192, 92, 1, 'What is the syntax in Java for a switch statement?', 'switch (variable) { case value: statement; break; }', 'switch variable { case value: statement }', 'switch (variable): { case value: statement; break; }', 'switch: variable { case value: statement }', 'switch (variable) { case value: statement; break; }'),
(193, 92, 2, 'How can you add a default case to a switch statement in Java?', 'default: statement;', 'case \"default\": statement;', 'case default: statement;', 'default case: statement;', 'default: statement;'),
(194, 92, 3, 'How do you indicate the end of a case statement in Java?', 'endcase', 'break;', 'exit;', 'end;', 'break;'),
(195, 92, 4, 'Can you use a variable of type String in a switch statement in Java?', 'No', ' only integers and characters can be used', 'Yes', ' but only if the variable is declared final or immutable', 'Yes, any variable can be used'),
(196, 92, 5, 'Is it necessary to include a break statement in every case in a switch statement in Java?', 'No', ' only the last case needs a break statement', 'Yes', ' every case needs a break statement', 'Yes, every case needs a break statement'),
(197, 93, 1, 'What is the syntax in Java for a while loop?', 'while (condition) { statement }', 'while condition statement', 'while: condition { statement }', 'while condition: statement', 'while (condition) { statement }'),
(198, 93, 2, 'How can you exit a while loop in Java?', 'using the exit keyword', 'using the break statement', 'using the return statement', 'using the continue statement', 'using the break statement'),
(199, 93, 3, 'How can you skip an iteration of a while loop in Java?', 'using the skip keyword', 'using the break statement', 'using the return statement', 'using the continue statement', 'using the continue statement'),
(200, 93, 4, 'What is the purpose of the while loop in Java?', 'To repeatedly execute a block of code when a certain condition is met', 'To iterate over the elements of a collection', 'To increment a variable by a specific value', 'To check if a variable is null', 'To repeatedly execute a block of code when a certain condition is met'),
(201, 93, 5, 'What is the difference between while and do-while loop in Java?', 'do-while checks before executing', 'do-while execute first then check', 'while is used for infinite loop', 'do-while is used for finite loop', 'do-while execute first then check'),
(202, 94, 1, 'What is the syntax in Java for a for loop?', 'for (initialization; condition; increment) { statement }', 'for (condition; initialization; increment) { statement }', 'for (increment; condition; initialization) { statement }', 'for (initialization; increment; condition) { statement }', 'for (initialization; condition; increment) { statement }'),
(203, 94, 2, 'What is the difference between a for loop and a while loop?', 'for specific iteration and while for unknown', 'for integers and while for any data type', 'for arrays and while for any iteration', 'for infinite and while for finite', 'for specific iteration and while for unknown'),
(204, 94, 3, 'How can you exit a for loop in Java?', 'using the exit keyword', 'using the break statement', 'using the return statement', 'using the continue statement', 'using the break statement'),
(205, 94, 4, 'How can you skip an iteration of a for loop in Java?', 'using the skip keyword', 'using the break statement', 'using the return statement', 'using the continue statement', 'using the continue statement'),
(206, 94, 5, 'What is the purpose of the for loop in Java?', 'To execute a block of code for a specific number of times', 'To iterate over the elements of a collection', 'To increment a variable by a specific value', 'None of the above', 'To execute a block of code for a specific number of times'),
(207, 95, 1, 'What is the purpose of the \"break\" statement in a Java loop?', 'To continue to the next iteration of the loop', 'To exit the current loop', 'To skip the current iteration of the loop', 'To increment the loop variable', 'To exit the current loop'),
(208, 95, 2, 'What is the purpose of the \"continue\" statement in a Java loop?', 'To continue to the next iteration of the loop', 'To exit the current loop', 'To skip the current iteration of the loop', 'To increment the loop variable', 'To skip the current iteration of the loop'),
(209, 95, 3, 'When is the \"break\" statement typically used in a Java loop?', 'When you want to continue to the next iteration of the loop', 'When you want to exit the current loop', 'When you want to skip the current iteration of the loop', 'When you want to increment the loop variable', 'When you want to exit the current loop'),
(210, 95, 4, 'When is the \"continue\" statement typically used in a Java loop?', 'When you want to continue to the next iteration of the loop', 'When you want to exit the current loop', 'When you want to skip the current iteration of the loop', 'When you want to increment the loop variable', 'When you want to skip the current iteration of the loop'),
(211, 95, 5, 'How does the \"break\" statement differ from the \"continue\" statement in a Java loop?', '\"break\" to exit the loop \"continue\" to continue to the next iteration', '\"break\" to skip the current iteration \"continue\" to exit the loop', '\"break\" to increment the loop variable \"continue\" to exit the loop', '\"break\" to exit the loop \"continue\" to increment the loop variable', '\"break\" to exit the loop \"continue\" to continue to the next iteration'),
(212, 96, 1, 'What is the syntax for declaring an array in Java?', 'int[] myArray;', 'myArray[] int;', 'array[] int myArray;', 'int myArray[];', 'int myArray[];'),
(213, 96, 2, 'How do you access an element of an array in Java?', 'myArray.get(index)', 'myArray[index]', 'myArray(index)', 'myArray.index', 'myArray[index]'),
(214, 96, 3, 'How do you find the length of an array in Java?', 'myArray.length', 'myArray.size', 'myArray.count', 'myArray.length()', 'myArray.length'),
(215, 96, 4, 'What is the difference between an Array and an ArrayList in Java?', 'Array is fixed size and ArrayList is dynamic', 'Array is dynamic & ArrayList is fixed size', 'Array is used for primitives & ArrayList is used for objects', 'ArrayList is used for primitives & Array is used for objects', 'Array is fixed size and ArrayList is dynamic'),
(216, 96, 5, 'How can you initialize an array with specific values in Java?', 'myArray = {value1', ' value2', ' value3}', 'myArray = new int[] {value1', 'myArray = new int[] {value1, value2, value3}'),
(217, 97, 1, 'What is the main advantage of Object-Oriented Programming (OOP)?', 'Code reusability', 'Code readability', 'Code scalability', 'code performance', 'Code reusability'),
(218, 97, 2, 'What is the main difference between class and object in OOP?', 'A class is a blueprint & an object is an instance of a class', 'A class is a method & an object is a variable', 'A class is a variable & an object is a method', 'A class is an instance & an object is a blueprint', 'A class is a blueprint & an object is an instance of a class'),
(219, 97, 3, 'What is the purpose of inheritance in OOP?', 'To share methods and fields between classes', 'To restrict access to methods and fields', 'To create new classes with the same characteristics as existing classes', 'To encapsulate data and behavior', 'To create new classes with the same characteristics as existing classes'),
(220, 97, 4, 'What is encapsulation in OOP?', 'Code reusability', 'Hiding implementation details', 'Code scalability', 'code performance', 'Hiding implementation details'),
(221, 97, 5, 'What is polymorphism in OOP ?', 'Code reusability', 'same method for different classes', 'Code scalability', 'code performance', 'same method for different classes'),
(222, 98, 1, 'What is the main purpose of a class in Java?', 'Creating objects', 'Storing data', 'Defining behavior', 'All of the above', 'All of the above'),
(223, 98, 2, 'What is the main difference between a class and an object in Java?', 'A class is a blueprint an object is an instance of a class', 'A class is a method an object is a variable', 'A class is a variable an object is a method', 'A class is an instance an object is a blueprint', 'A class is a blueprint an object is an instance of a class'),
(224, 98, 3, 'How do you create an object of a class in Java?', 'By calling a method', 'By declaring a variable', 'By using the \"new\" keyword', 'By importing a package', 'By using the \"new\" keyword'),
(225, 98, 4, 'What is the purpose of a constructor in a Java class?', 'To initialize objects when they are created', 'To define class methods', 'To declare class variables', 'To import packages', 'To initialize objects when they are created'),
(226, 98, 5, 'What is polymorphism in Java?', 'The ability of a class to have multiple forms', 'The ability of an object to take on multiple forms', 'The ability of a class to have multiple constructors', 'The ability of an object to take on multiple class types', 'The ability of an object to take on multiple class types'),
(227, 99, 1, 'What is an attribute in a Java class?', 'A method', 'A variable', 'A constructor', 'A package', 'A variable'),
(228, 99, 2, 'What is the other term for class attributes?', 'fields', 'data', 'byte', 'None of the above', 'fields'),
(229, 99, 3, 'What is the main purpose of an attribute in a Java class?', 'To store data', 'To define behavior', 'To initialize objects', 'To import packages', 'To store data'),
(230, 99, 4, 'How can you access an attribute in a Java class?', 'By calling a method', 'By declaring a variable', 'By using the \"new\" keyword', 'By using the dot notation (object.attribute)', 'By using the dot notation (object.attribute)'),
(231, 99, 5, 'What is the default value of an attribute in a Java class if it is not explicitly initialized?', 'null', '0', '\" \"', 'Depends on the data type', 'Depends on the data type');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `is_suspended` varchar(255) DEFAULT NULL,
  `pfpUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `gender`, `email`, `password`, `admin_id`, `is_suspended`, `pfpUrl`) VALUES
(5, 'Xander', 'Deloso', 'Female', 'xagdeloso@gmail.com', 'der0212', 1, 'false', NULL),
(7, 'Francis', 'Evangelista', 'Male', 'fevangelista.k11941993@umak.edu.ph', 'francis03', 1, 'false', NULL),
(8, 'Francis', 'Evangelista', 'Male', 'fevangelista.k11941993@umak.edu.ph', 'francis03', 1, NULL, NULL),
(9, 'Denzill Karl', 'Soliven', 'Male', 'dsoliven.k11935433@umak.edu.ph', 'denzill02', 1, NULL, NULL),
(10, 'Raphael', 'Macatangay', 'Male', 'rmacatangay.k11936058@umak.edu.ph', 'raphael02', 1, NULL, NULL),
(11, 'Lauren', 'Simpson', 'Female', 'monte90@gmail.com', 'pw5', 1, NULL, NULL),
(12, 'Selena', 'Nelson', 'Male', 'dana.oconnell@hotmail.com', 'pw6', 1, NULL, NULL),
(13, 'Ashley', 'Brown', 'Female', 'hobart_reichert@hotmail.com', 'pw7', 1, NULL, NULL),
(14, 'James', 'Allen', 'Male', 'andy68@yahoo.com', 'pw8', 1, NULL, NULL),
(15, 'Andrea', 'Torres', 'Female', 'josiane11@yahoo.com', 'pw9', 1, NULL, NULL),
(16, 'Stewart', 'Wards', 'Male', 'irving_mcdermott@yahoo.com', 'pw10', 1, NULL, NULL),
(17, 'Clinton', 'Philipps', 'Male', 'sabina_parker36@gmail.com', 'pw11', 1, NULL, NULL),
(18, 'Elysia', 'Gutierrez', 'Female', 'makayla.fritsch@gmail.com', 'pw12', 1, NULL, NULL),
(19, 'Kylie', 'Domingo', 'Female', 'bernardo.pagac44@yahoo.com', 'pw13', 1, NULL, NULL),
(20, 'Sarah', 'Wu', 'Female', 'fabiola48@hotmail.com', 'pw14', 1, NULL, NULL),
(21, 'Annie', 'Lim', 'Female', 'keegan20@gmail.com', 'pw15', 1, NULL, NULL),
(22, 'Drax', 'Thompson', 'Male', 'josue16@yahoo.com', 'pw16', 1, NULL, NULL),
(23, 'Aniah', 'Sodela', 'Female', 'lavern.bayer@gmail.com', 'pw17', 1, NULL, NULL),
(24, 'Chris', 'Mendoza', 'Male', 'donato.bergstrom69@hotmail.com', 'pw18', 1, NULL, NULL),
(25, 'Christian', 'Tactay', 'Male', 'angelina.torp@gmail.com', 'pw19', 1, NULL, NULL),
(26, 'Alex', 'Taytay', 'Male', 'rod.stark@gmail.com', 'pw20', 1, NULL, NULL),
(27, 'Ace', 'Green', 'Male', 'domenica.ebert@hotmail.com', 'pw21', 1, NULL, NULL),
(28, 'Kian', 'Addams', 'Male', 'carissa82@yahoo.com', 'pw22', 1, NULL, NULL),
(29, 'Hughs', 'Gomez', 'Male', 'armand_hettinger6@hotmail.com', 'pw23', 1, NULL, NULL),
(30, 'Vivian', 'Collins', 'Female', 'gabriella_doyle@hotmail.com', 'pw24', 1, NULL, NULL),
(31, 'Opal', 'Black', 'Female', 'alayna98@hotmail.com', 'pw25', 1, NULL, NULL),
(32, 'Elaine', 'Sanchez', 'Female', 'krista_gleichner81@yahoo.com', 'pw26', 1, NULL, NULL),
(33, 'Rex', 'Edwards', 'Male', 'theodora83@yahoo.com', 'pw27', 1, NULL, NULL),
(34, 'Rudolph', 'Cox', 'Male', 'jamar16@yahoo.com', 'pw28', 1, NULL, NULL),
(35, 'Rowena', 'Grande', 'Female', 'delaney.ruecker95@hotmail.com', 'pw29', 1, NULL, NULL),
(36, 'Lily', 'King', 'Female', 'clemens.considine34@yahoo.com', 'pw30', 1, NULL, NULL),
(37, 'Lilith', 'Banks', 'Female', 'wallace_williamson39@hotmail.com', 'pw31', 1, NULL, NULL),
(38, 'Athena', 'Guilbert', 'Female', 'aiyana.durgan45@hotmail.com', 'pw32', 1, NULL, NULL),
(39, 'Axel', 'Jobs', 'Male', 'regan.fay12@gmail.com', 'pw33', 1, NULL, NULL),
(40, 'Ezra', 'Moore', 'Male', 'hank87@gmail.com', 'pw34', 1, NULL, NULL),
(41, 'Hunter', 'Anderson', 'Male', 'aurore.emmerich56@yahoo.com', 'pw35', 1, NULL, NULL),
(42, 'Abdel', 'Vale', 'Male', 'alana_blick@yahoo.com', 'pw36', 1, NULL, NULL),
(43, 'Ethan', 'Hughes', 'Male', 'ibrahim_blick82@gmail.com', 'pw37', 1, NULL, NULL),
(44, 'Tristan', 'Flores', 'Male', 'arlie54@hotmail.com', 'pw38', 1, NULL, NULL),
(45, 'Ron', 'Meneses', 'Male', 'melvin.dubuque@gmail.com', 'pw39', 1, NULL, NULL),
(46, 'Loren', 'Tehrani', 'Female', 'daisy.wisozk7@yahoo.com', 'pw40', 1, NULL, NULL),
(47, 'Diana', 'Viar', 'Female', 'bert_rau15@yahoo.com', 'pw41', 1, NULL, NULL),
(48, 'Bruno', 'Albao', 'Male', 'willy_kilback38@gmail.com', 'pw42', 1, NULL, NULL),
(49, 'Juleen', 'Esguerra', 'Female', 'electa49@yahoo.com', 'pw43', 1, NULL, NULL),
(50, 'Cahrlos', 'Celiacay', 'Male', 'genoveva.wehner52@yahoo.com', 'pw44', 1, NULL, NULL),
(51, 'Sevi', 'Kwan', 'Male', 'cayla.kuphal20@yahoo.com', 'pw45', 1, NULL, NULL),
(52, 'Van', 'Cabrera', 'Male', 'julian_veum@gmail.com', 'pw46', 1, NULL, NULL),
(53, 'Vaniela', 'Andeo', 'Female', 'ollie.zboncak99@gmail.com', 'pw47', 1, NULL, NULL),
(54, 'Valine', 'Salinas', 'Female', 'elizabeth_yost@yahoo.com', 'pw48', 1, NULL, NULL),
(55, 'Queenie', 'Radomes', 'Female', 'justyn.dietrich@yahoo.com', 'pw49', 1, NULL, NULL),
(56, 'Warren', 'Carino', 'Male', 'nadia_block18@yahoo.com', 'pw50', 1, NULL, NULL),
(58, 'TEST', 'TEST', 'Male', 'TEST', 'TEST', NULL, NULL, NULL),
(59, 'TEST2', 'TEST2', 'Male', 'TEST2@TEST2.COM', 'TEST2', NULL, NULL, NULL),
(60, 'TEST3', 'TEST3', 'Male', 'TEST3@TEST3.COM', 'TEST3', NULL, NULL, 'https://i.pinimg.com/originals/33/47/01/3347014306c9c840fbc3ee857491f18d.jpg'),
(61, 'TEST6', 'TEST6', 'Male', 'TEST6@TEST6.COM', 'TEST6', NULL, NULL, 'https://static.wikia.nocookie.net/yosuganosora/images/e/ec/Haru_anime.jpg/revision/latest/smart/width/250/height/250?cb=20210624114140'),
(62, 'test9', 'test9', 'Male', 'test9@test9.cxom', 'test9', NULL, NULL, 'https://i.pinimg.com/originals/4a/1c/82/4a1c82189cee0e217f3cf78fa1abfadc.jpg'),
(63, 'test324', 'test324', 'Male', 'test324@test324.com', 'test324', NULL, 'false', 'https://i.pinimg.com/originals/4a/1c/82/4a1c82189cee0e217f3cf78fa1abfadc.jpg'),
(64, 'DENZILL KARL', 'SOLIVEN', 'Male', 'denzillsoliven2@gmail.com', 'hello', NULL, NULL, ''),
(65, 'denzill karl', 'Soliven', 'Male ', 'denz@gmail.com', 'hello ', NULL, 'false', 'http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQdVrDbX5tCAQ6lX9axvmA12KMoRadrK1F7Pgls0RBotbvCJ9C-rd-_TNNKD70f4oQL'),
(66, 'Xander Aleck', 'Deloso', 'Female', 'xdeloso.k11936891@umak.edu.ph', 'der0212', NULL, NULL, 'https://thicc.mywaifulist.moe/waifus/361/28c2013982ffcd8387d350206ad98bdedd47b94e3f6c5ae5869e0e243f545b30_thumb.jpg'),
(69, 'asd', 'asd', 'Female', 'asd', 'asd', NULL, NULL, 'https://scontent.fmnl25-3.fna.fbcdn.net/v/t39.30808-6/298880804_6024549107572596_1729263046643740632_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=56F5U9bJ7PsAX-_PVLe&_nc_ht=scontent.fmnl25-3.fna&oh=00_AfC0I3qI--HjMlu0t13u9gnyZ_HgUx4rv6rLQFkPmVG8AA&oe=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`language`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`certificate_id`),
  ADD KEY `fk_userid` (`user_id`);

--
-- Indexes for table `lessonmetadata`
--
ALTER TABLE `lessonmetadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_lessons`
--
ALTER TABLE `new_lessons`
  ADD PRIMARY KEY (`lessonId`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizattempts`
--
ALTER TABLE `quizattempts`
  ADD PRIMARY KEY (`attempt_id`),
  ADD KEY `fk_quizid` (`quiz_id`),
  ADD KEY `fk_user` (`userid`);

--
-- Indexes for table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_adminid` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessonmetadata`
--
ALTER TABLE `lessonmetadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `new_lessons`
--
ALTER TABLE `new_lessons`
  MODIFY `lessonId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `quizattempts`
--
ALTER TABLE `quizattempts`
  MODIFY `attempt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `quizquestions`
--
ALTER TABLE `quizquestions`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizattempts`
--
ALTER TABLE `quizattempts`
  ADD CONSTRAINT `fk_quizid` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`userid`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD CONSTRAINT `quizquestions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_adminid` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
