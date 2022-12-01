//
//  ContentView.swift
//  M6_L2_Task1
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var welcome = "str_welcome".localized()
    var body: some View {
        VStack{
            Text(welcome)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack(spacing: 0){
                Button(action: {
                    Bundle.setLanguage(lang: "en")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("English")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.red)
                })
                Button(action: {
                    Bundle.setLanguage(lang: "ru")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("Russian")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                })
                Button(action: {
                    Bundle.setLanguage(lang: "uz")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("Uzbek")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.green)
                })
                Button(action: {
                    Bundle.setLanguage(lang: "fr")
                    welcome = "str_welcome".localized()
                }, label: {
                    Text("French")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(.orange)
                })
            }.frame(maxWidth: .infinity, maxHeight: 70)
        }.padding(.top, 10).padding(.bottom, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
