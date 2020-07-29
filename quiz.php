<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>QUIZ</title>
</head>
<body>
    <form method="POST" action="wynik.php">
    
    <?php
        //session_start();
        // if ((isset($_SESSION['zalogowany'])) && ($_SESSION['zalogowany']==true))
        // {
        //     header('Location: index.php');
        //     exit();
        // }

        require_once "connect.php";
        $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        $polaczenie->set_charset("utf8");
        $all = $polaczenie->query("SELECT * FROM PYTANIA");
        $row = $all->fetch_array();
        $tab2 = array();
        while($row){
            $tab2[] = $row;
            $row = $all->fetch_array();
        }
        $tab = array();
        for($i=0;$i<=19;$i++)
        {
        $tab[] = $i;
        }
        //print_r($tab);
        //print_r($tab2[9]["tekst"]);
        $lotto = array_rand ($tab, 10);
        for($j=0; $j<10; $j++){
            echo "<p>";
            echo $tab2[$lotto[$j]]["tekst"];
            echo "<br/><input type='radio' name=".$tab2[$lotto[$j]]["ID"]." value=1 checked>".$tab2[$lotto[$j]]["a"]."<br/>";
            echo "<input type='radio' name=".$tab2[$lotto[$j]]["ID"]." value=2>".$tab2[$lotto[$j]]["b"]."<br/>";
            echo "<input type='radio' name=".$tab2[$lotto[$j]]["ID"]." value=3>".$tab2[$lotto[$j]]["c"]."<br/>";
            echo "<input type='radio' name=".$tab2[$lotto[$j]]["ID"]." value=4>".$tab2[$lotto[$j]]["d"];
            echo "</p>";
        }
    ?>
    <input type="submit" value="Submit">
    </form>
</body>
</html>