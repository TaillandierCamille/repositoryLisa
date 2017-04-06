<?php
include_once "meta.php";
meta();
echo "<center><a class=\"a1\" href=\"catalogueChoisi.php\">LISA</a></center>";
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

 $pag=$_GET['page'];
 $requete ='SELECT Label, Image, Category, Price, Origin  FROM `product` INNER JOIN zone on product.IdZone = zone.Identifier INNER JOIN page_zone on zone.Identifier = page_zone.IdZone WHERE IdPage ="'.$pag.'";';
 $reponse = $bdd->query($requete);
 $produit_array= $reponse->fetchAll();
 
 echo "<ul>";
 foreach($produit_array as $produit){	 
	 echo "<li>";
     echo "<a href=\"#\">";
     echo "<img src=\"".$produit['Image']."\" alt=\"\" />";
     	 echo "<p>";
     echo "<strong>".$produit['Label']."</strong>";
	 //echo "<strong>".$produit['Origin']."</strong>";
	 //echo "<strong>".$produit['Price']."</strong>";
	 echo "</p>";
	 //echo "<p>".$produit['Category']."</p>";
     echo "</a>";  
     echo "</li>";
}
 echo "</ul>";

 
?>
 </article>
 </section>
 <footer>
 <p class="whiteP">Merci de votre visite.</p>
 <p class="whiteP">© 2017 - VisionneuseLisa.fr </p>
 </footer>
 </body>
</html>