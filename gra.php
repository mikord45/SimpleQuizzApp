<?php

	session_start();
	
	if (!isset($_SESSION['zalogowany']))
	{
		header('Location: index.php');
		exit();
	}
	if ($_SESSION['user'] == "administratorw")
	{
		header('Location: panel.php');
		exit();
	}
	
?>
<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>QUIZ</title>
</head>

<body>
	
<?php
	echo "<p>Witaj ".$_SESSION['user'].'! [ <a href="logout.php">Wyloguj się!</a> ]</p>';
?>
<a href="quiz.php">Odpowiedz na losowe 10 pytan</a>
<br/>
<a href="top10graczy.php">Zobacz ranking 10 najlepszych graczy</a>
</body>
</html>