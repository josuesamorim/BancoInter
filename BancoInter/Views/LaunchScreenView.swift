//
//  LaunchScreenView.swift
//  BancoInter
//
//  Created by Josué Amorim on 11/05/23.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var isActive: Bool = false
    @State private var scale: CGFloat = 0.9
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                Image("logo_inter")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 40)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2).delay(0.5)) {
                            scale = 1.0
                            opacity = 1.0
                        }
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    isActive = true
                }
            }
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}

