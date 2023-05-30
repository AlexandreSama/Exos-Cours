<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER ipg"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pg" algoitem="pg EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#ipg" algoitem="ipg EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nb#1#pasliste" algoitem="nb PREND_LA_VALEUR 1"/>
        <item code="5#i#0#pasliste" algoitem="i PREND_LA_VALEUR 0"/>
        <item code="5#pg#0#pasliste" algoitem="pg PREND_LA_VALEUR 0"/>
        <item code="15#nb!=0" algoitem="TANT_QUE (nb!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrez un nombre :#1" algoitem="AFFICHER &quot;Entrez un nombre :&quot;"/>
            <item code="2#nb#pasliste" algoitem="LIRE nb"/>
            <item code="5#i#i+1#pasliste" algoitem="i PREND_LA_VALEUR i+1"/>
            <item code="6#i == 1 OU nb > pg" algoitem="SI (i == 1 OU nb > pg) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#pg#nb#pasliste" algoitem="pg PREND_LA_VALEUR nb"/>
                <item code="5#ipg#i#pasliste" algoitem="ipg PREND_LA_VALEUR i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Le nombre le plus grand était : #0" algoitem="AFFICHER &quot;Le nombre le plus grand était : &quot;"/>
        <item code="3#pg#1#pasliste" algoitem="AFFICHER pg"/>
        <item code="4#Il a été saisi en position numéro #0" algoitem="AFFICHER &quot;Il a été saisi en position numéro &quot;"/>
        <item code="3#ipg#0#pasliste" algoitem="AFFICHER ipg"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
