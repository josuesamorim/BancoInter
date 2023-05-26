//
//  BRAccountView.swift
//  BancoInter
//
//  Created by Josué Amorim on 20/05/23.
//

import SwiftUI

struct BRAccountView: View {
    var body: some View {
        ScrollView {
            // Cards Grid
            CardGridView()
            
            // Horizontal Marketing Cards
            HorizontalMarketingCardView(imageName: "dia_maes", text: "Inter Shop")
            HorizontalMarketingCardView(imageName: "global_account", text: "Global Account")
            
            // Two Cards in a HStack
            HStack(alignment: .center, spacing: 10) {
                SplitHorizontalMarketCardView(imageName: "fgts", text: "Antecipação de FGTS")
                SplitHorizontalMarketCardView(imageName: "nutri", text: "Telemedicina")
            }
        }
    }
}

struct BRAccountView_Previews: PreviewProvider {
    static var previews: some View {
        BRAccountView()
    }
}
