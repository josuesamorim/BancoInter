//
//  ViewModel.swift
//  BancoInter
//
//  Created by Josué Amorim on 30/04/23.
//

import Foundation
import SwiftUI


//Eh responsavel por vincular os models as views
class ViewModel: ObservableObject {
    
    init(){
        createContentViewCards()
        createGlobalAccountCards()
        createSettingList()
    }
    
    @Published var isTextOnScreen: Bool = false
    @Published var isChevronTouched: Bool = false
    @Published var isBRSelected: Bool = true
    @Published var isUSSelected: Bool = false
    @Published var brlBalance = "R$ 8,62"
    @Published var usdBalance = "US$ 19,20"
    
    private var cards: [Cards] = []
    private var globalCards: [Cards] = []
    private var settingList: [SettingList] = []
    
    var getBRLBalance: String {
        return brlBalance
    }
    
    var getUSDBalance: String {
        return usdBalance
    }
    
    var getAllContentViewCards: [Cards] {
        return cards
    }
    
    var getAllGlobalViewCards: [Cards] {
        return globalCards
    }
    
    var getSettingList: [SettingList] {
        return settingList
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
    
    func createSettingList() {
        let list = SettingsList.getSettings
       
        
        for index in 0..<list.count {
            settingList.append(SettingList(id: index, imageName: list[index].settingImage, cardName: list[index].settingName, color: list[index].color))
        }
        
       
    }
    
}


    
    
    
    
   
    
    
    
    

