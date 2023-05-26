//
//  CardGrid.swift
//  BancoInter
//
//  Created by Josué Amorim on 08/05/23.
//

import SwiftUI

struct CardGridView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    private var maxVisibleCards = 6
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(viewModel.isChevronTouched ? viewModel.getAllContentViewCards : Array(viewModel.getAllContentViewCards.prefix(maxVisibleCards)), id: \.id) { card in
                    CardView(systemImageName: card.imageName, cardName: card.cardName)
                }
            }
            .padding(.horizontal)
            
            Button(action: {
                viewModel.isChevronTouched.toggle()
            }) {
                if !viewModel.isChevronTouched {
                    Image(systemName: "chevron.compact.down")
                        .font(.system(size: 40))
                        .foregroundColor(.orange)
                } else {
                    Image(systemName: "chevron.compact.down")
                        .rotationEffect(.degrees(-180))
                        .font(.system(size: 40))
                        .foregroundColor(.orange)
                }
            }
            .padding()
        }
    }
}

struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        CardGridView()
    }
}
