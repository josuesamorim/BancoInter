//
//  SplitHorizontalMarketCard.swift
//  BancoInter
//
//  Created by Josué Amorim on 30/04/23.
//

import SwiftUI

struct SplitHorizontalMarketCardView: View {
    
    private var imageName: String
    private var text: String
    private let shape = Design().shape
    
    init(imageName: String, text: String) {
        self.imageName = imageName
        self.text = text
    }
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                shape.stroke(Color("inter_gray"))
                
                VStack{
                    Image(imageName)
                        .resizable()
                        .padding(.top, 10)
                    
                    Text(text)
                        .padding(.top)
                        .padding(.bottom)
                        .font(.body.bold())
                        .font(.caption)
                }
            }
            .frame(width: 170, height: 193, alignment: .center)
        }
    }
}

struct SplitHorizontalMarketCard_Previews: PreviewProvider {
    static var previews: some View {
        SplitHorizontalMarketCardView(imageName: "fgts", text: "Antecipação de FGTS")
    }
}
