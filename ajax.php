


<?php
include_once '/includes/connexion_db.php'; 

    $db = connect();
    $query = $db->prepare('SELECT * FROM pays');
    $query->execute();

    $results=$query->fetchAll(); 

echo json_encode($results);

?>