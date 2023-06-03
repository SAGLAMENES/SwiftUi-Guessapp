//
//  TahminEkrani.swift
//  GuessIt
//
//  Created by Enes Saglam on 4.06.2023.
//

import SwiftUI

struct TahminEkrani: View {
    @State private var sonucEkraninaGecis = false
    @State private var kalanHak = 5
    @State private var yonlendirme = ""
    @State private var tfTahmin = ""
    @State private var rasgeleSayi = 0
    @State private var sonuc = false
    
    var body: some View {
        VStack(spacing: 100) {
            Text("Kalan Hak : \(kalanHak)")
                .font(.system(size: 36))
                .foregroundColor(.red)
            
            Text("Yardım : \(yonlendirme)")
                .font(.system(size: 24))
            
            TextField("Tahmin",text: $tfTahmin)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("TAHMİN ET"){
                kalanHak = kalanHak - 1
                if let tahmin = Int(tfTahmin) {
                    if tahmin == rasgeleSayi {
                        sonucEkraninaGecis = true
                        sonuc = true
                        return
                    }
                    if tahmin > rasgeleSayi {
                        yonlendirme = "Azalt"
                    }
                    if tahmin < rasgeleSayi {
                        yonlendirme = "Arttır"
                    }
                    if kalanHak == 0 {
                        sonucEkraninaGecis = true
                        sonuc = false
                    }
                }
                tfTahmin = ""
            }.foregroundColor(.white)
                .frame(width: 250,height: 50)
                .background(.blue)
                .cornerRadius(10)
        }.navigationDestination(isPresented: $sonucEkraninaGecis){
            SonucEkrani(sonuc: sonuc)
        }.onAppear{
            rasgeleSayi = Int.random(in: 0...100)
            print("Rasgele Sayı : \(rasgeleSayi)")
            
            //Arayüzü Sıfırlama
            kalanHak = 5
            yonlendirme = ""
            tfTahmin = ""
        }
    }
}

struct TahminEkrani_Previews: PreviewProvider {
    static var previews: some View {
        TahminEkrani()
    }
}
