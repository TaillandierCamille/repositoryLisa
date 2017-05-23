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
 <h3> Produits de la page  </h3>
 <p>cliquer pour avoir les détails</p>
 
<?php
include_once "fonctions.php";
$bdd=fonction_connection();

 $pag=$_GET['page'];
 $requete ='SELECT Identifier, Image FROM `product` WHERE IdPage ="'.$pag.'";';
 $reponse = $bdd->query($requete);
 $produit_array= $reponse->fetchAll();
 
 echo "<ul>";
 foreach($produit_array as $produit){	 
	 echo "<li>";
     echo "<a href=\"detail.php?produit=",$produit['Identifier'],"\">";
     echo "<img src=\"".$produit['Image']."\" alt=\"\" />";
	 echo "<p></br></p>";
     echo "<p>";
	 echo "</p>";
     echo "</a>";  
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