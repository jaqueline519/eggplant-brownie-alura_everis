//
//  Item.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 13/03/21.
//
import UIKit

class Item: NSObject {
    var nome: String
    var calorias: Double

    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
