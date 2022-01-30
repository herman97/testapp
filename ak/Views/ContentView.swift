//
//  ContentView.swift
//  ak
//
//  Innehållskoll, se om en viss ingrediens är i en matprodukt med hjälp av att skanna qr-koden.
//  Created by Herman Nordin on 2021-12-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Innehållskoll")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
            
            Text("Se innehållet på dina matvaror")
                .multilineTextAlignment(.center)
                .font(.subheadline)
            
            //CircleImage()
            ScanView()
            Spacer()
        }
        //Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
