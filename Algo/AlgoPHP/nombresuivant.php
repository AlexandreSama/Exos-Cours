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
            $i = 0;
            while ($i < 10) {
                $i = $i + 1;
                echo intval($nb)+$i . ' ';
            }
        }
        if(isset($_POST['submit'])){
            calcul($_POST['nombre']);
        } 
    
    ?>
</body>
</html>