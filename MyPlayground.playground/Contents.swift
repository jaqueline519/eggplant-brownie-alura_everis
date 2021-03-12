import UIKit

//primeira refeição
var nomeAlimento = "Maçã"
var felicidade: String = "5"

//segunda refeição

let nomeAlimento1: String = "Banana"
let felicidade2: String = "4"

//----------------------------------

// A solução para agrupar as caracteristicas é criar uma classe

class Refeicao {
    var nomeAlimento: String = "Maçã"
    let felicidade: String = "5"
}
//instanciar a classe

let refeição = Refeicao()

print(refeição.nomeAlimento)

class Refeicao2 {
    var nome: String = "Laranja"
    var felicidade: String = "4"
}

var refeicao2 = Refeicao2()

print(refeicao2.nome)
