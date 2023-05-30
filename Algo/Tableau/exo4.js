/* L'algorithme suivant produit un tableau contenant 5 entrées numériques 
entrer a partir d'une boucle, mais qui sont en suite affiché dans une 
autre boucle */
var nb = []
var i

for (i = 1 ; i <= 5; i++) {
    nb.push(i*i)
}
for (i = 1; i <= 5; i++) {
    // console.log(Nb)
}

//Version plus simple

var nb2 = []
var i

for (i = 1; i <= 5; i++) {
    nb2.push(i*i)
    console.log(nb2)
}