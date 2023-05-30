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
        <input type="text" name="nombre">
        <input type="submit" value="Valider" name="submit">
    </form>

    <?php
        function calcul($nb){
            $i = 1;
            for ($i = 1; $i <= 10; $i++) {
                echo intval($nb) . " X " . intval($i) . " = " . intval($nb)*intval($i) . ' ';
            }
        }
        if(isset($_POST['submit'])){
            calcul($_POST['nombre']);
        } 
    
    ?>
</body>
</html>