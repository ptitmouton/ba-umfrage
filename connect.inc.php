<?php
$connectionid  = mysql_connect ("localhost", "ba_chrissi", "2hL3*0cb");  // local testing
//$connectionid  = mysql_connect ("localhost", "kunden_hoedl", "afJUnPGP89LF8SxV");  // local testing

if (!mysql_select_db ("ba_chrissi", $connectionid))  
{  
        echo "<img src=\"alert.png\" width=\"100\" height=\"100\" alt=\"Warnung\" /><br />";
        echo "Leider besteht im Moment keine Verbindung zur mySQL Datenbank, Wir bitten um Ihr Verst&auml;ndnis.<br />An den zust&auml;ndigen Administrator wurde eine Nachricht versand.";
        $sendmail = mail('chrissi@onlyfreaks.de', '[hoedl] keine verbindung zur datenbank', 'es besteht keine verbindung zur datenbank von guenther hoedl');
        if(!$sendmail) { echo "<br />Fehler beim Mail versenden"; }
        die ("<br />Ihre Anfrage wird abgebrochen.");  
}
?>