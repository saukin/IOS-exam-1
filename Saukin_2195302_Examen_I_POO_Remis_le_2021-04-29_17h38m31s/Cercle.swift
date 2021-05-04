class Cercle {
  var monCentre = Centre() {
    willSet {
      print("on modifie le centre du cercle...")
      print("On deplace le cercle vers le centre \(newValue.description)")
    } 
    didSet {
        //TODO: excellent
      if (!Centre.equals(c1: oldValue, c2: monCentre)) {
        let diffX = monCentre.getX() - oldValue.getX()
        let diffY = monCentre.getY() - oldValue.getY()
        if (diffX != 0) {
          print("Deplacement en X de \(diffX)") 
        }
        if (diffY != 0) {
          print("Deplacement en Y de \(diffY)")
        }
      } else {
        print("Fausse alerte. le centre n'a pas bouge")
      }
    }
  }
  var rayon = 1.0

  var description : String {
    return "\(self.monCentre.description) rayon \(self.rayon)"
  }

  func calculerAire() -> Double {
    let aire : Double = Double.pi * self.rayon * self.rayon
    return aire
  } 
  
  var perimetre : Double {
    get {
      let perimetre : Double = 2 * Double.pi * self.rayon
      return perimetre
    }
    set {
      self.rayon = newValue / (2 * Double.pi)
    }
  }

}
