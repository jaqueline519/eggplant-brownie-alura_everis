//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 13/03/21.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    let nome: String
    let felicidade: Int
    var itens: Array<Item> = []

    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    //MARK: -NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "Nome")
        aCoder.encode(felicidade, forKey: "Felicidade")
        aCoder.encode(itens, forKey: "Itens")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "Nome") as! String
        felicidade = aDecoder.decodeInteger(forKey: "Felicidade")
        itens = aDecoder.decodeObject(forKey: "Itens") as! Array<Item>
        
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0

        for item in itens {
            total += item.calorias
        }

        return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        
        return mensagem
}
}
