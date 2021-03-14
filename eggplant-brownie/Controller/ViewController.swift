//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 11/03/21.
//

import UIKit

protocol viewControllerDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    var delegate: viewControllerDelegate?

    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    //creash = quando o app fecha inesperadamente
    
    @IBAction func adicionar(_sander: Any){
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
                    return
                }

                guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
                    return
                }

                let refeicao = Refeicao(tipoDeRefeicao: nomeDaRefeicao, nivelDeFelicidade: felicidade)

                print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")

        delegate?.add(refeicao)
                navigationController?.popViewController(animated: true)

            }
        }
