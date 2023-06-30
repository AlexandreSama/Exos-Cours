/**
 * The function "estValide" checks if a button's innerHTML is empty.
 * @param button - The parameter "button" is a reference to an HTML button element.
 * @returns a boolean value indicating whether the innerHTML of the button is empty or not.
 */
function estValide(button) {
  return button.innerHTML.length == 0;
}

/**
 * The function "setSymbol" sets the innerHTML of a button to a specified symbol.
 * @param btn - The "btn" parameter is the button element that you want to set the symbol for.
 * @param symbole - The `symbole` parameter is a string that represents the symbol you want to set on
 * the button.
 */
function setSymbol(btn, symbole) {
  btn.innerHTML = symbole;
}

/**
 * The function checks if a player has won in a game of tic-tac-toe and 
 * highlights the winning combination of squares.
 * @param pions - an array of HTML elements representing the game board squares
 * @param joueurs - an array containing the two players' symbols (e.g. ["X", "O"])
 * @param tour - The current player's turn, represented by an index number in the array of players.
 * @returns a boolean value indicating whether or not a winning combination 
 * of pions has been found for the current player (specified by the "tour" 
 * parameter). If a winning combination is found, the function also changes
 * the background color of the winning pions to green.
 */

function rechercherVainqueur(pions, joueurs, tour) {

  const timerDebut = new Date().getTime();
  let temp = 0

  if (
    pions[0].innerHTML == joueurs[tour] &&
    pions[1].innerHTML == joueurs[tour] &&
    pions[2].innerHTML == joueurs[tour]
  ) {
    pions[0].style.backgroundColor = "#9ACD32";
    pions[1].style.backgroundColor = "#9ACD32";
    pions[2].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[3].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[5].innerHTML == joueurs[tour]
  ) {
    pions[3].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[5].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[6].innerHTML == joueurs[tour] &&
    pions[7].innerHTML == joueurs[tour] &&
    pions[8].innerHTML == joueurs[tour]
  ) {
    pions[6].style.backgroundColor = "#9ACD32";
    pions[7].style.backgroundColor = "#9ACD32";
    pions[8].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[0].innerHTML == joueurs[tour] &&
    pions[3].innerHTML == joueurs[tour] &&
    pions[6].innerHTML == joueurs[tour]
  ) {
    pions[0].style.backgroundColor = "#9ACD32";
    pions[3].style.backgroundColor = "#9ACD32";
    pions[6].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[1].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[7].innerHTML == joueurs[tour]
  ) {
    pions[1].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[7].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[2].innerHTML == joueurs[tour] &&
    pions[5].innerHTML == joueurs[tour] &&
    pions[8].innerHTML == joueurs[tour]
  ) {
    pions[2].style.backgroundColor = "#9ACD32";
    pions[5].style.backgroundColor = "#9ACD32";
    pions[8].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[0].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[8].innerHTML == joueurs[tour]
  ) {
    pions[0].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[8].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  if (
    pions[2].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[6].innerHTML == joueurs[tour]
  ) {
    pions[2].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[6].style.backgroundColor = "#9ACD32";
    temp = temp + 1
  }

  console.log(`Temps d'exec. : ${new Date().getTime() - timerDebut} ms`);

  return temp;
}

/**
 * The function checks if any of the elements in an array of HTML elements 
 * have no innerHTML content.
 * @param pions - an array of HTML elements representing game pieces or tokens.
 * @returns The function is checking if any of the elements in the `pions` array have an empty
 * innerHTML property. If at least one element has an empty innerHTML, the 
 * function returns `false`. Otherwise, it returns `true`.
 */

function matchNul(pions) {
  for (var i = 0, len = pions.length; i < len; i++) {
    if (pions[i].innerHTML.length == 0) return false;
  }

  return true;
}

/* These are three constructor functions that create objects 
with a `sendMessage` method. Each constructor takes an `element` 
parameter and sets it as the `affichage` property of the object. The
`setText` function sets the `innerHTML` of the `affichage` element 
to the `message` parameter. The `sendMessage` method returns the 
`setText` function. These objects are used to display messages to
the players during the game. */

var AfficheurGame = function (element) {
  var affichage = element;

  /**
 * The function sets the innerHTML of an element with 
 * the message passed as an argument.
 * @param message - The message parameter is a string that will be displayed
 * on the webpage. The function setText takes this message as an argument
 * and sets the innerHTML of an element with the id "affichage" to the 
 * message.
 */
  function setText(message) {
    affichage.innerHTML = message;
  }

  return { sendMessage: setText };
};

//Points for the players
var player1Points = 0;
var player2Points = 0;
document.getElementById('player1Points').innerHTML += player1Points;
document.getElementById('player2Points').innerHTML += player2Points;
var joueurs = ["X", "O"];
var temp = 0;
var players = {}


/**
 * The main function handles the logic of a tic-tac-toe game, including player turns, checking for a
 * winner, and displaying messages.
 * @param playerNames - playerNames is an array of player names.
 * @returns The function does not have a return statement, so it does not return any value.
 */
function main(playerNames) {

  var pions = document.querySelectorAll("#Jeu button");
  var tour = 0;
  var jeuEstFini = 0;
  var afficheur = new AfficheurGame(document.querySelector("#StatutJeu"));

  if (playerNames) {

    playerNames.forEach(element => {

      players[element] = joueurs[temp]
      temp++

    })

  }

  pions.forEach(element => {

    element.innerHTML = '';
    element.style.backgroundColor = 'white';

  });

  afficheur.sendMessage(
    "Que le jeu commence ! "
  );

  for (var i = 0, len = pions.length; i < len; i++) {
    pions[i].addEventListener("click", function () {
      if (jeuEstFini) return;

      if (!estValide(this)) {

        if (Object.values(players)[tour] == "O") {

          afficheur.sendMessage(
            "Case occupée ! <br />Joueur " +
            playerNames[tour].name +
            " c'est toujours à vous !"
          );

        } else {

          afficheur.sendMessage(
            "Case occupée ! <br />Joueur " +
            playerNames[tour].name +
            " c'est toujours à vous !"
          );

        }

      } else {

        setSymbol(this, joueurs[tour]);
        jeuEstFini = rechercherVainqueur(pions, joueurs, tour);

        if (jeuEstFini) {

          if (Object.values(players)[tour] == "O") {

            afficheur.sendMessage(
              "Le joueur " +
              Object.keys(players)[tour] +
              ' a gagné ! <br /> <a href="#" onclick="main()">Rejouer</a>'
            );

            player2Points = player2Points + jeuEstFini;
            document.getElementById('player2Points').innerHTML = 'Points : ' + player2Points;

          } else {

            afficheur.sendMessage(
              "Le joueur " +
              Object.keys(players)[tour] +
              ' a gagné ! <br /> <a href="#" onclick="main()">Rejouer</a>'
            );

            player1Points = player1Points + jeuEstFini;;
            document.getElementById('player1Points').innerHTML = 'Points : ' + player1Points;

          }

          return;
        }

        if (matchNul(pions)) {

          afficheur.sendMessage(
            'Match Nul ! <br/> <a href="#" onclick="main()">Rejouer</a>'
          );
          return;

        }

        tour++;
        tour = tour % 2;

        if (Object.values(players)[tour] == "O") {

          afficheur.sendMessage(
            "Joueur " + Object.keys(players)[tour] + " c'est à vous !"
          );
          afficheur.sendMessage("Joueur " + Object.keys(players)[tour - 1] + " attendez votre tour")

        } else if (Object.values(players)[tour] == "X") {

          afficheur.sendMessage(
            "Joueur " + Object.keys(players)[tour] + " c'est à vous !"
          );
          afficheur.sendMessage("Joueur " + Object.keys(players)[tour + 1] + " attendez votre tour")

        }
      }
    });
  }
}

/* This code snippet is adding an event listener to the element with the id "playerInfos". When this
element is clicked, the code inside the arrow function will be executed. */
document.getElementById('playerInfos').addEventListener('click', () => {
  let p1Name = document.getElementById('pseudoP1').value
  let p2Name = document.getElementById('pseudoP2').value
  document.getElementById('playerName1').innerHTML += p1Name
  document.getElementById('playerName2').innerHTML += p2Name
  let tab = []
  tab.push(p1Name, p2Name)
  main(tab)
})
