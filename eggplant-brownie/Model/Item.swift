//
//  Item.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 13/03/21.
//
import UIKit

class Item: NSObject, NSCoding {

    var nome: String
    var calorias: Double

    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
    // MARK -NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "Nome")
        aCoder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "Nome") as! String
        calorias = aDecoder.decodeDouble(forKey: "Calorias")
    }
    
}
