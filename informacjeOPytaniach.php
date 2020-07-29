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
                TRESC PYTANIA
            </td>
            <td>
                ILOSC POPRAWNYCH ODPOWIEDZI
            </td>
            <td>
                ILOSC BLEDNYCH ODPOWIEDZI
            </td>
        </tr>
        <?php
            require_once "connect.php";
            $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
            $polaczenie->set_charset("utf8");
            $wyniki = $polaczenie->query("SELECT * FROM pytania");
            $row = $wyniki->fetch_array();
            $i = 1;
            while($row){
                    echo "<tr>";
                    echo "<td>";
                    echo   $i;
                    echo "</td>";
                    echo "<td>";
                    echo   $row["tekst"];
                    echo "</td>";
                    echo "<td>";
                    echo   $row["poprawne"];
                    echo "</td>";
                    echo "<td>";
                    echo   $row["bledne"];
                    echo "</td>";
                    echo "</tr>";
                    $i = $i +1;
                $row = $wyniki->fetch_array();
            }
        ?>
    </table>
    <a href="index.php">Wroc na strone glowna</a>
</body>
</html>