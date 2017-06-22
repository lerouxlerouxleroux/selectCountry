<?php

function getCountries()
{
    $db = connect();
    $query = $db->prepare('SELECT * FROM pays');
    $query->execute();

    return $query->fetchAll(); 
}
function selectFormat($countries)
{
    $output = '<select id="selectedCountry" name="Pays">';

    foreach ($countries as $country) 
    {
       $output .= '<option value="'.$country['id'].'">'.$country['nom'].'</option>';
    }
     $output .= "</select>";

    return $output;
}
?>