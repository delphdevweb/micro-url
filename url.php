<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>frenchGen - Micro-url</title>
  <meta name="description" content="Créer facilement des URL raccourcies en un clic !">
</head>
<body><pre><?php

  // séparer ses identifiants et les protéger
  include "url.dbconf.php";

  try {

    // instancie un objet $connexion à partir de la classe PDO
    $connexion = new PDO(DB_DRIVER . ":host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET, DB_LOGIN, DB_PASS, DB_OPTIONS);

    // Requête de sélection 
    $requete = "SELECT * FROM `url`";
    $prepare = $connexion->prepare($requete);
    $prepare->execute();
    $resultat = $prepare->fetchAll();
    print_r([$requete, $resultat]); // debug & vérification

    // Requête d'insertion
    $requete = "INSERT INTO `url` (`url`, `shortcut`, `datetime`, `description`)
                VALUES (:url_url, :url_shortcut, :url_datetime, :url_description)";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
      ":url_url" => "https://information.tv5monde.com/?utm_source=tv5monde&utm_medium=metanav&utm_campaign=information_toute-l-actualite",
      ":url_shortcut" =>"htts://information.tv5monde.com",
      ":url_datetime" => date('Y-m-d H:i:s'),
      ":url_description"=>"Retrouvez toutes les dernières actualités sur tv5monde ",
    ));
    $resultat = $prepare->rowCount(); // rowCount() nécessite PDO::MYSQL_ATTR_FOUND_ROWS => true
    $lastInsertedUrlId = $connexion->lastInsertId(); // on récupère l'id automatiquement créé par SQL
    print_r([$requete, $resultat, $lastInsertedUrlId]); // debug & vérification

    // Requête de modification
    $requete = "UPDATE `url`
                SET `url` = :url_url
                WHERE `id` = :url_id";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
      ":url_id"   => $lastInsertedUrlId,
      ":url_url" => "https://culture.tv5monde.com/?utm_source=tv5monde&utm_medium=metanav&utm_campaign=culture",
    ));
    $resultat = $prepare->rowCount();
    print_r([$requete, $resultat]); // debug & vérification

    // Requête de suppression
    $requete = "DELETE FROM `url`
                WHERE `id` = :url_id";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(":url_id"=>$lastInsertedUrlId)); // on lui passe l'id tout juste créé
    $resultat = $prepare->rowCount();
    print_r([$requete, $resultat, $lastInsertedUrlId]); // debug & vérification

    // Requête d'insertion
    $requete = "INSERT INTO `url` (`url`, `shortcut`, `datetime`, `description`)
                VALUES (:url_url, :url_shortcut, :url_datetime, :url_description)";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
      ":url_url" => "https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/",
      ":url_shortcut" =>"ztz7",
      ":url_datetime" => date('Y-m-d H:i:s'),
      ":url_description"=>"L'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d'accéder aux données des autres joueurs.",
    ));
    $resultat = $prepare->rowCount(); // rowCount() nécessite PDO::MYSQL_ATTR_FOUND_ROWS => true
    $lastInsertedUrlId = $connexion->lastInsertId(); // on récupère l'id automatiquement créé par SQL
    print_r([$requete, $resultat, $lastInsertedUrlId]); // debug & vérification

    // Requête d'insertion
    $requete = "INSERT INTO `mots-clé` (`motcle`)
                VALUES (:motcle)";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
      ":motcle" =>"piratage",
    ));
    $resultat = $prepare->rowCount(); // rowCount() nécessite PDO::MYSQL_ATTR_FOUND_ROWS => true
    $lastInsertedMotcleId = $connexion ->lastInsertId();
    print_r([$requete, $resultat]); // debug & vérification
   

    //Requête qui lie hashtag piratage à url insert 7
    $requete = "INSERT INTO `raccourci_url` (`id_taburl`, `id_tabmc`)
    VALUES (:taburl_id, :tabmc_id)";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
    ":taburl_id" => $lastInsertedUrlId,
    ":tabmc_id" => $lastInsertedMotcleId
    ));
    $resultat = $prepare->rowCount(); // rowCount() pour check combien de row ont été ajouté
    $lastInsertedAssocId = $connexion->lastInsertId(); // on récupère l'id automatiquement créé par SQL
    print_r([$requete, $resultat, $lastInsertedAssocId]); // debug & vérification

    //Créer une requête de sélection pour requêter des données dont le hashtag est "piratage" et afficher le titre de chaque lien concerné
    $requete ="SELECT * FROM `url` 
    WHERE `id` IN(SELECT `id_taburl` FROM `raccourci_url`
    WHERE `id_tabmc` = :id_tabmc)";
    $prepare = $connexion->prepare($requete);
    $prepare->execute(array(
    ':id_tabmc' => $lastInsertedAssocId
    ));
    $resultat = $prepare->fetchAll();
    print_r([$requete, $resultat]); // debug & vérification
    
  } catch (PDOException $e) {

    // en cas d'erreur, on récup et on affiche, grâce à notre try/catch
    exit("❌🙀💀 OOPS :\n" . $e->getMessage());

  }

?></pre></body>
</html>