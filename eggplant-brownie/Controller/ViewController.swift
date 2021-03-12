//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Jaqueline Bittencourt Santos on 11/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet weak var felicidadeTexField: UITextField!
    
    //creash = quando o app fecha inesperadamente
    
    @IBAction func adicionar(_sander: Any){
        let nome = nomeTextField.text
        let felicidade = felicidadeTexField.text
        print("comi \(nome) e fiquei com felicidade: \(felicidade)")
    }


}
