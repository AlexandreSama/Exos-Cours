<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER factorielle"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#factorielle" algoitem="factorielle EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer un nombre :#1" algoitem="AFFICHER &quot;Entrer un nombre :&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="19#On initialise factorielle a 1" algoitem="//On initialise factorielle a 1"/>
        <item code="5#factorielle#1#pasliste" algoitem="factorielle PREND_LA_VALEUR 1"/>
        <item code="12#i#1#nb" algoitem="POUR i ALLANT_DE 1 A nb">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="19#Pareil que pour l'exo 5, sauf que la on multiplie" algoitem="//Pareil que pour l'exo 5, sauf que la on multiplie"/>
            <item code="5#factorielle#factorielle*i#pasliste" algoitem="factorielle PREND_LA_VALEUR factorielle*i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#La factorielle est : #0" algoitem="AFFICHER &quot;La factorielle est : &quot;"/>
        <item code="3#factorielle#0#pasliste" algoitem="AFFICHER factorielle"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
