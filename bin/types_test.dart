import 'package:types_test/types_test.dart' as types_test;

void main(List<String> arguments) {

// Déclaration de différentes variables de types primitives
  int nbre = 10;
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
/*
//les erreurs de types
  int distanceErreur = 8.75;          
  double nombreCoursesErreur = 12;     
  String prixErreur = 2500.50;        
  bool nomErreur = "Abdoulaye";
*/
}
