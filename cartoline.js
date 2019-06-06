var evidenziaViola = 'background: #483D8B; color: #fff; fill: #FF4136; stroke: #483D8B';
var trasparente = 'background: inherit; fill: transparent; color: inherit';

$(document).ready(function ()
{


// cambia il cursore quando passa sopra la X
$(".close").mouseover(function ()
{
  $(".close").css("cursor","pointer");
})

// cambia il cursore quando passa sopra le immagini
$(".button-green").mouseover(function ()
{
  $(".button-green").css("cursor","pointer");
})

//al click della X chiude la finestra modale
$(".close").click(function ()
{
    $(".myModal").css("display","none");
})

//al click dell'immagine parte la funzione PrendiValoreSelezionato
$(".button-green").click(function ()
{//passo in input alla funzione il valore dell'id cliccato
    PrendiValoreSelezionato($(this).attr('id'));
})

$('td , area').mouseover(function ()
{
  var questaClasse = document.getElementsByClassName($(this).attr('class'))
  questaClasse[1].style = evidenziaViola; // tag td
  questaClasse[0].style.backgroundColor = evidenziaViola; // tag area

  $(questaClasse).mouseleave(function ()
  {
    questaClasse[1].style = trasparente; // tag td
    questaClasse[0].style.backgroundColor = trasparente; // tag area
  })

})

// $('area').mouseover(function ()
// {
//   var questaClasse = document.getElementsByClassName($(this).attr('class'))
//   for (var i in questaClasse)
//   {
//
//     questaClasse[i].style = evidenziaViola;
//   }
//   $(questaClasse).mouseleave(function ()
//   {
//     for (var i in questaClasse)
//     {
//
//       questaClasse[i].style = trasparente;
//     }
//   })
//
// })

// per il pannello a scomparsa della cartolina 5
$('#flip5').click(function ()
{
    $('#scomparsa5').slideToggle("slow");
})
// per il pannello a scomparsa della cartolina 10
$('#flip10').click(function ()
{
    $('#scomparsa10').slideToggle("slow");
})
// per il pannello a scomparsa della cartolina 27
$('#flip27').click(function ()
{
    $('#scomparsa27').slideToggle("slow");
})

})



function PrendiValoreSelezionato(id)
{
    $(".myModal").css("display","block"); //"appare" la finestra modale
    //faccio uno switch per fare "apparire" il contenuto che  mi interessa
    switch (id) {
      case 'img1':
          $("#modal5").css("display","block");
          $("#modal10").css("display","none");
          $("#modal27").css("display","none");
        break;
        case "img2":
          $("#modal5").css("display","none");
          $("#modal10").css("display","block");
          $("#modal27").css("display","none");
          break;
        case 'img3':
          $("#modal5").css("display","none");
          $("#modal10").css("display","none");
          $("#modal27").css("display","block");
          break;
      default:
    }
}
