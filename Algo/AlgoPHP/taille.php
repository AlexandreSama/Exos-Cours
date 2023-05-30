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
        <input type="int" name="nombre">
        <input type="submit" value="Valider" name="submit">
    </form>

    <?php
        function calcul($nb){
            $temp = 15;
            while ($nb < 10 || $nb > 20) {
                if ($nb < 10) {
                    echo 'Plus grand !';
                    $nb = $temp;
                }else if ($nb > 20){
                    $nb = $temp;
                    echo 'Plus petit !';
                }
            }
        }
        if(isset($_POST['submit'])){
            calcul($_POST['nombre']);
        } 
    
    ?>
</body>
</html>