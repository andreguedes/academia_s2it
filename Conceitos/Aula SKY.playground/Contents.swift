//: Playground - noun: a place where people can play

import UIKit

class Pessoa {
    var nome: String?
    var sobrenome: String?
    var idade: String?
    
    init(nome: String?, sobrenome: String?, idade: String?) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
    }
    
    func loadCurrentPessos(pessoa: Pessoa?) -> Pessoa? {
        guard let value = pessoa else {
            return nil
        }
        return value
    }
}

var pessoa1 = Pessoa(nome: "André", sobrenome: "Guedes", idade: "29")

var pessoa2: Pessoa?
var pessoa3: Pessoa?

if let value = pessoa2 {
    pessoa3 = value
}

enum Pergunta: String {
    case p1 = "Qual o seu nome?"
    case p2 = "Qual o seu sobrenome?"
    case p3 = "Qual a sua idade?"
}

