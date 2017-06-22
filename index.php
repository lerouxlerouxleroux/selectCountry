

<?php
include_once '/includes/connexion_db.php';
include "/includes/countries.php"; 
?>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script src ="js/zepto.min.js"></script>
<script src ="js/lodash.min.js"></script>
<script src ="js/countries.js"></script>

<h1>Select Country</h1>

<div class="well" id="formulaireDeSelection">     
    <label>Pays</label>
      <?php echo selectFormat(getCountries()); ?>
</div>

<div id='informations'></div>

<div id='image'>...</div>