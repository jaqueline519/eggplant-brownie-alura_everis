//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 11/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTexField: UITextField?
    
    //creash = quando o app fecha inesperadamente
    
    @IBAction func adicionar(_sander: Any){

        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTexField?.text {

            let nome = nomeDaRefeicao
            if let felicidade = Int (felicidadeDaRefeicao){
                let refeicao =  Refeicao( tipoDeRefeicao: nome, nivelDeFelicidade: felicidade)

                print("comi \(refeicao.nome) e fiquei com felicidade nível: \(refeicao.felicidade)")
            } else{
                print("erro ao tentar a refeição")
            }

    }

}
    
}
