
<?php

 // 1] CONNEXION
        function connect()
        {
            $db = new PDO('mysql:host=localhost;dbname=formation-poec2','root','');
            return $db;
        }

?>