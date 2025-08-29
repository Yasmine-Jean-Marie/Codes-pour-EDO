# Projet Lotka–Volterra : Modèles proie–prédateur et variantes

Ce dépôt rassemble les codes MATLAB/Octave développés pour l’étude du **modèle proie–prédateur de Lotka–Volterra** et de ses **extensions réalistes** (compétition, mutualisme,cas généralisé).  
Il fait partie d’un projet académique en **mathématiques appliquées et calcul scientifique**.


##  Objectifs du projet

- Étudier le **modèle classique proie–prédateur** de Lotka–Volterra.  
- Implémenter et comparer différentes **méthodes numériques** : Euler explicite/implicite, Crank–Nicolson, Runge–Kutta d’ordre 4.  
- Analyser la **stabilité des équilibres** ( Jacobien,Lyapunov).  
- Explorer des **variantes** (compétition, mutualisme).  
- Comparer les résultats numériques avec des solutions exactes quand elles existent.  



##  Organisation du dépôt

-  fonctions principales  
  - euler_exp.m :schéma d’Euler explicite  
  - euler_imp.m:schéma d’Euler implicite  
  - rk4.m : méthode de Runge–Kutta d’ordre 4  
  - crank_nicolson.m: schéma de Crank–Nicolson  
  - plot_lyapounov_with_trajectory.m:

- scripts d’exécution et tests numériques  
  - `simulation_euler.m`  
  - `simulation_rk4.m`  
  - `stability_analysis.m`  

- `plots/` : figures générées automatiquement (trajectoires, portraits de phase, comparaisons d’erreur).  

- `docs/` : documents PDF liés au projet (notes de cours, annexes).  

---

## ⚙️ Installation

Cloner le dépôt :

```bash
git clone https://github.com/moncompte/lotka-volterra.git
