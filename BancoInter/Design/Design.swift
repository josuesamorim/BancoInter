//
//  Design.swift
//  BancoInter
//
//  Created by Josué Amorim on 08/05/23.
//

import SwiftUI

struct Design {
    
    let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
    
    func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height * DrawingConstants.fontScale))
    }
}

struct DrawingConstants {
    static let cornerRadius: CGFloat = 7
    static let lineWidth: CGFloat = 0
    static let fontScale: CGFloat = 25
}


