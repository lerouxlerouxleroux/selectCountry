// alert("ciao");
console.log("test js  ok");

var list    = document.getElementById('list');
var reset   = document.getElementById('reset');
var ajax    = document.getElementById('ajax');

var message = "bonjour à tous";
var nbClics = 0;

function test()
{
    console.log(message);
}
function addLi()
{
  
    if(nbClics < 5)
    {
        var li = document.createElement('li');
        li.innerText = message;
        list.appendChild(li);
        nbClics++; 
    }

}
function addLi2(text)
{
  
    if(nbClics < 5)
    {
        var li = document.createElement('li');
        li.innerText = text;
        list.appendChild(li);
        nbClics++; 
    }

}
function emptyList()
{
    // list.innerHTML =''; // remplace le code HTML
    while(list.firstChild)
    {
        list.removeChild(list.firstChild);
    }
    nbClics = 0;
}
function getData()
{
    console.log("requete ajax");
    var url = "http://localhost/projet/PHP/ajax.php";
    var req = new XMLHttpRequest();
    req.open('GET', url ,false);
    req.send(null); // requete envoyée au serveur
    if(req.status == 200)
    {
        // instruction à executer en cas de succes
        var res = req.responseText;
        console.log(typeof res);

        //console.log(res[0]);// ne renvoie que le 1er charactere de la chaine.
       
       var resArray = JSON.parse(res); // transforme la chaine JSON en tableau JS
        
        console.log(resArray);// renvoie object structure objet js
        console.log(resArray[0]);// renvoie chiellini
        //console.log('reponse du serveur : ' + req.responseText);

    addLi2(resArray[0]);
    // addLi2($players);

    }else
    {

    }
}

// ecouteurs d'evenements
document.getElementById('btn').addEventListener('click',addLi('toto'));
// $('btn').click(test);// en jquery
reset.addEventListener('click', emptyList);
ajax.addEventListener('click', getData);

