//
//  CardContent.swift
//  BancoInter
//
//  Created by Josué Amorim on 03/05/23.
//

import Foundation


// Eh "a verdade" sobre o conteudo dos cards
struct CardContentViewModel {
    
    var imageName: String
    var cardName: String
    
 
    init(imageName: String, cardName: String) {
        self.imageName = imageName
        self.cardName = cardName
    }
    
    static var getContents: Array<CardContentViewModel>  {
        return CardContentViewModel.contents
    }
    
    static private let contents: Array<CardContentViewModel> = [
      CardContentViewModel(imageName: "creditcard", cardName: "Cartōes"),
      CardContentViewModel(imageName: "newspaper", cardName: "Depósito por boleto"),
      CardContentViewModel(imageName: "banknote", cardName: "Antecipação de FGTS"),
      CardContentViewModel(imageName: "gift", cardName: "Indique e Ganhe"),
      CardContentViewModel(imageName: "dollarsign.square", cardName: "Depósito por cheque"),
      CardContentViewModel(imageName: "iphone.gen1.radiowaves.left.and.right", cardName: "Inter Cel"),
      CardContentViewModel(imageName: "iphone", cardName: "Recarga"),
      CardContentViewModel(imageName: "app.gift", cardName: "Gift Card"),
      CardContentViewModel(imageName: "dollarsign.arrow.circlepath", cardName: "Empréstimo"),
      CardContentViewModel(imageName: "house", cardName: "Financiamento Imobiliário"),
      CardContentViewModel(imageName: "key", cardName: "Consórcio"),
      CardContentViewModel(imageName: "person.2", cardName: "Negociação de dívidas"),
      CardContentViewModel(imageName: "umbrella", cardName: "Seguros"),
      CardContentViewModel(imageName: "banknote", cardName: "Previdência Privada"),
      CardContentViewModel(imageName: "bolt.heart", cardName: "Planos de saúde"),
      CardContentViewModel(imageName: "dollarsign.arrow.circlepath", cardName: "Câmbio"),
      CardContentViewModel(imageName: "newspaper", cardName: "Portabilidade de salário"),
      CardContentViewModel(imageName: "chart.pie.fill", cardName: "Open finance"),
      CardContentViewModel(imageName: "dollarsign.circle", cardName: "Poupança"),
      CardContentViewModel(imageName: "calendar.badge.clock", cardName: "Débito automático"),
      CardContentViewModel(imageName: "person", cardName: "Abrir Conta Inter Empresas"),
      CardContentViewModel(imageName: "dollarsign.arrow.circlepath", cardName: "Cashback"),
      CardContentViewModel(imageName: "platter.filled.top.applewatch.case", cardName: "Maquininha"),
      CardContentViewModel(imageName: "creditcard.circle", cardName: "Interpass")
    ]
    
}





