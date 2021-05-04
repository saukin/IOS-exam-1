let couleurs : [Int : TypeCouleur] = [
  1 : .bleu, 
  2 : .vert,
  3 : .rouge
]

let prompt = "Entrez un indice de couleur entre 1 et 3\nCouleur? (1=.bleu, 2=.vert, 3=.rouge)"

var inp : Int?

func saisie() -> TypeCouleur {
  repeat {
    print(prompt);
    inp = Int(readLine()!);
  } while(!isGood(val: inp))
  // var centre : Centre
  if let color = couleurs[inp!] {
    return color
  } else {
    return .inconnue
  }
}

func isGood(val: Int?) -> Bool {
  return (val != nil && 0 < val! && val! < 4)
}