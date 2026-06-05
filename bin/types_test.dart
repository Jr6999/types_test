import 'dart:io';

void main(List<String> arguments) {
  /*final distance = 8.75;
  final nombreColis = 1;
  final nom = "Abdoulaye";
  final isDaytime = true;
  final heure= DateTime.now();
  const tarifJour = 200.5;
  const tarifNuit = 300.5;
  const prixColis = 150.00;

  if (nombreColis > 0) {
    print("Mr/Mme $nom,");
    if (isDaytime == true) {
      print("Le transport vous coutera: ${distance * tarifJour} FCFA");
    } else {
      print("Le transport vous coutera: ${distance * tarifNuit} FCFA");
    }
    print("Le transport de votre colis vous coutera: ${prixColis*nombreColis} FCFA");
    print("Merci pour la confiance\n $heure");
  } else {
    print("Mr/Mme $nom,");
    if (isDaytime == true) {
      print("Le transport vous coutera: ${distance * tarifJour} FCFA");
    } else {
      print("Le transport vous coutera: ${distance * tarifNuit} FCFA");
    }
    print("Merci pour la confiance\n $heure");
  }
  
*/

// Informations relatives à la date de la demande.
final heure = DateTime.now();
double coutTrajet=0 ;
double coutColis=0 ;
double total=0 ;

// Les tarifs fixes appliqués selon le moment de la journée
// ainsi que le coût unitaire du transport d'un colis.
const tarifJour = 200.5;
const tarifNuit = 300.5;
const prixColis = 150.0;

// Codes ANSI utilisés pour améliorer la lisibilité
// des messages affichés dans le terminal.
const String reset = '\x1B[0m';
const String rouge = '\x1B[31m';
const String vert = '\x1B[32m';
const String jaune = '\x1B[33m';


stdout.write("$vert --------------------Bienvenue chez HKNExpress!--------------------$reset\n");
stdout.write("Veuillez fournir les informations suivantes pour votre course:\n");

// Récupération des informations 

  stdout.write("Entrez votre nom: ");
   final nom = stdin.readLineSync()!;
  if (nom.trim().isEmpty) {
    print("$rouge Veuillez entrer votre nom $reset");
    return;
  }


stdout.write("Entrez la distance du trajet en KM: ");
final distance = double.parse(stdin.readLineSync()!);
if (distance < 0) {
  print("$rouge La distance ne peut pas être négative. $reset");
  return;
}


stdout.write("Entrez le nombre de colis à transporter: ");
final nombreColis = int.parse(stdin.readLineSync()!);
if(nombreColis < 0){
  print("$rouge Le nombre de colis ne peut pas être négatif. $reset");
  return;
}

stdout.write("Entrez le moment de la journée (jour/nuit): ");
final moment = stdin.readLineSync()!.toLowerCase();
if(moment != "jour" && moment != "nuit"){
  print("$rouge Moment de la journée invalide. Veuillez entrer 'jour' ou 'nuit'. $reset");
  return;
}

// Présentation des tarifs appliqués avant validation.
print("$jaune Le kilomètre en jour est de $tarifJour FCFA$reset");
print("$jaune Le kilomètre en nuit est de $tarifNuit FCFA$reset");
if (nombreColis > 0) {
  print("$jaune Le prix d'un colis est de $prixColis FCFA$reset");
}

// Demande de confirmation avant le traitement définitif de la course.
stdout.write(
  "Souhaitez-vous valider la course? ($vert Y/$rouge N$reset): ",
);

final validation = stdin.readLineSync()!.toLowerCase();


 if(nombreColis >0){
  coutColis=prixColis*nombreColis;
}
  // Application du tarif correspondant au moment choisi.
if(moment=="jour"){
  coutTrajet=distance*tarifJour;
}else if(moment=="nuit"){
  coutTrajet=distance*tarifNuit;
}

total=coutTrajet+coutColis;

if (validation == 'y') {
  print("$vert \n=== REÇU OFFICIEL DE LA COURSE ===\n$reset");
  print("$vert Mr/Mme $nom,$reset");
  print("$vert Votre course vous coutera: $coutTrajet FCFA$reset");
    // Facturation supplémentaire uniquement lorsqu'au moins
  // un colis est déclaré.
  if (nombreColis > 0) {
    print("$vert Le transport de votre colis vous coutera: $coutColis FCFA$reset");
  }


  print("$vert Total de la course: $total FCFA$reset");
  // Confirmation finale de la prise en charge de la course.
  print("$vert Merci pour la confiance\n $heure$reset");
} else {
  // Annulation de la course à la demande de l'utilisateur.
  print("$rouge Course annulée.$reset");
}



// Déclaration de différentes variables de types primitives
  /*int nbre = 10;
  String nom = "Codjo";
  double pi = 3.14;
  bool isTrue = true;

  print("Le nombre est: $nbre");
  print("Le nom est: $nom");
  print("La valeur de pi est: $pi");
  print("La valeur de isTrue est: $isTrue");

//inference de type
  var age = 25; 
  var message = "Hello, Dart!"; 
  var isValid = false;
  var trajet = 19.99;

  print("L'âge est: $age");
  print("Le message est: $message");
  print("La valeur de isValid est: $isValid");
  print("Le trajet est: $trajet KM");
  */
/*
//les erreurs de types
  int distanceErreur = 8.75;          
  double nombreCoursesErreur = 12;     
  String prixErreur = 2500.50;        
  bool nomErreur = "Abdoulaye";
*/
}
