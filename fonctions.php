<?php
function fonction_connection(){try
{
	$bdd = new PDO('mysql:host=localhost;dbname=lisa;charset=utf8', 'root', '');
}
catch (Exception $e)
{
        die('Erreur : lors de la connexion � la base de donn�es ' . $e->getMessage());
}
return $bdd;
;}

?>