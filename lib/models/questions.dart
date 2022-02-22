/* Quelques idees 

  - Avoir les questions dans un serveur
  - Afficher un "RichText" pour mettre le code avec "syntax highlight"
  - Supporter plusieur langues
  - Sauvegarder les resultats
  - Choix Multiple
  - 
*/

/*
  A faire, afficher les questions aleatoirement.
*/

/*
    "source": "",
    "Question": """
""",
    "Choix": [
      ""
    ],
    "reponse": ,
    "point": 
*/


const listeDeQuestions = [
  {
    "source": "Jeremy",
    "Question": """
Que veulent dire les crochets dans la signature de la fonction suivante?

Dart
printName(String name, {String? lastName}){
  // ...
}
""",
    "Choix": [
      "Le paramètre lastName est un paramètre nommé obligatoire",
      "Le paramètre lastName est un paramètre nommé facultatif",
      "Le paramètre lastName est un paramètre positionnel obligatoire",
      "Le paramètre lastName est un paramètre positionnel facultatif"
    ],
    "reponse": 4,
    "point": 1
  },
  {
    "source": "Yan",
    "Question": """
quels sont les composants coulissants?
""",
    "Choix": [
      "ListView",
      "GridView",
      "Container",
      "Center"
    ],
    "reponse": 1,
    "point": 1
  }
];