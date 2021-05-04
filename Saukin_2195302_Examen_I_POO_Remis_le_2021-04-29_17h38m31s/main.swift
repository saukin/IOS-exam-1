//TODO: 100/100
/*
 1) Coordonnees 20/20    ok
 2) Centre 20/20
 3) Méthodes de classes 5/5    ok
 4) Initialiseur pratique 5/5
 5) Cercle 30/30
 6) Observeurs 10/10    ok
 7) Fonction saisie 10/10    ok

 */
import Foundation
/*
1) Créer une classe Coordonnees avec 2 propriétés de type Int abscisse et ordonnee
a. Définir un initialiseur en utilisant les arguments uneAbscisse et uneOrdonnee
b. Implémenter une propriété calculée en lecture seule « description » de type String qui retourne une description des propriétés de la classe (voir l’exemple d’exécution)
*/
var objectArray = [Any?]()

let unPoint = Coordonnees(uneAbscisse: 10, uneOrdonnee: 10)
objectArray.append(unPoint)
print("1) Voici un point;", unPoint.description)
/*
2) Créer une classe Centre qui hérite de la classe Coordonnees avec une propriété couleur de type TypeCouleur 
a. TypeCouleur est une énumération avec 4 valeurs (inconnue, bleu, vert et rouge)
b. Surdéfinissez la propriété description
*/
let unCentre = Centre(couleur: .rouge, x: 20, y: 20)
objectArray.append(unCentre)
print("2) Voici un centre;", unCentre.description)

/* 3) Ajouter à la classe Centre, 3 méthodes de classe ; créerCentreBleu(), créerCentreRouge() et créerCentreVert() qui permettent de créer une instance de Centre de la bonne couleur ;un centre bleu aux coordonnées (0,0) un vert aux coordonnées (10, 10) et un rouge aux coordonnées (-10,-10)
*/
let unCentreBleu = Centre.créerCentreBleu()
print("3) Voici un centre bleu;", unCentreBleu.description)
let unCentreVert = Centre.créerCentreVert()
print("Voici un centre vert;", unCentreVert.description)
let unCentreRouge = Centre.créerCentreRouge()
print("Voici un centre rouge;", unCentreRouge.description)
objectArray.append(unCentreBleu)
objectArray.append(unCentreVert)
objectArray.append(unCentreRouge)

/* 4) Ajouter un initialiseur pratique permettant d'utiliser un constructeur par défaut (sans paramètre) qui permet de créer une instance de Centre de couleur inconnue aux coordonnées (0,0) 
*/
let unSecondCentre = Centre()
print("4) Voici un centre créé par un constructeur par défaut;", unSecondCentre.description)
objectArray.append(unSecondCentre)

/*
5) Créer une classe Cercle avec 2 propriétés; "monCentre" de type Centre et "rayon" de type Double 
a. Données des valeurs par défaut à ces 2 propriétés (voir l’exemple d’exécution)
b. Implémenter une propriété calculée en lecture seule « description » de type String qui retourne une description des propriétés de la classe (voir l’exemple d’exécution)
c. implémenter une méthode calculerAire qui retourne la surface du cercle ( Double.pi * rayon * rayon)
d. Implémenter une propriété calculée « perimetre » qui retourne la circonférence du cercle (2 * Double.pi * rayon) et permet d’ajuster le rayon en conséquence.
*/
let unCercle = Cercle()
print("5) Voici un cercle;", unCercle.description)
// print(unCercle.calculerAire())
print(String(format: "L'aire du cercle est %.2f", unCercle.calculerAire()))
// print(unCercle.perimetre)
print(String(format: "Le périmètre du cercle est %.2f", unCercle.perimetre))
unCercle.perimetre = 13
// print("Le rayon ajusté au périmètre \(unCercle.perimetre) est = \(unCercle.rayon)")
print("Le rayon ajusté au périmètre \(String(format: "%.0f", unCercle.perimetre)) est = \(String(format: "%.0f", unCercle.rayon))")
objectArray.append(unCercle)
/*
6) Observez la propriété centre du cercle. Avant sa modification, faites afficher la phrase : "on modifie le centre du cercle...". Après sa modification, indiquez si le centre à vraiment bouger et de quelle distance en x et en y (voir l’exemple d’exécution).
*/
print("6) Déplacement du cercle")
unCercle.monCentre = unCentreVert
unCercle.monCentre = unCentreRouge
unCercle.monCentre = unCentreRouge
print(type(of: unCercle))

/*
7) Créez une fonction qui permet de saisir un choix de couleur par la console (voir l’exemple d’exécution)
a. Indiquez à l'usager de recommencer tant que l'indice de couleur choisie n'est pas un TypeCouleur bleu vert ou rouge (vous pouvez utiliser un switch pour convertir un Int en TypeCouleur) 
b. créer un autre centre correspondant à la couleur choisie et aux coordonnées (30,30)
*/

print("7) Saisie d'une couleur")
var couleurChoisie : TypeCouleur = saisie()
var unAutreCentre = Centre(couleur: couleurChoisie, x: 30, y: 30)
print("Voici l'autre centre;", unAutreCentre.description)
objectArray.append(unAutreCentre)

/*
8) Créez un tableau contenant toutes les instances d'objet créés dans ce fichier (y compris la couleur choisie)
Parcourez le tableau et afficher 2 informations pour chaque élément; 
a. la description de l'élément s'il s'agit d'une coordonnée, d'un centre ou d'un cercle ou sinon, simplement la valeur de l'élément pour la couleur choisie  
b. le type de l'élément (utiliser type(of:))
*/
print("8) Tableu")
for item in objectArray {
  if let obj = item {
    if let i = obj as? Cercle {
      print(type(of: i), i.description)
    } else if let i = obj as? Centre {
      print(type(of: i), i.description)
    } else if let i = obj as? Coordonnees {
      print(type(of: i), i.description)
    }
  }
}
// print("8) Tableau c'est à vous de compléter le code du main avec un tableau")

/*
9) Modifier votre code pour que les propriétés x et y soient privées. Retestez votre code car vous devrez fort probablement ajouter des méthodes pour que votre Cercle puisse toujours calculez des distances sans avoir accès aux coordonnées du centre directement. 
*/
print("9) Hello from getX() and getY()")
for item in objectArray {
  if let obj = item {
    if let i = obj as? Cercle {
      print(type(of: i), ", mes coordonnees sont: x: \(i.monCentre.getX()), y: \(i.monCentre.getY())")
    } else if let i = obj as? Centre {
      print(type(of: i), ", mes coordonnees sont: x: \(i.getX()), y: \(i.getY())")
    } else if let i = obj as? Coordonnees {
      print(type(of: i), ", mes coordonnees sont: x: \(i.getX()), y: \(i.getY())")
    }
  }
}
