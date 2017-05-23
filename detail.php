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
 <h3> Détails du produit  </h3>
 
<?php
include_once "fonctions.php";
$bdd=fonction_connection();

 $pro=$_GET['produit'];
 $requete ='SELECT Label, Description, Category, Price, Reduction_euro, Advantage_percent, Image, Origin, Mention, Packaging  FROM `product` WHERE Identifier ="'.$pro.'";';
 $reponse = $bdd->query($requete);
 $produit_array= $reponse->fetchAll();
 
 echo "<ul>";
 foreach($produit_array as $produit){	 
	 echo "<li>";
	 echo "<p class=\"Category_product\">".$produit['Category']."</p>";
	 echo "<p>";
	 echo "<center><div class=\"ImageRonde\">";
     echo "<img class=\"im\" src=\"".$produit['Image']."\" alt=\"\" />";
	 echo "</div></center>";
	 echo "<p>".$produit['Label']."</p>";
	 echo "<p>".$produit['Description']."</p>";
	 echo "<p>".$produit['Origin']."</p>";
	 echo "<p>".$produit['Mention']."</p>";
	 echo "<p>".$produit['Packaging']."</p>";
     echo "<p>".$produit['Price']." Euros".$produit['Reduction_euro'].$produit['Advantage_percent']."</p>";

	 echo "</p>";
     echo "</li>";
}
 echo "</ul>";

 
?>
 </article>
 </section>
 <footer>
 <p class="whiteP">Merci de votre visite.</p>
 <p class="whiteP">© 2017 - Visio.lan </p>
 </footer>
 </body>
</html>