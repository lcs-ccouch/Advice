//
//  AdviceView.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//

import SwiftUI

struct AdviceView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Click for Wisdom")
                    .font(.title)
                    .multilineTextAlignment(.center)
               
                Button(action: {
                }, label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                Text("random Nugget of wisdom ")
            }
            .navigationTitle("Nuggets of Wisdom")
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
    }
}
