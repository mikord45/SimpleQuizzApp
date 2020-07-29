<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>QUIZ</title>
    <style>
        table{
            border-collapse: collapse;
        }
        td{
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <td>
                ID
            </td>
            <td>
                NAZWA UZYTKOWNIKA
            </td>
            <td>
                ILOSC POPRAWNYCH ODPOWIEDZI
            </td>
        </tr>
        <?php
            require_once "connect.php";
            $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
            $wyniki = $polaczenie->query("SELECT * FROM uzytkownicy ORDER BY poprawne DESC LIMIT 10");
            //print_r($wyniki);
            $row = $wyniki->fetch_array();
            $i = 1;
            while($row){
                if($row["id"]!=23){
                    echo "<tr>";
                    echo "<td>";
                    echo   $i;
                    echo "</td>";
                    echo "<td>";
                    echo   $row["user"];
                    echo "</td>";
                    echo "<td>";
                    echo   $row["poprawne"];
                    echo "</td>";
                    echo "</tr>";
                    $i = $i +1;
                }
                $row = $wyniki->fetch_array();
            }
        ?>
    </table>
    <a href="index.php">Wroc na strone glowna</a>
</body>
</html>