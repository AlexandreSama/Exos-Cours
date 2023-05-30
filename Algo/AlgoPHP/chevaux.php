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
        function calcul($nb, $nb2){
            $N = $nb;
            $P = $nb2;
            $I = '';
            $A = 1;
            $B = 1;

            for ($I = 1; $I <= $P; $I++) {
                $A = $A*($I+$N-$P);
                $B = $B*$I;
            }
            echo "Dans l'ordre, une chance sur " . $A;
            echo "Dans le désordre, une chance sur " . ($A / $B);
        }
        if(isset($_POST['submit'])){
            calcul($_POST['nombreC'], $_POST['nombreJ']);
        } 
    
    ?>
</body>
</html>