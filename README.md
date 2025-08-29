#  Projet Lotka–Volterra : Modèles proie–prédateur et variantes

Ce dépôt rassemble les codes MATLAB/Octave développés pour l’étude du **modèle proie–prédateur de Lotka–Volterra** et de ses **extensions réalistes** (compétition, mutualisme, cas généralisé à \(n\) espèces).  
Il fait partie d’un projet académique en **mathématiques appliquées et calcul scientifique**.

---

## Objectifs du projet

- Étudier le **modèle classique proie–prédateur** de Lotka–Volterra.  
- Implémenter et comparer différentes **méthodes numériques** : Euler explicite/implicite, Crank–Nicolson, Runge–Kutta d’ordre 4.  
- Analyser la **stabilité des équilibres** (Jacobien, Lyapunov).  
- Explorer des **variantes** (compétition, mutualisme, cas généralisé à plusieurs espèces).  
- Comparer les résultats numériques avec des solutions exactes (lorsqu’elles existent).  
- Étudier la **performance des méthodes numériques** utilisées.  

---

## Organisation du dépôt

### Fonctions principales
- `euler_exp.m` : schéma d’Euler explicite  
- `euler_imp.m` : schéma d’Euler implicite  
- `rk4.m` : méthode de Runge–Kutta d’ordre 4  
- `crank_nicolson.m` : schéma de Crank–Nicolson  
- `plot_lyapounov_with_trajectory.m` : visualisation des lignes de niveau de Lyapunov avec trajectoires  

### Scripts d’exécution et tests numériques
- `test_euler_exp.m`  
- `test_euler_imp.m`  
- `test_crank_nicolson.m`  
- `test_runge_kutta_4.m`  

### Vers des modèles plus réalistes
- `F_mut.m` : fonction pour le modèle de mutualisme  
- `Fcomp.m` : fonction pour le modèle de compétition  
- `test_rk4_com_coexistence.m` : simulation de coexistence en compétition  
- `test_rk4_comp_dominance.m` : simulation de dominance en compétition  
- `test_runge_kutta_4_mutualisme.m` : simulation du modèle de mutualisme  

### Étude de performance des méthodes
- `stabilite.m` : test de stabilité numérique  
- `temps_de_calcul.m` : comparaison des temps de calcul  

##Quelques essais d'usage de données réelles disponible sur kaggle
-`testreel.m`
-`usagedonnereel.m`
