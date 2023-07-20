/**
 * The function "estValide" checks if a button's innerHTML is empty.
 * @param button - HTML button element.
 * @returns a boolean whether the innerHTML of the button is empty or not.
 */
function estValide(button) {
  return button.innerHTML.length == 0;
}

/**
* The function "setSymbol" sets the innerHTML of a button to a specified symbol.
* @param btn - The button element that you want to set the symbol for.
* @param symbole - The symbol you want to set on the button.
*/
function setSymbol(btn, symbole) {
  btn.innerHTML = symbole;
}

/**
 * The function `rechercherVainqueur` checks if any player has won the game by comparing the values of
 * the game board cells with the current player's symbol.
 * @param pions - The parameter "pions" represents an array of HTML elements that represent the game
 * board positions.
 * @param joueurs - The parameter "joueurs" represents an array of players in a game.
 * @param tour - The parameter "tour" represents the current turn in the game. It is used to determine
 * which player's pion (game piece) to check for in the winning combinations.
 * @returns the number of winning combinations found in the game board.
 */
function rechercherVainqueur(pions, joueurs, tour) {
  const timerDebut = new Date().getTime();
  let temp = 0;

  const combinaisonsGagnantes = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // lignes
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // colonnes
      [0, 4, 8], [2, 4, 6] // diagonales
  ];

  for (const combinaison of combinaisonsGagnantes) {
      const [a, b, c] = combinaison;
      if (
          pions[a].innerHTML == joueurs[tour] &&
          pions[b].innerHTML == joueurs[tour] &&
          pions[c].innerHTML == joueurs[tour]
      ) {
          pions[a].style.backgroundColor = "#9ACD32";
          pions[b].style.backgroundColor = "#9ACD32";
          pions[c].style.backgroundColor = "#9ACD32";
          temp++;
      }
  }

  console.log(`Temps d'exec. : ${new Date().getTime() - timerDebut} ms`);

  return temp;
}

/**
 * The function checks if any of the elements in the "pions" array have an empty innerHTML and returns
 * false if any element is empty, otherwise it returns true.
 * @param pions - The parameter "pions" is an array of elements. Each element represents a "pion" and
 * has an "innerHTML" property. The function is checking if any of the "pions" have an empty innerHTML,
 * and returns false if it finds any empty innerHTML. If all the
 * @returns a boolean value. If all the elements in the "pions" array have an innerHTML length of 0,
 * then the function will return true. Otherwise, it will return false.
 */
function matchNul(pions) {
  for (const pion of pions) {
      if (pion.innerHTML.length === 0) {
          console.log(pion.innerHTML.length);
          return false;
      }
  }

  return true;
}

/**
 * The afficheurGame function creates an object with a sendMessage method that sets the innerHTML of a
 * specified element.
 * @param element - The `element` parameter is the HTML element that will be used to display the game
 * messages. It could be a `<div>`, `<p>`, or any other HTML element that can display text.
 * @returns The function `afficheurGame` returns an object with a property `sendMessage` which is a
 * function.
 */
const afficheurGame = (element) => {
  const affichage = element;

  const setText = (message) => {
    affichage.innerHTML = message;
  };

  return { sendMessage: setText };
};

let player1Points = 0;
let player2Points = 0;
const player1PointsElement = document.getElementById('player1Points');
const player2PointsElement = document.getElementById('player2Points');
player1PointsElement.textContent = `Points : ${player1Points}`;
player2PointsElement.textContent = `Points : ${player2Points}`;
const joueurs = ["X", "O"];
const players = {};

/**
 * The main function handles the logic for a game of Tic Tac Toe, including player turns, checking for
 * a winner, and displaying messages.
 * @param playerNames - The `playerNames` parameter is an array of strings that represents the names of
 * the players in the game.
 */
function main(playerNames) {
  const pions = document.querySelectorAll("#Jeu button");
  let tour = 0;
  let jeuEstFini = false;
  const afficheur = afficheurGame(document.querySelector("#StatutJeu"));

  if (playerNames) {
    playerNames.forEach((name, index) => {
      players[name] = joueurs[index];
    });
  }

  pions.forEach((element) => {
    element.innerHTML = '';
    element.style.backgroundColor = 'white';
  });

  afficheur.sendMessage("Que le jeu commence !");

  pions.forEach((element) => {
    element.addEventListener("click", function () {
      if (jeuEstFini) return;

      if (!estValide(this)) {
        afficheur.sendMessage(
          `Case occupée ! <br />Joueur ${playerNames[tour].name} c'est toujours à vous !`
        );
      } else {
        setSymbol(this, joueurs[tour]);
        jeuEstFini = rechercherVainqueur(pions, joueurs, tour);

        if (jeuEstFini) {
          let playerName = Object.keys(players)[tour];
          afficheur.sendMessage(
            `Le joueur ${playerName} a gagné ! <br /> <button type="button" class="btnReplay" onclick="main()">Rejouer ?`
          );

          let currentPlayerPointsElement = playerName === "O" ? player2PointsElement : player1PointsElement;
          let currentPlayerPoints = playerName === "O" ? player2Points : player1Points;
          currentPlayerPoints += jeuEstFini;
          currentPlayerPointsElement.textContent = `Points : ${currentPlayerPoints}`;

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

        let currentPlayerName = Object.keys(players)[tour];
        let otherPlayerName = Object.keys(players)[1 - tour];
        afficheur.sendMessage(`Joueur ${currentPlayerName} c'est à vous !`);
        afficheur.sendMessage(`Joueur ${otherPlayerName} attendez votre tour`);
      }
    });
  });
}

document.getElementById('playerInfos').addEventListener('click', () => {
  const p1Name = document.getElementById('pseudoP1').value;
  const p2Name = document.getElementById('pseudoP2').value;

  if (!p1Name || !p2Name) {
      alert('Veuillez entrer un pseudonyme pour chaque joueur !');
  } else {
      document.getElementById('playerName1').textContent = p1Name;
      document.getElementById('playerName2').textContent = p2Name;

      const players = [p1Name, p2Name];
      main(players);
  }
});