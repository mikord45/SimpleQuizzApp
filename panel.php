<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>QUIZ</title>
    <style>
        table{
            border-collapse:collapse;
        }
        td{
            border: 1px solid black;
            text-align: center;
            padding: 5px;
        }
    </style>
</head>
<body>
    <p>
        <?php
        echo "<p> WITAJ ADMINISTRATORZE! </p>";
        echo "<p><a href='logout.php'>Wyloguj się!</a></p>";
        echo "<p> PANEL PHP </p>";
        require_once "connect.php";
        $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        $users = $polaczenie->query("SELECT * FROM uzytkownicy WHERE user!='administratorw'");
        //print_r($users);
        $row = $users->fetch_array();
        $i=0;
        echo "<table>";
        echo "<tr><td>NR</td><td>NAZWA UZYTKOWNIKA</td><td>USUN</td></tr>";
        while($row){
            echo "<tr>";
            echo "<td>";
            echo $i;
            echo "</td>";
            echo "<td>";
            echo $row["user"];
            echo "</td>";
            echo "<td>";
            echo "<a href='panel.php?id_uzytkownika=".$row["id"]."'>USUN GO</a>";
            echo "</td>";
            echo "<tr>";
            $row = $users->fetch_array();
            $i = $i +1;
        }
        echo "</table>";
        if(isset($_GET["id_uzytkownika"])){
            //$polaczenie2 = @new mysqli($host, $db_user, $db_password, $db_name);
            $polaczenie->query("DELETE FROM uzytkownicy WHERE id=".$_GET['id_uzytkownika']."");
        }
        ?>
    </p>
    <a href="top10graczy.php">Zobacz ranking 10 najlepszych graczy</a>
    <br/>
    <a href="top10najtrudniejszychPytan.php">Zobacz ranking 10 najtrudniejszych pytań</a>
    <br/>
    <a href="informacjeOPytaniach.php">Zobacz statystyki pytań</a>
    <br/>
    <a href="informacjeOUzytkownikach.php">Zobacz statystyki użytkowników</a>

</body>
</html>