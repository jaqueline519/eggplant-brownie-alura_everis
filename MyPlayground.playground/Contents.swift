import UIKit

var nome = "maçã"
let felicidade = 5
let calorias: Double = 79.5

let vegetal: Bool = false


var endereco = "Uberlandia"

//
//func alimentoConsumido(){
//    print("o alimento consumido foi: \(nome)")
//}
//alimentoConsumido()
//alimentoConsumido()

func alimentoConsumido(_ nome: String, _ calorias: Double, _ felicidade: Int){
    print("o alimento consumido foi \(nome), com: \(calorias) calorias e a felicidade foi nível \(felicidade)")
}

 alimentoConsumido(nome, calorias, felicidade)
