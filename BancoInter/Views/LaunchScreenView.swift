//
//  LaunchScreenView.swift
//  BancoInter
//
//  Created by Josué Amorim on 11/05/23.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var isActive: Bool = false
    @State private var size = 0.9
    @State private var oppacity = 0.5
    
    
    var body: some View {
        
        if isActive {
            //ContentView()
            MyTest()
        } else {
            Image("logo_inter")
                .resizable()
                .scaledToFill()
                .frame( width: 100,height: 40)
                .scaleEffect(size)
                .opacity(oppacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.oppacity = 1.0
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
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
