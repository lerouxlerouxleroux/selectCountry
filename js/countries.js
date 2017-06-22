
//console.log('test countries.js');

//var allCountries=[];
//var countries=[];
var path = "http://localhost/selectCountry/";

// fonctions ***************************************************

function getOneCountry(indice)
{
    var url = "http://localhost/selectCountry/ajax.php";
    $.get(url, function(data){
    countries = JSON.parse(data);
    displayInfosCountry(countries,indice);
    });
}
function getFormValues(form){
    
    var pays = form.eq(0).val();
    return pays;
}

function displayInfosCountry(country,indice)
{
    var table ='<table class="table table-striped">';
    table +='<tr><th id ="nomHeader">Nom</th><th>Capitale</th><th>NbHabitants</th><th>Superficie</th><th>Langue</th><th>Drapeau</th></tr>';
            table +='<tr>';
            table +='<td>' + country[indice-1].nom + '</td>';
            table +='<td>' + country[indice-1].capitale + '</td>';    
            table +='<td>' + country[indice-1].nbHabitants + '</td>';
            table +='<td>' + country[indice-1].superficie + '</td>';
            table +='<td>' + country[indice-1].langue + '</td>';    
            table +='<td>' + country[indice-1].drapeau + '</td>';
            table +='</tr>';
    table += '</table>';

var image ='<img src="' + path +'images/' + country[indice-1].drapeau + '"class="img-responsive center-block">';

console.log(image);

    $('#informations').html(table);
    $('#image').html(image);
}

// events listeners **********************************************

$(document).on('change','#selectedCountry',function(){
    var country = $(this).val();
    getOneCountry(country);
});

getOneCountry(1);
