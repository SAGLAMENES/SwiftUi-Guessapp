//
//  SonucEkrani.swift
//  GuessIt
//
//  Created by Enes Saglam on 4.06.2023.
//

import SwiftUI

struct SonucEkrani: View {
    var sonuc = false
    var body: some View {
        VStack(spacing: 100) {
            if sonuc {
                Text("Kazandınız").font(.system(size: 36))
                Image(systemName:"face.smiling").resizable().frame(width: 128,height: 128)
            }else{
                Text("Kaybettiniz").font(.system(size: 36))
                Image(systemName:"exclamationmark.triangle.fill").resizable().frame(width: 90,height: 60)
            }
        }
    }
}

struct SonucEkrani_Previews: PreviewProvider {
    static var previews: some View {
        SonucEkrani()
    }
}
