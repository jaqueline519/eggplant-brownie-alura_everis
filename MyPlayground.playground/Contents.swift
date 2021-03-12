import UIKit

class Refeicao {
    var nomeAlimento: String?
    var felicidade: String?
}
//instanciar a classe

let refeicao = Refeicao()
refeicao.nomeAlimento = "Banana"

//cuidado com o forced unwrap

/*forma de verificar se o valor opcional é nulo ( esta forma não costuma ser utilizada"
 */

if refeicao.nomeAlimento != nil {
 
 print(refeicao.nomeAlimento!)
}


//Boas práticas para extrair valores opcionais:

if let nome = refeicao.nomeAlimento {
     print(nome)
}

//guard let (maneira mais utilizada)

func exibNomeDaRefeicao() {
    if let nome = refeicao.nomeAlimento{
        print(nome)
    }
    guard  let nome1 = refeicao.nomeAlimento else {
        return
    }
    print(nome1)
}

exibNomeDaRefeicao()

