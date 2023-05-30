//
//  Cards.swift
//  BancoInter
//
//  Created by Josué Amorim on 29/04/23.
//

import SwiftUI


struct CardView: View {
    
    var systemImageName: String
    var cardName: String
    private let shape = Design().shape
    
    var body: some View {
        ZStack {
            shape.fill()
                .foregroundColor(.white)
            shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
            shape.stroke(Color("inter_gray"))
            
            VStack {
                Image(systemName: systemImageName)
                    .font(.system(size: DrawingConstants.fontScale))
                    .foregroundColor(.orange)
                    .padding(.bottom)
                
                Text(cardName)
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
            }
        }
        .frame(width: 115, height: 110, alignment: .center)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(systemImageName: "person", cardName: "Abrir Conta Inter Empresas")
    }
}
