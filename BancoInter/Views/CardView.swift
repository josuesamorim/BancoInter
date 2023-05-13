//
//  Cards.swift
//  BancoInter
//
//  Created by Josué Amorim on 29/04/23.
//

import SwiftUI


struct CardView: View {
    
    var imageName: String
    var cardName: String
    private let shape = Design().shape
    
    var body: some View {
        
            ZStack {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    shape.stroke(Color("inter_gray"))
                    
               
                    VStack {
                        Image(systemName: imageName)
                            .font(.system(size: DrawingConstants.fontScale))
                            .foregroundColor(.orange)
                            .padding(.bottom)
                        Text(cardName)
                            .font(.caption)
                            .bold()
                            
                    }
            }
            .frame(width: 115, height: 110, alignment: .center)
            
            //.padding()
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "person", cardName: "Abrir Conta Inter Empresas")
    }
}
