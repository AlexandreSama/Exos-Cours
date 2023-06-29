function estValide(button) {
  return button.innerHTML.length == 0;
}

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


  const combinaisonsGagnantes = [[0, 1, 2], [3, 4, 5], [6, 7, 8]];

  // objet state/état global
  let test = {
    players:
  [ 
    // player 1
    {

    },
    // player 2
    {

    }
  ]
}
  // forEach, map
  // .map(elt => elt * 2)
  // filter()
  // find, findIndexOf (qui remplace indexOf() sous forme de fonction)
  // every, some
  // concat (utilisé surtout pour cloner un tableau)
  // reduce, sort

  // .then()/.catch() => ECMAScript2016 : utiliser la nouvelle syntaxe async/await (+ try/catch)

  // // filtrer les combinaisons pour ne conserver que celles qui 
  // combinaisonsGagnantes.filter(combinaison =>
  //   combinaison.every(cellule => pions[cellule].innerHTML == joueurs[tour])
  // )
  // // ici on n'a que les combinaisons/lignes gagnantes
  // .forEach(combinaison =>
  //   combinaison.forEach(cellule =>
  //     pions[cellule].style.backgroundColor = "#9ACD32"
  //   )
  // );

  if (
    pions[0].innerHTML == joueurs[tour] &&
    pions[1].innerHTML == joueurs[tour] &&
    pions[2].innerHTML == joueurs[tour]
  ) {
    pions[0].style.backgroundColor = "#9ACD32";
    pions[1].style.backgroundColor = "#9ACD32";
    pions[2].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[3].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[5].innerHTML == joueurs[tour]
  ) {
    pions[3].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[5].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[6].innerHTML == joueurs[tour] &&
    pions[7].innerHTML == joueurs[tour] &&
    pions[8].innerHTML == joueurs[tour]
  ) {
    pions[6].style.backgroundColor = "#9ACD32";
    pions[7].style.backgroundColor = "#9ACD32";
    pions[8].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[0].innerHTML == joueurs[tour] &&
    pions[3].innerHTML == joueurs[tour] &&
    pions[6].innerHTML == joueurs[tour]
  ) {
    pions[0].style.backgroundColor = "#9ACD32";
    pions[3].style.backgroundColor = "#9ACD32";
    pions[6].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[1].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[7].innerHTML == joueurs[tour]
  ) {
    pions[1].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[7].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[2].innerHTML == joueurs[tour] &&
    pions[5].innerHTML == joueurs[tour] &&
    pions[8].innerHTML == joueurs[tour]
  ) {
    pions[2].style.backgroundColor = "#9ACD32";
    pions[5].style.backgroundColor = "#9ACD32";
    pions[8].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[0].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[8].innerHTML == joueurs[tour]
  ) {
    pions[0].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[8].style.backgroundColor = "#9ACD32";
    return true;
  }

  if (
    pions[2].innerHTML == joueurs[tour] &&
    pions[4].innerHTML == joueurs[tour] &&
    pions[6].innerHTML == joueurs[tour]
  ) {
    pions[2].style.backgroundColor = "#9ACD32";
    pions[4].style.backgroundColor = "#9ACD32";
    pions[6].style.backgroundColor = "#9ACD32";
    return true;
  }

  console.log(`Temps d'exec. : ${new Date().getTime() - timerDebut} ms`);
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

var AfficheurPlayer1 = function (element) {
  var affichage = element;

  function setText(message) {
    affichage.innerHTML = message;
  }

  return { sendMessage: setText };
};

var AfficheurPlayer2 = function (element) {
  var affichage = element;

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

/**
 * The function sets up a game of tic-tac-toe with two players and allows 
 * them to take turns placing their symbols on the board until a winner is
 * found or the game ends in a tie.
 * @returns There is no return statement in the code provided, so nothing is being returned.
 */
function main() {
  var pions = document.querySelectorAll("#Jeu button");
  var joueurs = ["X", "O"];
  var tour = 0;
  var jeuEstFini = false;
  var afficheur = new AfficheurGame(document.querySelector("#StatutJeu"));
  var afficheurPlayer2 = new AfficheurPlayer2(
    document.querySelector(".gameScore2")
  );
  var afficheurPlayer1 = new AfficheurPlayer1(
    document.querySelector(".gameScore1")
  );

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

        if (joueurs[tour] == "O") {
          afficheurPlayer2.sendMessage(
            "Case occupée ! <br />Joueur " +
              joueurs[tour] +
              " c'est toujours à vous !"
          );
        } else {
          afficheurPlayer1.sendMessage(
            "Case occupée ! <br />Joueur " +
              joueurs[tour] +
              " c'est toujours à vous !"
          );
        }

      } else {

        setSymbol(this, joueurs[tour]);
        jeuEstFini = rechercherVainqueur(pions, joueurs, tour);

        if (jeuEstFini) {

          if (joueurs[tour] == "O") {
            afficheurPlayer2.sendMessage(
              "Le joueur " +
                joueurs[tour] +
                ' a gagné ! <br /> <a href="#" onclick="main()">Rejouer</a>'
            );
            player2Points++;
            document.getElementById('player2Points').innerHTML = 'Points : ' + player2Points;
            document.querySelector(".gameScore1").innerHTML = '';
          } else {
            afficheurPlayer1.sendMessage(
              "Le joueur " +
                joueurs[tour] +
                ' a gagné ! <br /> <a href="#" onclick="main()">Rejouer</a>'
            );
            player1Points++;
            document.getElementById('player1Points').innerHTML = 'Points : ' + player1Points;
            document.querySelector(".gameScore2").innerHTML = '';
          }

          return;
        }

        if (matchNul(pions)) {
          document.querySelector(".gameScore1").innerHTML = "";
          document.querySelector(".gameScore2").innerHTML = "";
          afficheur.sendMessage(
            'Match Nul ! <br/> <a href="#" onclick="main()">Rejouer</a>'
          );
          return;
        }

        tour++;
        tour = tour % 2;

        if (joueurs[tour] == "O") {
          document.querySelector(".gameScore1").innerHTML = "";
          afficheurPlayer2.sendMessage(
            "Joueur " + joueurs[tour] + " c'est à vous !"
          );
          afficheurPlayer1.sendMessage("Joueur X attendez votre tour")
        } else {
          document.querySelector(".gameScore2").innerHTML = "";
          afficheurPlayer1.sendMessage(
            "Joueur " + joueurs[tour] + " c'est à vous !"
          );
          afficheurPlayer2.sendMessage("Joueur O attendez votre tour")
        }

      }
    });
  }
}

main();
