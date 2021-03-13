//
//  Item.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 13/03/21.
//
import UIKit

class Item: NSObject {
    var item: String
    var calorias: Double

    init(nomeDoItem: String, qtdDeCalorias: Double) {
        self.item = nomeDoItem
        self.calorias = qtdDeCalorias
    }
}
