<?php
include_once "meta.php";
meta();
echo "<center><a class=\"a1\" href=\"Visio.php\">LISA</a></center>";
?>
</head>
 <body> 
 <header>
 <div>
 <h2> Visionneuse de catalogues </h2>
 </div>
 </header>
 <section class=\"catalogues\">
 <article>
 <h3> Nos catalogues </h3>
 
<?php
include_once "fonctions.php";
$bdd=fonction_connection();

$requete = 'SELECT catalog.Identifier, catalog.Type, catalog.Label, MIN(product.Image) AS Image FROM catalog INNER JOIN page ON catalog.Identifier = page.IdCatalog INNER JOIN product ON page.Identifier = product.IdPage GROUP BY catalog.Identifier, catalog.Type, catalog.Label';
$reponse = $bdd->query($requete);
$catalog_array= $reponse->fetchAll();

foreach($catalog_array as $catalog){
	 echo "";
	 echo "<p>";
     echo "<a class=\"a2\" href=\"catalogueChoisi.php?catalog=",$catalog['Identifier'],"\">";
	 echo "Catalogue n°";
	 echo $catalog['Identifier'];
	 echo "</a> - ";
     echo $catalog['Type'];
	 echo " : ";
     echo $catalog['Label'];
	 echo "<br>";
	 echo "<img src=\"".$catalog['Image']."\" alt=\"\" />";
	 echo "</p>";

}
?>

 
 </article>
 </section>
 <footer>
 <p class="whiteP">Merci de votre visite.</p>
 <p class="whiteP">© 2017 - VisionneuseLisa.fr </p>
 </footer>
 </body>
</html>

