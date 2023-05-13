//
//  Balance.swift
//  BancoInter
//
//  Created by Josué Amorim on 08/05/23.
//

import SwiftUI

struct BalanceView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        HStack {
            if !viewModel.isTextOnScreen {
                Text(viewModel.getBalance)
                    .bold()
                    .font(.title)
                    .padding(.leading)
            } else {
                Text("--")
                    .bold()
                    .font(.title)
                    .padding(.leading)
            }
            
            Button {
                viewModel.isTextOnScreen.toggle()
            } label: {
                Image(systemName: "eye")
                    .foregroundColor(.orange)
                    .font(.body.bold())
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Text("Ver extrato")
            .font(.subheadline)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .padding(.vertical, 1)
            .foregroundColor(.orange)
        
    }
}

struct Balance_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}
