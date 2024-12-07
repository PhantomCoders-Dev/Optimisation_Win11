
Optimisation Extreme et Securisee de Windows 11 - Fonctionnement du Script

Introduction :
Ce script CMD est conçu pour effectuer une optimisation avancée du système Windows 11, en nettoyant et améliorant la performance du PC sans supprimer de programmes ni de services essentiels au bon fonctionnement de Windows. Il effectue plusieurs actions afin de nettoyer, réparer et configurer le système pour une meilleure réactivité.

Actions effectuées par le script :

1. Suppression des fichiers temporaires :
   Le script supprime les fichiers temporaires créés par le système, qui occupent de l'espace disque inutile.
   
2. Suppression des fichiers dans le dossier "Téléchargements" :
   Tous les fichiers du dossier "Téléchargements" de l'utilisateur sont supprimés. Cette action est irréversible, il est donc important de vérifier que vous ne souhaitez pas garder certains fichiers avant de continuer.

3. Vider la corbeille :
   Tous les éléments présents dans la corbeille seront supprimés définitivement.

4. Nettoyage du cache des mises à jour Windows :
   Le script arrête certains services liés aux mises à jour, supprime le cache des mises à jour et redémarre les services.

5. Réparation des fichiers système :
   Le script utilise les commandes `sfc /scannow` et `dism` pour réparer les fichiers système corrompus ou manquants.

6. Désactivation de services non critiques :
   Certains services non essentiels (comme le service "Diagnostic Tracking" et "dmwappushservice") sont désactivés pour libérer des ressources.

7. Configuration des effets visuels pour améliorer la performance :
   Le script modifie les paramètres visuels de Windows pour privilégier la performance plutôt que les effets graphiques.

8. Optimisation des disques :
   Si un disque dur est utilisé, le script effectue une défragmentation pour améliorer l'accès aux fichiers.

9. Activation du mode performance maximale :
   Le script active le mode de gestion d'alimentation "Performance maximale" pour améliorer les performances du système.

Processus d'exécution :
Lors de l'exécution du script, un message d'avertissement est affiché, détaillant toutes les actions qui seront effectuées. L'utilisateur doit alors entrer `Y` pour accepter et continuer l'optimisation ou `N` pour refuser et fermer le programme. Cette étape permet à l'utilisateur de confirmer qu'il est conscient des suppressions (notamment du dossier "Téléchargements" et de la corbeille).

Avertissement :
Avant de lancer l'optimisation, il est important de vérifier les fichiers dans le dossier "Téléchargements" et la corbeille, car ces fichiers seront supprimés de façon permanente. Une fois la confirmation donnée, le script procédera à la suppression et à l'optimisation.

Réinitialisation du système :
Une fois l'optimisation terminée, un redémarrage du système est recommandé pour que toutes les modifications prennent pleinement effet.

