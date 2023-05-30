<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER IPG"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#PG" algoitem="PG EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#IPG" algoitem="IPG EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#PG est la variable pour le plus grand nombre, on l'initialise donc a 0" algoitem="//PG est la variable pour le plus grand nombre, on l'initialise donc a 0"/>
        <item code="5#PG#0#pasliste" algoitem="PG PREND_LA_VALEUR 0"/>
        <item code="12#i#1#20" algoitem="POUR i ALLANT_DE 1 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrez un nombre :#0" algoitem="AFFICHER &quot;Entrez un nombre :&quot;"/>
            <item code="2#N#pasliste" algoitem="LIRE N"/>
            <item code="19#La première fois que le code fais une boucle, PG et IPG auront une nouvelle valeur." algoitem="//La première fois que le code fais une boucle, PG et IPG auront une nouvelle valeur."/>
            <item code="19#Et si tu donne un nombre (N) plus grand que PG, PG et IPG auront a nouveau une nouvelle valeur" algoitem="//Et si tu donne un nombre (N) plus grand que PG, PG et IPG auront a nouveau une nouvelle valeur"/>
            <item code="6#N > PG" algoitem="SI (N > PG) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#PG#N#pasliste" algoitem="PG PREND_LA_VALEUR N"/>
                <item code="5#IPG#i#pasliste" algoitem="IPG PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le nombre le plus grand était :#0" algoitem="AFFICHER &quot;Le nombre le plus grand était :&quot;"/>
        <item code="3#PG#1#pasliste" algoitem="AFFICHER PG"/>
        <item code="4#Il a été saisi en position numéro : #0" algoitem="AFFICHER &quot;Il a été saisi en position numéro : &quot;"/>
        <item code="3#IPG#0#pasliste" algoitem="AFFICHER IPG"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
