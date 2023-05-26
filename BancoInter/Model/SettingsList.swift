//
//  SettingsList.swift
//  BancoInter
//
//  Created by Josué Amorim on 23/05/23.
//

import Foundation
import SwiftUI

struct SettingsList {
    
    var settingName: String
    var settingImage: String
    var color: Color
    
    init(settingName: String, settingImage: String, color: Color) {
        self.settingName = settingName
        self.settingImage = settingImage
        self.color = color
    }
    
    static var getSettings: Array<SettingsList> {
        return SettingsList.settings
    }
    
    static let settings: Array<SettingsList> = [
        SettingsList(settingName: "Meu cadastro e limites", settingImage: "person", color: .black),
        SettingsList(settingName: "Vida sustentável", settingImage: "globe", color: .black),
        SettingsList(settingName: "Notificações", settingImage: "bell", color: .black),
        SettingsList(settingName: "Segurança", settingImage: "shield", color: .black),
        SettingsList(settingName: "Todos os serviços", settingImage: "line.3.horizontal", color: .black),
        SettingsList(settingName: "Sair do Super App", settingImage: "rectangle.portrait.and.arrow.forward", color: .red)
    ]
}
