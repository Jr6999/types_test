# Rétrospective : Compréhension de `final`, `const` et de l'importance du typage fort en Dart

## Introduction

Au cours de la phase de finalisation de mon projet de développement mobile réalisé avec Dart, j'ai pris conscience que la qualité d'une application ne repose pas uniquement sur son bon fonctionnement. En effet, un programme peut répondre aux besoins de l'utilisateur tout en présentant des faiblesses techniques susceptibles de compliquer sa maintenance, son évolution ou sa stabilité à long terme.

Cette étape du projet m'a permis d'approfondir plusieurs concepts fondamentaux du langage Dart, notamment la différence entre les mots-clés `final` et `const`, ainsi que l'importance du typage fort dans le développement d'applications mobiles fiables. Ces notions, qui peuvent sembler simples au premier abord, jouent en réalité un rôle essentiel dans la robustesse et la qualité du code produit.

À travers cette rétrospective, je présente les connaissances acquises durant ce sprint et la manière dont elles contribueront à améliorer mes futures pratiques de développement.

---

## Compréhension du mot-clé `final`

L'un des premiers concepts que j'ai approfondis est l'utilisation du mot-clé `final`. En Dart, une variable déclarée avec `final` est une variable dont la valeur ne pourra plus être modifiée après son initialisation.

L'initialisation correspond au moment où une variable reçoit sa première valeur. Une fois cette étape réalisée, la variable devient immuable.

Par exemple :

```dart
final String userName = "Jeremie";
```

Dans cet exemple, la variable `userName` reçoit une valeur unique qui ne pourra plus être modifiée par la suite.

L'une des caractéristiques principales de `final` est que sa valeur peut être déterminée au moment de l'exécution de l'application, également appelé *runtime*. Le compilateur n'a donc pas besoin de connaître cette valeur à l'avance.

Cette propriété est particulièrement utile dans le développement mobile, où certaines informations ne sont disponibles qu'après le lancement de l'application.

Par exemple :

```dart
final String currentUser = getUserName();
```

Dans ce cas, le nom de l'utilisateur dépend de la personne connectée à l'application. Cette information n'est connue qu'au moment de l'exécution. L'utilisation de `final` garantit alors que cette donnée ne pourra pas être modifiée accidentellement après son affectation.

J'ai compris que `final` permet non seulement de protéger les données contre des modifications involontaires, mais également de rendre l'intention du développeur plus explicite. Lorsqu'un autre développeur lit le code, il sait immédiatement que la variable concernée ne doit pas changer durant son cycle de vie.

---

## Compréhension du mot-clé `const`

J'ai également étudié le fonctionnement du mot-clé `const`, qui représente un niveau d'immuabilité encore plus strict.

Une constante déclarée avec `const` doit posséder une valeur connue dès la phase de compilation. Contrairement à `final`, la valeur ne peut dépendre d'aucune information obtenue pendant l'exécution du programme.

Par exemple :

```dart
const double pi = 3.14159;
```

Dans ce cas, la valeur de `pi` est connue avant même que l'application ne soit exécutée. Le compilateur peut donc l'intégrer directement dans le programme final.

Cette caractéristique repose sur la notion de *compile-time*, c'est-à-dire le moment où le code source est traduit en instructions compréhensibles par la machine.

L'utilisation de `const` présente plusieurs avantages. Tout d'abord, elle garantit une immuabilité absolue de la donnée. Ensuite, elle permet au compilateur d'effectuer certaines optimisations, notamment en réduisant les allocations mémoire inutiles et en réutilisant des instances constantes lorsque cela est possible.

Dans Flutter, cette optimisation est particulièrement visible lors de la création des interfaces utilisateur :

```dart
const Text('Bienvenue');
```

Comme ce widget ne changera jamais, Flutter peut optimiser son traitement et éviter certaines reconstructions inutiles de l'interface.

J'ai ainsi compris que `const` doit être privilégié chaque fois qu'une valeur est connue à l'avance et qu'elle ne changera jamais durant toute la durée de vie de l'application.

---

## Différence fondamentale entre `final` et `const`

Avant ce sprint, je considérais souvent `final` et `const` comme deux mots-clés ayant exactement le même rôle. Mon apprentissage m'a permis de comprendre qu'ils répondent en réalité à des besoins différents.

