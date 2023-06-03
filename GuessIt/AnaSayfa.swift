//
//  ContentView.swift
//  GuessIt
//
//  Created by Enes Saglam on 4.06.2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var tahminEkraninaGecis = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 100) {
                Text("Tahmin Oyunu").font(.system(size: 36))
                Image(systemName:"gamecontroller").resizable().frame(width: 128,height: 128)
                Button("OYUNA BAŞLA"){
                    tahminEkraninaGecis = true
                }.foregroundColor(.white)
                    .frame(width: 250,height: 50)
                    .background(.blue)
                    .cornerRadius(10)
            }.navigationDestination(isPresented: $tahminEkraninaGecis){
                TahminEkrani()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
