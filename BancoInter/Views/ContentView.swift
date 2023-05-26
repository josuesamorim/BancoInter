//
//  ContentView.swift
//  BancoInter
//
//  Created by Josué Amorim on 29/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    @State private var isShowingGlobalAccountView = false
    @State private var isBrazilSelected: Bool = true
    @State private var isUSSelected: Bool = false
    
    var body: some View {
        ScrollView {
            headerView
            balanceView
            accountView
        }
    }
    
    private var headerView: some View {
        HeaderView(isBRSelected: $isBrazilSelected, isUSSelected: $isUSSelected)
    }
    
    private var balanceView: some View {
        BalanceView(isBrazilSelected: $isBrazilSelected, isUSSelected: $isUSSelected)
    }
    
    private var accountView: some View {
        Group {
            if isBrazilSelected {
                BRAccountView()
            } else if isUSSelected {
                GlobalAccountView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
