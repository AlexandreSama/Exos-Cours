<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
        <input type="int" name="nombreC">
        <input type="int" name="nombreJ">
        <input type="submit" value="Valider" name="submit">
    </form>

    <?php
        function calcul(){
            $E = [500, 1000, 1547, 2000, 500, 0];
            $somdue = 0;
            $M = 6484;
            $Reste = '';
            $Nb10E = 0;
            $Nb5E = 0;

            foreach ($E as $key => $value) {
                if($value != 0){
                    $somdue = $somdue + $value;
                }
            }

            $Reste = $M - $somdue;

            while ($Reste >= 10) {
                $Nb10E = $Nb10E + 1;
                $Reste = $Reste - 10;
            }

            if($Reste >= 5){
                $Nb5E = 1;
                $Reste = $Reste - 5;
            }

            echo 'Billet de 10 E : ' . $Nb10E . ' ';
            echo 'Billet de 5 E : ' . $Nb5E . ' ';
            echo 'Pièces de 1 E : ' . $Reste . ' ';
        }
        calcul();
    
    ?>
</body>
</html>