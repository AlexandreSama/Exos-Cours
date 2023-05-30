<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER somme"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un nombre :#1" algoitem="AFFICHER &quot;Entrez un nombre :&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="19#Somme prend la valeur de 0 pour l'initialiser" algoitem="//Somme prend la valeur de 0 pour l'initialiser"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="12#i#1#nb" algoitem="POUR i ALLANT_DE 1 A nb">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="19#Ici, somme sera calculé comme ceci : 1 + 1 +2 +3 + 4, etc.." algoitem="//Ici, somme sera calculé comme ceci : 1 + 1 +2 +3 + 4, etc.."/>
            <item code="19#Car on incrémente i a chaque fois de 1 jusqu'a atteindre le nombre que tu a donné" algoitem="//Car on incrémente i a chaque fois de 1 jusqu'a atteindre le nombre que tu a donné"/>
            <item code="5#somme#somme+i#pasliste" algoitem="somme PREND_LA_VALEUR somme+i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La somme est : #0" algoitem="AFFICHER &quot;La somme est : &quot;"/>
        <item code="3#somme#0#pasliste" algoitem="AFFICHER somme"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
