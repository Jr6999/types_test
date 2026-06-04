# Calculateur de Coût de Transport en Dart

## Présentation

Ce projet est une application console développée en langage Dart dans le cadre d'un apprentissage des fondamentaux de la programmation et des bonnes pratiques de développement.

L'application permet d'estimer le coût d'un trajet de transport en fonction :

* de la distance parcourue ;
* du moment de la journée (jour ou nuit) ;
* du nombre de colis à transporter.

Le programme applique différents tarifs selon les informations saisies par l'utilisateur et affiche un récapitulatif du coût de la prestation.

---

## Objectifs pédagogiques

Ce projet a été réalisé afin de mettre en pratique plusieurs notions fondamentales du langage Dart :

* les variables et constantes ;
* les types primitifs (`int`, `double`, `String`, `bool`) ;
* le typage fort ;
* les mots-clés `final` et `const` ;
* les structures conditionnelles (`if`, `else if`, `else`) ;
* la saisie utilisateur avec `stdin`;
* l'affichage dans la console avec `stdout` ;
* les bonnes pratiques de nommage et de documentation du code ;
* l'analyse statique avec `dart analyze`.

---

## Fonctionnalités

### Calcul du coût du transport

Le coût du trajet est calculé à partir de la distance parcourue et du tarif appliqué selon le moment de la journée.

| Période | Tarif au kilomètre |
| ------- | ------------------ |
| Jour    | 200.5 FCFA        |
| Nuit    | 300.5 FCFA        |

### Gestion des colis

Lorsque l'utilisateur déclare un ou plusieurs colis, un coût supplémentaire est ajouté :

| Service              | Tarif     |
| -------------------- | --------- |
| Transport d'un colis | 150 FCFA |

### Validation de la course

Avant l'affichage du résultat final, l'utilisateur doit confirmer sa demande.

* `Y` : validation de la course
* `N` : annulation de la course

### Messages colorés

Le programme utilise des codes ANSI pour améliorer la lisibilité des informations affichées dans le terminal :

* Vert : confirmation et résultats
* Jaune : informations
* Rouge : erreurs et annulations

---

## Exemple d'exécution

```text
Entrez la distance du trajet en KM: 10
Entrez le nombre de colis à transporter: 2

Entrez le moment de la journée (jour/nuit): jour

Le kilomètre en jour est de 200.5 FCFA
Le kilomètre en nuit est de 300.5 FCFA
Le prix d'un colis est de 150.0 FCFA

Souhaitez-vous valider la course ? (Y/N): Y

Mr/Mme Abdoulaye,

Le transport vous coûtera : 2005 FCFA
Le transport de votre colis vous coûtera : 300.0 FCFA

Merci pour la confiance
```

---

## Technologies utilisées

* Dart SDK
* Console Dart
* Analyseur statique Dart (`dart analyze`)

---

## Structure du projet

```text
lib/
└── calculateur_transport.dart

README.md
analysis_options.yaml
pubspec.yaml
```

---

## Exécution du projet

### 1. Vérifier l'installation de Dart

```bash
dart --version
```

### 2. Lancer l'application

```bash
dart run
```

ou

```bash
dart run bin/main.dart
```

### 3. Analyser le code

```bash
dart analyze
```

Résultat attendu :

```text
No issues found!
```

---

## Concepts clés abordés

### final

Utilisé pour les valeurs déterminées à l'exécution et qui ne doivent plus être modifiées après leur initialisation.

```dart
final heure = DateTime.now();
```

### const

Utilisé pour les constantes connues dès la compilation.

```dart
const tarifJour = 200.50;
```

### Typage fort

Le projet exploite le système de types de Dart afin de garantir la cohérence des données manipulées.

```dart
final distance = double.parse(stdin.readLineSync()!);
final nombreColis = int.parse(stdin.readLineSync()!);
```

Cette approche réduit les erreurs d'exécution et améliore la fiabilité de l'application.

---

## Auteur

**Jérémie HOUANKAN**

Projet réalisé dans le cadre de ma formation en Développement Mobile avec Dart et Flutter Methode FORGE.
