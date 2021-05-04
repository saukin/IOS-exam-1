class Coordonnees {
  private var abscisse : Int
  private var ordonnee : Int

  init(uneAbscisse: Int, uneOrdonnee: Int) {
    self.abscisse = uneAbscisse
    self.ordonnee = uneOrdonnee
  }

  var description : String {
    return "coordonnees (\(self.abscisse), \(self.ordonnee))"
  }

  func getX() -> Int {
    return abscisse;
  }

  func getY() -> Int {
    return ordonnee;
  }

}