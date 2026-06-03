void main(List<String> arguments) {
  final distance = 8.75;
  final nombreColis = 1;
  final nom = "Abdoulaye";
  final heure= DateTime.now();
  const prix = 2500.50;
  const prixColis = 1500.00;

  if (nombreColis > 0) {
    print("Mr/Mme $nom,");
    print("Le transport vous coutera: ${distance * prix} FCFA");
    print("Le transport de votre colis vous coutera: ${prixColis*nombreColis} FCFA");
    print("Merci pour la confiance\n $heure");
  } else {
    print("Mr/Mme $nom,");
    print("Le transport vous coutera: ${distance * prix} FCFA");
    print("Merci pour la confiance\n $heure");
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
