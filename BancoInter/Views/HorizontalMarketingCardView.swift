//
//  HorizontalMarketingCard.swift
//  BancoInter
//
//  Created by Josué Amorim on 30/04/23.
//

import SwiftUI

struct HorizontalMarketingCardView: View {
    
    private var imageName: String
    private var text: String
    private let shape = Design().shape
    
    init(imageName: String, text: String){
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
                
                VStack(alignment: .center){
                    Image(imageName)
                        .resizable()
                        .frame(width: 346, height: 99)
                        .padding(.top, 10)
                    
                    Text(text)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 25)
                        .padding(.top)
                        .padding(.bottom)
                        .font(.body.bold())
                }
            }
            .padding(25)
            .frame(width: 100, height: 180, alignment: .center)
        }
        .frame(maxWidth: .infinity)
        .background(Color(.white))
    }
}

struct HorizontalMarketingCard_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalMarketingCardView(imageName: "dia_maes", text: "Inter Shop")
    }
}
