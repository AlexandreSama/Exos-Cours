    // const combinaisonsGagnantes = [[0, 1, 2], [3, 4, 5], [6, 7, 8]];
  
    // objet state/état global
    // forEach, map
    // .map(elt => elt * 2)
    // filter()
    // find, findIndexOf (qui remplace indexOf() sous forme de fonction)
    // every, some
    // concat (utilisé surtout pour cloner un tableau)
    // reduce, sort

    // .then()/.catch() => ECMAScript2016 : utiliser la nouvelle syntaxe async/await (+ try/catch)

    // filtrer les combinaisons pour ne conserver que celles qui 
    // combinaisonsGagnantes.filter(combinaison =>
    //   combinaison.every(cellule => {
    //     console.log(cellule);
    //     pions[cellule].innerHTML == joueurs[tour]
    //   })
    // )
    // ici on n'a que les combinaisons/lignes gagnantes
    // .forEach(combinaison =>
    //   combinaison.forEach(cellule => {
    //     pions[cellule].style.backgroundColor = "#9ACD32"
    //     temp = true
    //   })
    // );
    // return temp