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

function matchNul(pions) {
  for (const pion of pions) {
      if (pion.innerHTML.length === 0) {
          console.log(pion.innerHTML.length);
          return false;
      }
  }

  return true;
}

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
player1PointsElement.innerHTML = `Points : ${player1Points}`;
player2PointsElement.innerHTML = `Points : ${player2Points}`;
const joueurs = ["X", "O"];
const players = {};

function main(playerNames) {
  const pions = document.querySelectorAll("#Jeu button");
  let tour = 0;
  let jeuEstFini = false;
  const afficheur = new afficheurGame(document.querySelector("#StatutJeu"));

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
                  "Case occupée ! <br />Joueur " +
                  playerNames[tour].name +
                  " c'est toujours à vous !"
              );
          } else {
              setSymbol(this, joueurs[tour]);
              jeuEstFini = rechercherVainqueur(pions, joueurs, tour);

              if (jeuEstFini) {
                  const playerName = Object.keys(players)[tour];
                  afficheur.sendMessage(
                      "Le joueur " +
                      playerName +
                      ' a gagné ! <br /> <button type="button" class="btnReplay" onclick="main()">Rejouer ?'
                  );

                  if (players[playerName] === "O") {
                      player2Points += jeuEstFini;
                      player2PointsElement.innerHTML = `Points : ${player2Points}`;
                  } else {
                      player1Points += jeuEstFini;
                      player1PointsElement.innerHTML = `Points : ${player1Points}`;
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

              const currentPlayerName = Object.keys(players)[tour];
              const otherPlayerName = Object.keys(players)[1 - tour];
              afficheur.sendMessage(
                  "Joueur " + currentPlayerName + " c'est à vous !"
              );
              afficheur.sendMessage("Joueur " + otherPlayerName + " attendez votre tour");
          }
      });
  });
}

document.getElementById('playerInfos').addEventListener('click', () => {
  const p1NameInput = document.getElementById('pseudoP1');
  const p2NameInput = document.getElementById('pseudoP2');
  const p1Name = p1NameInput.value;
  const p2Name = p2NameInput.value;

  if (!p1Name || !p2Name) {
      alert('Veuillez entrer un pseudonyme pour chaque joueur !');
  } else {
      document.getElementById('playerName1').textContent = p1Name;
      document.getElementById('playerName2').textContent = p2Name;

      const players = [p1Name, p2Name];
      main(players);
  }
});