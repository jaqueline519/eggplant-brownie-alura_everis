//
//  ViewController.swift
//  eggplant-brownie-alura-everis
//
//  Created by Jaqueline Bittencourt Santos on 11/03/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AdicionaItensDelegate{
    
    //MARK: - IBOutlet
    
    
    @IBOutlet weak var itensTableView: UITableView!
    
    // MARK: - ATRIBUTOS
    
    var delegate: AdicionaRefeicaoDelegate?

    var itens: [Item] = [Item(nome: "Tomate", calorias: 30.5), Item(nome: "Molho de Tomate", calorias: 50.0), Item(nome: "Molho Parmesão", calorias: 50.0), Item(nome: "Molho de pimenta", calorias: 40.0)]
    
    var itensSelecionados: [Item] = []
    
    // MARK: -IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    // MARK: - ciclo de vida da View
    
    override func viewDidLoad(){
        let botaoAdicionarItem = UIBarButtonItem(title: "adicionar", style: .plain, target: self , action: #selector(adicionarItens) )
        navigationItem.rightBarButtonItem = botaoAdicionarItem
        
    }
    
    @objc func adicionarItens() {
        let adicionarItensViewController = AdicionarItensViewController(delegate: self)
        //navegar para a próxima tela: navigationController.push()
        navigationController?.pushViewController(adicionarItensViewController, animated: true)
    }
    func add(_ item: Item) {
        itens.append(item)
        itensTableView.reloadData()
    }
    
    
    // MARK: - UITableViewDataSource
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itens.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let celula = UITableViewCell( style: .default, reuseIdentifier: nil)
    
    let linhaDaTabela = indexPath.row
    let item = itens[linhaDaTabela]
    celula.textLabel?.text = item.nome
    
    return celula
}
    //MARK -UITableViewDelegate
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            guard let celula = tableView.cellForRow(at: indexPath) else { return }

            if celula.accessoryType ==  .none {
                celula.accessoryType = .checkmark
                
                let linhaDaTabela = indexPath.row
                itensSelecionados.append(itens[linhaDaTabela])
                
            } else {
                celula.accessoryType = .none
                
                let item = itens[indexPath.row]
                if let position = itensSelecionados.firstIndex(of: item) {
                    itensSelecionados.remove(at: position)
                }
            }
        }
    
    // MARK: - IBActions
    
    @IBAction func adicionar(_sander: Any){
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
                    return
                }

                guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
                    return
                }

                let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        delegate?.add(refeicao)
                navigationController?.popViewController(animated: true)

            }
        }
