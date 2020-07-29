<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
    session_start();
        require_once "connect.php";
        $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        $pop = 0;
        $bl = 0;
        for($i=0; $i<1000; $i++){
            if(isset($_POST[$i])){
                $wynik = $polaczenie->query("SELECT * FROM pytania WHERE ID=$i");
                $row = $wynik->fetch_array();
                if($row["poprawna"] == $_POST[$i]){
                    $pop = $pop + 1;
                    $wczesniejszaIlosc1 = $row["poprawne"];
                    $wczesniejszaIlosc1 = $wczesniejszaIlosc1 + 1;
                    $polaczenie->query("UPDATE pytania SET poprawne='$wczesniejszaIlosc1' WHERE ID=$i");
                }
                else{
                    $bl = $bl + 1;
                    $wczesniejszaIlosc2 = $row["bledne"];
                    $wczesniejszaIlosc2 = $wczesniejszaIlosc2 + 1;
                    $polaczenie->query("UPDATE pytania SET bledne='$wczesniejszaIlosc2' WHERE ID=$i");
                }
            }
        }
        $uzytkownik = $_SESSION["user"];
        $wczesniej = $polaczenie->query("SELECT * FROM uzytkownicy WHERE user='$uzytkownik'");
        $row = $wczesniej->fetch_array();
        $wczesniejszePoprawne = $row["poprawne"];
        $wczesniejszeBledne = $row["bledne"];
        $wczesniejszePoprawne = $wczesniejszePoprawne + $pop;
        $wczesniejszeBledne = $wczesniejszeBledne + $bl;
        $polaczenie->query("UPDATE uzytkownicy SET poprawne='$wczesniejszePoprawne', bledne='$wczesniejszeBledne' WHERE user='$uzytkownik'");
        echo "<br/>";
        if($pop == 0){
            echo "ilość poprawnych odpowiedzi to 0%";
        }
        if($pop == 1){
            echo "ilość poprawnych odpowiedzi to 10%";
        }
        if($pop == 2){
            echo "ilość poprawnych odpowiedzi to 20%";
        }
        if($pop == 3){
            echo "ilość poprawnych odpowiedzi to 30%";
        }
        if($pop == 4){
            echo "ilość poprawnych odpowiedzi to 40%";
        }
        if($pop == 5){
            echo "ilość poprawnych odpowiedzi to 50%";
        }
        if($pop == 6){
            echo "ilość poprawnych odpowiedzi to 60%";
        }
        if($pop == 7){
            echo "ilość poprawnych odpowiedzi to 70%";
        }
        if($pop == 8){
            echo "ilość poprawnych odpowiedzi to 80%";
        }
        if($pop == 9){
            echo "ilość poprawnych odpowiedzi to 90%";
        }
        if($pop == 10){
            echo "ilość poprawnych odpowiedzi to 100%";
        }
        echo "<br/>";        
    ?>
    <a href="index.php">Wroc na strone glowna</a>
</body>
</html>