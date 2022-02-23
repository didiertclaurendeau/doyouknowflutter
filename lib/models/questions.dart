/* quelques idées 

  - Avoir les questions dans un serveur
  - Afficher un "RichText" pour mettre le code avec "syntax highlight"
  - Supporter plusieurs langues
  - Sauvegarder les résultats
  - Choix multiple
  - 
*/

/*
  A faire, afficher les questions aléatoirement.
*/

/*
{
    "source": "",
    "Question": """
""",
    "Choix": [
      ""
    ],
    "reponse": ,
    "point": 
    },

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
    "Choix": ["ListView", "GridView", "Container", "Center"],
    "reponse": 1,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
Un Future en Dart c'est:
""",
    "Choix": [
      "Un objet qui attend une opération synchrone et retourne un résultat",
      "Un objet qui attend une opération asynchrone et retourne un résultat",
      "Un widget qui a une forme bleue rectangulaire",
      "Un objet qui permet de recevoir une transaction http"
    ],
    "reponse": 2,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
Qu'est ce qui est exact concernant la méthode build de la class Widget
""",
    "Choix": [
      "Build sera réexecuté fréquemment pour construire l'arbre de widget",
      "Build est réexecuté constamment pour générer l'interface graphique",
      "Build permet à Flutter d'évaluer s’il doit générer l'interface"
    ],
    "reponse": 1,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
Dans un widget l'attribut keys sert à
""",
    "Choix": [
      "Activer les permissions pour afficher un Widget",
      "Permets de maintenir les listes de widget contenu dans votre widget",
      "Permet a Flutter d'identifié le widget de façon unique dans l'élément tree"
    ],
    "reponse": 3,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
La classe MediaQuery permet de....
""",
    "Choix": [
      "Mettre en place des restrictions pour les appareils mobiles",
      "Permets de récupérer des informations sur l'appareil mobile",
      "Permets de gérer les images et vidéos dans l'application"
    ],
    "reponse": 2,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
Je permets de récupérer la taille disponible pour l'affichage d'une Widget
""",
    "Choix": ["MediaQuery", "Container", "LayoutBuilder"],
    "reponse": 3,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
Cuppertino est
""",
    "Choix": [
      "Une marque de café",
      "Des widgets pour afficher des cubes",
      "Une Librairie respectant le style d'application Android",
      "Une librairie respectant le style d'application IOS"
    ],
    "reponse": 4,
    "point": 1
  },
  {
    "source": "Didier",
    "Question": """
Qu'est-ce qui est vrai avec les Widget Row et Column
""",
    "Choix": [
      "Permet de mettre des éléments qui défile en Rangé et Colonne",
      "Reçoivent une liste de Widget enfants",
      "Sont des widget qui peuvent recevoir des styles variés"
    ],
    "reponse": 2,
    "point": 1
  },
];
