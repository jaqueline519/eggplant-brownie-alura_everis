//
//  RefecoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 13/03/21.
//
import UIKit

class RefeicoesTableViewController: UITableViewController {

    let refeicoes = [Refeicao(tipoDeRefeicao: "Pão", nivelDeFelicidade: 1), Refeicao(tipoDeRefeicao: "Iogurte", nivelDeFelicidade: 5), Refeicao(tipoDeRefeicao: "Laranja", nivelDeFelicidade: 3)]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome

        return celula
 
    }
    
}