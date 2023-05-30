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
            $nb = intval($nb);
            $pg = 0;
            $ipg = 0;
            $test = ['25', '25','25', '25','25', '25','25', '25','25', '25','520','25', '25','25', '25'];
//Faire plutôt un tableau PHP.
            for ($i = 0; $i <= count($test); $i++) {
                foreach ($test as $element => $value) {
                    if ($value > $pg) {
                        $pg = $value;
                        $ipg = array_search($value, $test);
                    }
                }
            }

            echo 'Le nombre le plus grand était : ' . $pg;
            echo 'Il a été saisi en position numéro : ' . $ipg;
        }
        if(isset($_POST['submit'])){
            calcul($_POST['nombre']);
        } 
    
    ?>
</body>
</html>