//
//  Header.swift
//  BancoInter
//
//  Created by Josué Amorim on 29/04/23.
//

import SwiftUI

struct HeaderView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    @State private var showSearch: Bool = false
    @State private var showSettings: Bool = false
    @Binding var isBRSelected: Bool
    @Binding var isUSSelected: Bool
    
    private let designShape = Design().shape
    
    var body: some View {
        HStack(alignment: .center) {
            
            // MARK: - Logo
            Image("logo_inter")
                .resizable()
                .frame(width: 84, height: 25)
            
            // MARK: - Account Selector
            accountSelector()
            
            Spacer()
            
            // MARK: - Search and Settings
            HStack {
                searchButton
                settingsButton
            }
            .font(.system(size: 20))
            .foregroundColor(.orange)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    
    // MARK: - Account Selector
    func accountSelector() -> AnyView {
        return AnyView(
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("inter_gray"), lineWidth: 1)
                    .frame(width: 100, height: 25, alignment: .center)
                
                HStack(alignment: .center, spacing: 0) {
                    accountButton(imageName: "br_flag", isSelected: isBRSelected) {
                        if !isBRSelected {
                            isBRSelected.toggle()
                        }
                        isUSSelected = false
                    }
                    accountButton(imageName: "us_flag", isSelected: isUSSelected) {
                        if !isUSSelected {
                            isUSSelected.toggle()
                        }
                        isBRSelected = false
                    }
                }
                .frame(width: 70)
            }
        )
    }
    
    func accountButton(imageName: String, isSelected: Bool, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            ZStack {
                if isSelected {
                    designShape.fill().foregroundColor(Color("flag_selected"))
                }
                Image(imageName)
                    .resizable()
                    .frame(width: 20, height: 15)
            }
            .frame(width: 40, height: 20)
        }
    }
    
    // MARK: - Search Button
    private var searchButton: some View {
        Button(action: {
            showSearch.toggle()
        }) {
            Image(systemName: "magnifyingglass")
        }
        .sheet(isPresented: $showSearch) {
            NavigationView {
                SearchView()
            }
        }
    }
    
    // MARK: - Settings Button
    private var settingsButton: some View {
        Button(action: {
            showSettings.toggle()
        }) {
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(-90))
        }
        .sheet(isPresented: $showSettings) {
            if #available(iOS 16, *) {
                SettingsListView()
                    .presentationDetents([.medium, .large])
            } else {
                SettingsListView()
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(isBRSelected: .constant(true), isUSSelected: .constant(false))
    }
}
