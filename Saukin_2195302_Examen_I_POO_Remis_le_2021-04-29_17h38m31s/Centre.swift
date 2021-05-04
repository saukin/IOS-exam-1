class Centre : Coordonnees {
  var couleur : TypeCouleur

  init(couleur: TypeCouleur, x: Int, y: Int) {
    self.couleur = couleur
    super.init(uneAbscisse: x, uneOrdonnee: y)
  }

  convenience init() {
    self.init(couleur: .inconnue, x: 0, y: 0)
  }
//TODO: réutiliser super.description -2
  override var description : String {
    return "couleur \(self.couleur) coordonnees (\(self.getX()), \(self.getY()))"
  }

  static func créerCentreBleu() -> Centre {
    return Centre(couleur: .bleu, x: 0, y: 0)
  } 
  
  static func créerCentreRouge() -> Centre {
    return Centre(couleur: .rouge, x: -10, y: -10)
  } 
  
  static func créerCentreVert() -> Centre {
    return Centre(couleur: .vert, x: 10, y: 10)
  }

  static func equals(c1 : Centre, c2 : Centre) -> Bool {
    return c1.getX() == c2.getX() && c1.getY() == c2.getY() 
          && c1.couleur == c2.couleur
  }
}
