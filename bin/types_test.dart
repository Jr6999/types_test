import 'dart:io';

void main(List<String> arguments) {
  /*final distance = 8.75;
  final nombreColis = 1;
  final nom = "Abdoulaye";
  final isDaytime = true;
  final heure= DateTime.now();
  const tarifJour = 500.50;
  const tarifNuit = 800.50;
  const prixColis = 1500.00;

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

  
  final nom = "Abdoulaye";
  final heure= DateTime.now();
  const tarifJour = 500.50;
  const tarifNuit = 800.50;
  const prixColis = 1500.00;

  const String reset = '\x1B[0m';  // Réinitialise la couleur par défaut
  const String rouge = '\x1B[31m';  // Pour les erreurs
  const String vert = '\x1B[32m';   // Pour le résultat final
  const String jaune = '\x1B[33m';  // Pour les questions


  stdout.write("Entrez la distance du trajet en KM: ");
  final distance = double.parse(stdin.readLineSync()!);

  stdout.write("Entrez le nombre de colis à transporter: ");
  final nombreColis = int.parse(stdin.readLineSync()!);

  stdout.write("Entrez le moment de la journée (jour/nuit): ");
  final moment = stdin.readLineSync()!.toLowerCase();
  
  print("Le kilomètre en jour est de $tarifJour FCFA");
  print("Le kilomètre en nuit est de $tarifNuit FCFA");
  print("Le prix du colis est de $prixColis FCFA");

  stdout.write("Souhaitez-vous valider la course? ($vert Y/$rouge N$reset): ");
  final validation = stdin.readLineSync()!.toLowerCase();
  if (validation == 'y') {
    print("$vert \nMr/Mme $nom,$reset");
    if (moment == 'jour') {
      print("$vert Le transport vous coutera: ${distance * tarifJour} FCFA$reset");
    } else if (moment == 'nuit') {
      print("$jaune Le transport vous coutera: ${distance * tarifNuit} FCFA$reset");
    } else {
      print("$rouge Moment de la journée invalide. Veuillez entrer 'jour' ou 'nuit'. $reset");
      return;
    }
    
    if (nombreColis > 0) {
      print("$vert Le transport de votre colis vous coutera: ${prixColis * nombreColis} FCFA $reset");
    }
    
    print("$vert Merci pour la confiance\n $heure$reset");
  } else {
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
