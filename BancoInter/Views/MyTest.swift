//
//  MyTest.swift
//  BancoInter
//
//  Created by Josué Amorim on 12/05/23.
//

import SwiftUI

struct MyTest: View {
    
    @ObservedObject private var viewModel = ViewModel()
    @State private var view1Visible = true
    @State private var view2Visible = false
    
//    var body: some View {
//        if isActive  {
//            ContentView()
//        } else  if isActive2 {
//            GlobalAccountView()
//        }
//    }
    
    var body: some View {
           HStack {
               Button(action: {
                   view1Visible.toggle()
                   view2Visible = false
               }) {
                   Text("View 1")
                       .padding()
                       .background(view1Visible ? Color.blue : Color.gray)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
               
               Button(action: {
                   view2Visible.toggle()
                   view1Visible = false
               }) {
                   Text("View 2")
                       .padding()
                       .background(view2Visible ? Color.blue : Color.gray)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
           }
           .padding()
           .font(.title)
           
           if view1Visible {
               Text("View 1")
                   .font(.largeTitle)
                   .padding()
           } else if view2Visible {
               Text("View 2")
                   .font(.largeTitle)
                   .padding()
           }
       }
}
    


struct MyTest_Previews: PreviewProvider {
    static var previews: some View {
        MyTest()
    }
}
