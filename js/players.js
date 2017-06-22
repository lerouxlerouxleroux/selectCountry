
// variables globales *****************************************

var players = null;// sources de données globale
var ageAsc = false; // permet de savoir si asc ou desc
var nomAsc = false; // permet de savoir si asc ou desc sur nom
var filterAge = null; // aucun filtre sur l'age

// *************************************************************

// fonctions ***************************************************
function getPlayers()
{
    var url = "http://localhost/projet/PHP/ajax2.php";
    $.get(url, function(data){
        // data contiendra les donnees renvoyé par le serveur
       // console.log(data);
       // requete ajax est asynchrone, n'attend pas la reponse du serveur pour continuer le script du code
        players = JSON.parse(data);
        displayTable(players); // fonction d'affichage d'un tableau de joueurs
   //   console.log(getAges());
  //    console.log(_.max(getAges()));
    });

}
function displayTable(players)
{
    var table ='<table class="table table-striped">';
    table +='<tr><th id ="nomHeader">Nom</th><th>Prenom</th><th id ="ageHeader">Age</th><th>Numero</th><th>Equipe</th></tr>';
    
    var oldest = _.max(getAges(players));
    // console.log(oldest);

 // boucle 
    players.forEach(function(player){
            table +='<tr>';
            table +='<td>' + player.nom + '</td>';
            table +='<td>' + player.prenom + '</td>';
            if(player.age == oldest)
            {
                table +='<td class="oldest">' + player.age + '</td>';
            }else{
                table +='<td>' + player.age + '</td>';
            }
            
            
            table +='<td>' + player.numero_maillot + '</td>';

            if(player.equipe_nom == null)
            {
                table +='<td>' + 'sans club' + '</td>';
            }else
            {
                 table +='<td>' + player.equipe_nom + '</td>';
            }           

            table +='</tr>';

           // console.log(player.nom)
       });

    table += '</table>';

    $('#listPlayers').html(table);
}
function hidePlayers(ageLimite)
{
    var rows = $('table tr');
    var nbResults = 0;

    //console.log(rows);
    $.each(rows, function(index, row){
      
        // recuperation de l'age
        //row.hide(); not a fonction
        var r = $(row); // r est plus riche en fonctionnalités
        var age  = r.children().eq(2).text();
        //console.log(r.children().eq(2).text());
        if(age > ageLimite && index !=0)
        {
            r.hide();
        }else{
            r.show();
            nbResults++;
        }
    });

    $('#nbResults').html(nbResults-1); // on affiche le resultat dans le DOM (-1 pour ne pas compter la ligne d'en-tete)

}
function getAges(players)
{
    var ages = []; // initialisation d'un tableau vide

    players.forEach(function(player){
        ages.push(player.age);// ajoute un element dans le tableau;
    });


    return ages; // retourne  le tableau ages
}

function getFormValues(form){
    
   

    var inputs = form.children('input');

    // recupere la valeur du 1 input trouvé
    var nom = inputs.eq(0).val();
    var prenom = inputs.eq(1).val();
    var age = inputs.eq(2).val();
    
    var selects = form.children('select');
    var maillot = selects.eq(0).val();
    var equipe = selects.eq(1).val();

    // console.log(nom + ' ' +prenom +' ' +age +' '+maillot +' '+ numero);

     // creation d'un object values
    // values permettera de stocker toutes les valeurs à transmettre au serveur

    values = {
        nom: nom,
        prenom: prenom,
        age: age,
        numero_maillot: maillot,
        equipe: equipe
    };
   // console.log(values);
return values;
}
function checkValues(player)// player est un objet
{
    var condition = player.nom.length > 1 &&
                    player.prenom.length > 1 &&
                    player.age.length > 1;
                    //_.isNumber(player.age.length)
              //   isInteger(player.age.length);
    return condition;
}

function clearMessage(timer)
{

    var message = $('#message');
    setTimeout(function(){

        message.text('')
        .removeClass();// efface le texte situé dans #message et sa classe
    
    }, timer);

}

//  ************************************************************
// ecouteurs d'evenements **************************************

$('#selectAge').on('change',function(){
    filterAge = $(this).val(); // recupere la valeur de la valeur de l'element de formulaire selectionnée
    hidePlayers(filterAge);
});

$('#displayFormPlayer').on('click',function(){
    var text = ' le formulaire pour ajouter un joueur';
    var form = $(this).next();
    form.toggle();
    //$(this).next().toggle();
    // changer le texte du lien en fonction de la visibilité du formulaire
    
    var status = form.css('display');
    if(status == 'none')
    {
        $(this).text('afficher' + text);

    }else
    {
          $(this).text('masquer' + text);
    }

});
// Lorsque l'element #ageHeader EXISTERA dans le DOM, JS placera un ecouteur d'evenement CLICK dessus.

$(document).on('click', '#ageHeader',function(){
    console.log('ok');
  if(ageAsc)
            {
                var sortedPlayers = _.reverse(_.sortBy(players,['age']));
                        
            }else{
                var sortedPlayers = _.sortBy(players,['age']);
            
            }
            ageAsc = !ageAsc;
           
         //   console.log(sortedPlayers);
            displayTable(sortedPlayers);
            if(filterAge)// si variable filterAge!= null on masque les joueurs dont l'age est supperieur à la valeur de filterAge
            {
                hidePlayers(filterAge);
            }
    
});

$(document).on('click', '#nomHeader',function(){
    console.log('nom ok');
  if(nomAsc)
            {
                var sortedPlayers = _.reverse(_.sortBy(players,['nom']));
                        
            }else{
                var sortedPlayers = _.sortBy(players,['nom']);
            
            }
            nomAsc = !nomAsc;
           
         //   console.log(sortedPlayers);
            displayTable(sortedPlayers);
            if(filterAge)// si variable filterAge!= null on masque les joueurs dont l'age est supperieur à la valeur de filterAge
            {
                hidePlayers(filterAge);
            }
});

$('#formPlayer button').on('click', function(){
    var form = $('#formPlayer');
    var player = getFormValues(form);
    var check = checkValues(player);
    
     console.log(check);

    if(check) // si conditions remplies
    { 
        // requete ajax en post
        var url ='http://localhost/projet/PHP/ajaxAddPlayer.php';

        $.post(url, player, function(data){

            // console.log(data);
            // si succes raffraichis la liste des joueurs
            if (data == 1)
            {
                getPlayers();
                $('#message').text('L\'enregistrement a réussi').
                removeClass().
                addClass('bg-success text-success');
            }else
            {
                 $('#message').text('L\'enregistrement a échoué').
                removeClass().
                addClass('bg-danger text-danger');
            }
        });

    }else
    {
         $('#message').text('Formulaire non valide')
         .removeClass()
         .addClass('bg-danger text-danger');
         
    }
    clearMessage(5000);
});


// chargement de la liste des joueurs *************************

getPlayers();

// ************************************************************

// lodash exemple
/*
var notes =[7,5,42,65,82];

var max = _.max(notes);
var min = _.min(notes);

console.log(max);
console.log(min);
*/


//$('p').hide();

