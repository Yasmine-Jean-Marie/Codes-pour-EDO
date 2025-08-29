# Projet Lotka–Volterra : Modèles proie–prédateur et variantes

Ce dépôt rassemble les codes MATLAB/Octave développés pour l’étude du **modèle proie–prédateur de Lotka–Volterra** et de ses **extensions réalistes** (compétition, mutualisme,cas généralisé).  
Il fait partie d’un projet académique en **mathématiques appliquées et calcul scientifique**.


##  Objectifs du projet

- Étudier le **modèle classique proie–prédateur** de Lotka–Volterra.  
- Implémenter et comparer différentes **méthodes numériques** : Euler explicite/implicite, Crank–Nicolson, Runge–Kutta d’ordre 4.  
- Analyser la **stabilité des équilibres** ( Jacobien,Lyapunov).  
- Explorer des **variantes** (compétition, mutualisme,cas généralisé à n espèces).
- Comparer les résultats numériques avec des solutions exactes quand elles existent.
- Etudier la performance des méthodes utilisées  



##  Organisation du dépôt

-  fonctions principales  
  - euler_exp.m :schéma d’Euler explicite  
  - euler_imp.m:schéma d’Euler implicite  
  - rk4.m : méthode de Runge–Kutta d’ordre 4  
  - crank_nicolson.m: schéma de Crank–Nicolson  
  - plot_lyapounov_with_trajectory.m: code pour les lignes de niveau 

- scripts d’exécution et tests numériques  
  - test_euler_exp.m 
  - test_euler_imp.m 
  - test_crank_nicolson.m
  - test_runge_kutta_4.m  

  ##Codes utilisées pour la partie vers des modèles plus réalistes  

- F_mut.m
- Fcomp.m
- test_rk4_com_coexistence.m
- test_rk4_comp_dominance.m
- test_runge_kutta_4_mutualisme.m
- 

##Codes utilisées pour la partie étude de la  performance des méthodes 
-stabilite.m
-temps-de-calcul.m
