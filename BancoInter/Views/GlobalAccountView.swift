//
//  GlobalAccountView.swift
//  BancoInter
//
//  Created by Josué Amorim on 12/05/23.
//

import SwiftUI

struct GlobalAccountView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        ScrollView {
            //MARK: - Cards Grid
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(viewModel.getAllGlobalViewCards, id: \.id) {
                    card in
                    CardView(systemImageName: card.imageName, cardName: card.cardName)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct GlobalAccountView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalAccountView()
    }
}
