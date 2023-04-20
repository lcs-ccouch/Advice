//
//  ContentView.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SOME PEICE OF WISDOM")
                .font(.title)
                .multilineTextAlignment(.center)
            
            
            
        }
        .navigationTitle("Random Advice")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
