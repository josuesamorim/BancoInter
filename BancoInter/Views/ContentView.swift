//
//  ContentView.swift
//  BancoInter
//
//  Created by Josué Amorim on 29/04/23.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        
       
            ScrollView {
                
                //MARK: - Header
                HeaderView()
                
                //MARK: - Balance and statement balance
                //BalanceView()
                
                //MARK: - Cards Grid
                CardGridView()
                
                //MARK: - Horizontal Marketing Cards
                HorizontalMarketingCardView(imageName: "dia_maes", text: "Inter Shop")
                HorizontalMarketingCardView(imageName: "global_account", text: "Global Account")
                
                //MARK: - Two Cards in a Hstack
                HStack(alignment: .center, spacing: 10) {
                    SplitHorizontalMarketCardView(imageName: "fgts", text: "Antecipação de FGTS")
                    SplitHorizontalMarketCardView(imageName: "nutri", text: "Telemedicina")
                }
            }
            .background(Color.interBackground)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
