<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="i PREND_LA_VALEUR 1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#val" algoitem="val EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Donnez un nombre#0" algoitem="AFFICHER &quot;Donnez un nombre&quot;"/>
        <item code="2#val#pasliste" algoitem="LIRE val"/>
        <item code="5#i#1#pasliste" algoitem="i PREND_LA_VALEUR 1"/>
        <item code="4#Les 10 nombres suivants sont : #1" algoitem="AFFICHER &quot;Les 10 nombres suivants sont : &quot;"/>
        <item code="15#i&lt;10" algoitem="TANT_QUE (i&lt;10) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#i#i+1#pasliste" algoitem="i PREND_LA_VALEUR i+1"/>
            <item code="20#val+i#1" algoitem="AFFICHERCALCUL val+i"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
