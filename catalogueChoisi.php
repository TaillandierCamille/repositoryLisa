



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
 <h3> Pages du catalogue  </h3>
 
<?php
include_once "fonctions.php";
$bdd=fonction_connection();

 $cat=$_GET['catalog'];
 $requete ='SELECT page.Number, page.Identifier, MIN(product.Image) AS Image FROM page INNER JOIN product ON page.Identifier = product.IdPage WHERE idCatalog ="'.$cat.'" GROUP BY page.Number, page.Identifier;';
 $reponse = $bdd->query($requete);
 $page_array= $reponse->fetchAll();
 
 foreach($page_array as $page){
	 echo "<p>";
     echo "<a class=\"a2\" href=\"pageChoisi.php?page=",$page['Identifier'],"\">";
	 echo "Page n°";
	 echo $page['Number'];
	 echo "</a>";
	 echo "<br>";
	 echo "<center><div class=\"ImageRonde\">";
	 echo "<a class=\"a2\" href=\"pageChoisi.php?page=",$page['Identifier'],"\"><img class=\"im\" src=\"".$page['Image']."\" alt=\"\" /></a>";
	 echo "</div></center>";
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

