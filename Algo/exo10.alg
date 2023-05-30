<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHERCALCUL A/B"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#N" algoitem="N EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#P" algoitem="P EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#I" algoitem="I EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#B" algoitem="B EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez le nombre de chevaux partants : #0" algoitem="AFFICHER &quot;Entrez le nombre de chevaux partants : &quot;"/>
        <item code="2#N#pasliste" algoitem="LIRE N"/>
        <item code="4#Entrez le nombre de chevaux joués : #0" algoitem="AFFICHER &quot;Entrez le nombre de chevaux joués : &quot;"/>
        <item code="2#P#pasliste" algoitem="LIRE P"/>
        <item code="5#A#1#pasliste" algoitem="A PREND_LA_VALEUR 1"/>
        <item code="5#B#1#pasliste" algoitem="B PREND_LA_VALEUR 1"/>
        <item code="12#I#1#P" algoitem="POUR I ALLANT_DE 1 A P">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#A#A*(I+N-P)#pasliste" algoitem="A PREND_LA_VALEUR A*(I+N-P)"/>
            <item code="5#B#B*I#pasliste" algoitem="B PREND_LA_VALEUR B*I"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Dans l’ordre, une chance sur #0" algoitem="AFFICHER &quot;Dans l’ordre, une chance sur &quot;"/>
        <item code="3#A#1#pasliste" algoitem="AFFICHER A"/>
        <item code="4#Dans le désordre, une chance sur #0" algoitem="AFFICHER &quot;Dans le désordre, une chance sur &quot;"/>
        <item code="20#A/B#0" algoitem="AFFICHERCALCUL A/B"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