La différence fondamentale réside dans le moment où la valeur est connue.

Avec `final`, la valeur peut être déterminée pendant l'exécution du programme.

Avec `const`, la valeur doit obligatoirement être connue pendant la compilation.

Le tableau suivant résume cette distinction :

| Critère                           | final              | const                  |
| --------------------------------- | ------------------ | ---------------------- |
| Valeur connue à la compilation    | Non                | Oui                    |
| Valeur connue à l'exécution       | Oui                | Non                    |
| Modification après initialisation | Impossible         | Impossible             |
| Optimisations du compilateur      | Limitées           | Plus importantes       |
| Cas d'utilisation principal       | Données dynamiques | Constantes permanentes |

Par exemple :

```dart
final DateTime currentDate = DateTime.now();
```

Cette instruction est valide car la date actuelle est connue uniquement lors de l'exécution.

En revanche :

```dart
const String appName = "Calculateur Mobile";
```

Cette constante est valide car sa valeur est connue dès l'écriture du programme.

Dans un projet Flutter, une bonne pratique consiste à utiliser `const` dès que cela est possible, puis à utiliser `final` lorsque la valeur dépend du contexte d'exécution. Cette approche améliore la lisibilité du code tout en permettant au framework de réaliser certaines optimisations automatiques.

---

## Importance du typage fort dans la stabilité d'une application mobile

L'autre notion majeure que j'ai approfondie concerne le typage fort proposé par Dart.

Le typage fort consiste à associer explicitement un type à chaque donnée manipulée par le programme. Une variable peut ainsi être définie comme un texte (`String`), un nombre entier (`int`), un nombre décimal (`double`) ou encore un booléen (`bool`).

Par exemple :

```dart
String firstName = "Jeremie";
int age = 25;
double average = 15.5;
bool isNight = false;
```

Le typage fort s'applique également aux paramètres des fonctions ainsi qu'aux valeurs de retour.

```dart
double calculateTotal(double price, double tax) {
  return price + tax;
}
```

Dans cet exemple, la fonction exige deux valeurs de type `double` et garantit de retourner également un `double`.

L'un des principaux avantages du typage fort est la détection précoce des erreurs.

Supposons que l'on tente d'effectuer une opération incohérente :

```dart
String firstName = "Jeremie";
int result = firstName * 2;
```

Une telle instruction sera immédiatement signalée par le compilateur. L'erreur est donc détectée avant même que l'application ne soit exécutée.

Cette capacité de détection préventive améliore considérablement la robustesse des applications. De nombreuses erreurs susceptibles de provoquer des dysfonctionnements en production sont éliminées dès la phase de développement.

Le typage fort améliore également la maintenabilité du code. Lorsqu'un développeur consulte une fonction ou une variable, il comprend instantanément la nature des données manipulées. Cela facilite la lecture, la compréhension et l'évolution du projet.

En outre, dans le cadre d'un travail collaboratif, le typage fort agit comme une forme de documentation implicite. Les développeurs disposent immédiatement d'informations précises sur les données attendues par chaque composant du programme.

J'ai ainsi compris que le typage fort contribue directement à la stabilité globale d'une application mobile en limitant les erreurs, en améliorant la lisibilité du code et en facilitant la maintenance sur le long terme.

---

## Bilan personnel

Cette phase de finalisation du projet a constitué une étape importante dans mon apprentissage du développement mobile avec Dart. Au-delà de la réalisation fonctionnelle du calculateur, elle m'a permis de comprendre des notions fondamentales liées à la qualité du code et aux bonnes pratiques de programmation.

J'ai appris à distinguer clairement les rôles de `final` et de `const`, ainsi que les contextes dans lesquels chacun doit être utilisé. J'ai également pris conscience de l'importance du typage fort pour prévenir les erreurs et renforcer la stabilité d'une application.

Ces connaissances me seront particulièrement utiles dans mes futurs projets Flutter. Elles me permettront d'écrire un code plus propre, plus fiable et plus facile à maintenir. Cette expérience m'a également montré qu'un développeur professionnel ne doit pas uniquement chercher à produire un programme fonctionnel, mais également à concevoir un logiciel robuste, lisible et conforme aux standards de qualité attendus dans l'industrie du développement logiciel.
