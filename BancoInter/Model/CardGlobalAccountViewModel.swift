//
//  CardGlobalAccountViewModel.swift
//  BancoInter
//
//  Created by Josué Amorim on 12/05/23.
//

import Foundation

struct CardGlobalAccountViewModel {
    var image: String
    var cardName: String
    
    init(image: String, cardName: String) {
        self.image = image
        self.cardName = cardName
    }
    
     static var getContents: Array<CardGlobalAccountViewModel> {
        return CardGlobalAccountViewModel.contents
    }
    
    static  let contents: Array<CardGlobalAccountViewModel> = [
    CardGlobalAccountViewModel(image: "dollarsign.arrow.circlepath", cardName: "Carregar"),
    CardGlobalAccountViewModel(image: "creditcard", cardName: "Cartōes"),
    CardGlobalAccountViewModel(image: "chart.line.uptrend.xyaxis", cardName: "Investir"),
    CardGlobalAccountViewModel(image: "arrow.up.square", cardName: "Transferir"),
    CardGlobalAccountViewModel(image: "gift", cardName: "Gift Card"),
    CardGlobalAccountViewModel(image: "dollarsign.square", cardName: "Dados bancários")
    ]
}
