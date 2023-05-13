//
//  ViewModel.swift
//  BancoInter
//
//  Created by Josué Amorim on 30/04/23.
//

import Foundation


//Eh responsavel por vincular os models as views
class ViewModel: ObservableObject {
    
    init(){
        createContentViewCards()
        createGlobalAccountCards()
    }
    
    @Published var isTextOnScreen: Bool = false
    @Published var isChevronTouched: Bool = false
    @Published var isBRSelected: Bool = true
    @Published var isUSSelected: Bool = false
    @Published var balance = "R$ 8,62"
    
    private var cards: [Cards] = []
    private var globalCards: [Cards] = []
    
    var getBalance: String {
        return balance
    }
    
    var getAllContentViewCards: [Cards] {
        return cards
    }
    
    var getAllGlobalViewCards: [Cards] {
        return globalCards
    }
    
    struct Cards: Identifiable, Hashable {
        var id: Int
        var imageName: String
        var cardName: String
    }
    
    
    func createContentViewCards() {
        let content = CardContentViewModel.getContents
        
        for index in 0..<content.count{
            cards.append(Cards(id: index, imageName: content[index].imageName, cardName: content[index].cardName))
        }
    }
    
    func createGlobalAccountCards() {
        let content = CardGlobalAccountViewModel.getContents
        
        for index in 0..<content.count{
            globalCards.append(Cards(id: index, imageName: content[index].image, cardName: content[index].cardName))
        }
    }
    
}


    
    
    
    
   
    
    
    
    

