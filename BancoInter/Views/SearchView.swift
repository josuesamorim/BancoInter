//
//  SearchView.swift
//  BancoInter
//
//  Created by Josué Amorim on 01/05/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    @Environment(\.dismiss) var dismiss
    private let shape = Design().shape
    
    var body: some View {
        
        ScrollView {
            
            //MARK: - Header
            HStack {
                
                Spacer()
                
                Text("Busca")
                    .bold()
                    .foregroundColor(.black)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.orange)
                        .font(.system(size: 25))
                }
            }
            
            //MARK: - Search Box
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.orange)
                    .padding(.trailing)
                
                TextField("Pesquisar no inter", text: $searchText)
                    .font(.body.bold())
                    .foregroundColor(Color("inter_bold"))
            }
            .frame(height: 60, alignment: .center)
            .padding(.horizontal)
            .background(Color.interBackground)
        }
        .padding()
        
        
        //MARK: - Divider
        Divider()
            .padding(.top)
    }
    
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
