#  Projet Lotka–Volterra : Modèles proie–prédateur et variantes

Ce dépôt rassemble les codes MATLAB/Octave développés pour l’étude du **modèle proie–prédateur de Lotka–Volterra** et de ses **extensions réalistes** (compétition, mutualisme, cas généralisé à \(n\) espèces).  
Il fait partie d’un projet académique en **mathématiques appliquées et calculs scientifiques**.

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

### Quelques essais d'usage de données réelles disponible sur kaggle
-`testreel.m`
-`usagedonnereel.m`

## Bibliographie

- **Étude du système proie–prédateur de Lotka–Volterra**  
  - [Lotka-Volterra.pdf](https://who.rocq.inria.fr/Jean.Clairambault/Equations%20de%20Lotka%20Volterra%20et%20quelques%20apparentees.pdf)  
  - [volterra.pdf](https://agreg-maths.univ-rennes1.fr/documentation/docs/volterra.pdf)  
  - [Intro_Diff3.pdf](https://www.southampton.ac.uk/~mb1a10/sim/Intro_Diff3.pdf)  
  - [478578_Chapter_4.pdf](https://www.math.iit.edu/~fass/478578_Chapter_4.pdf)  

- **Competitive Lotka–Volterra equation**  
  - [Un modèle de compétition entre espèces](https://experiences.mathemarium.fr/Un-modele-de-competition-entre)  

- **Generalized Lotka–Volterra equation**  
  - Fort, H. (2018). *On predicting species yields in multispecies communities: Quantifying the accuracy of the linear Lotka–Volterra generalized model*. **Ecological Modelling**, 387, p. 2.  

- **Mutualism and the Lotka–Volterra equation**  
  - [Philosophia Scientiae – Mutualisme et modèles Lotka–Volterra](https://journals.openedition.org/philosophiascientiae/697?lang=en)  
  - [Équations de compétition de Lotka–Volterra (Jimdo)](https://complexe.jimdofree.com/la-th%C3%A9orie-du-chaos/dynamique-des-populations/%C3%A9quations-de-comp%C3%A9tition-de-lotka-volterra/)  

