//
//  Header.swift
//  BancoInter
//
//  Created by Josué Amorim on 29/04/23.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var isSearching: Bool = false
    @ObservedObject private var viewModel = ViewModel()
    private let shape = Design().shape
    
    var body: some View {
        HStack(alignment: .center) {
            
            //MARK: - Logo
            Image("logo_inter")
                .resizable()
                .frame(width: 84, height: 25)
            
            //MARK: - Account Selector
            accountSelector()
            
            Spacer()
            
            //MARK: - Search
            HStack {
                Button {
                    isSearching.toggle()
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                .sheet(isPresented: $isSearching) {
                    NavigationView {
                        SearchView()
                    }
                }
                
                //MARK: - Settings
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(-90))
            }
            .font(.system(size: 20))
            .foregroundColor(.orange)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        
    }
   
    //MARK: - Account Selectector Func
    func accountSelector() ->  AnyView{
        
        let shape = Design().shape
        
        return AnyView (
            
            ZStack(alignment: .center) {
                
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("inter_gray"), lineWidth: 1)
                    .frame(width: 100, height: 25, alignment: .center)
                
                HStack(alignment: .center) {
                    ZStack {
                        if viewModel.isBRSelected {
                            shape.fill().foregroundColor(Color("flag_selected"))
                        }
                        Image("br_flag")
                            .resizable()
                            .frame(width: 20, height: 15)
                            .onTapGesture {
                                if !viewModel.isBRSelected {
                                    viewModel.isBRSelected.toggle()
                                }
                                viewModel.isUSSelected = false
                            }
                    }
                    .frame(width: 40, height: 20)
                    
                    ZStack {
                        if viewModel.isUSSelected {
                            shape.fill().foregroundColor(Color("flag_selected"))
                        }
                        Image("us_flag")
                            .resizable()
                            .frame(width: 20, height: 15)
                            .onTapGesture {
                                if !viewModel.isUSSelected {
                                    viewModel.isUSSelected.toggle()
                                }
                                viewModel.isBRSelected = false
                            }
                    }
                    .frame(width: 40, height: 20)
                }
                .frame(width: 70)
            }
        )
    }
    
}


struct Header_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
