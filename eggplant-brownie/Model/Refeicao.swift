//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 13/03/21.
//

import UIKit

class Refeicao: NSObject {
    var nome: String
    var felicidade: Int
    var itens: Array<Item> = []

    init(tipoDeRefeicao: String, nivelDeFelicidade: Int) {
        self.nome = tipoDeRefeicao
        self.felicidade = nivelDeFelicidade

    func totalDeCalorias() -> Double {
        var total = 0.0

        for item in itens {
            total += item.calorias
        }

        return total
    }
}
}
