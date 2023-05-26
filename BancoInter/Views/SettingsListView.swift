//
//  ListView.swift
//  BancoInter
//
//  Created by Josué Amorim on 23/05/23.
//

import SwiftUI


struct SettingsListView: View {
    
    private var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            settingsList
        }
    }
    
    private var settingsList: some View {
        List {
            Text("Olá, USUÁRIO!")
                .bold()
                .padding(.vertical)
                .foregroundColor(.black)
            
            
            ForEach(viewModel.getSettingList, id: \.id) { setting in
                settingRow(for: setting)
            }
        }
    }
    
    private func settingRow(for setting: SettingList) -> some View {
        HStack {
            Image(systemName: setting.imageName)
                .foregroundColor(setting.color)
            
            Text(setting.cardName)
                .bold()
                .font(.body)
                .foregroundColor(setting.color)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.orange)
        }
        .padding(.vertical)
    }
}

struct SettingList: Identifiable, Hashable {
    var id: Int
    var imageName: String
    var cardName: String
    var color: Color
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
