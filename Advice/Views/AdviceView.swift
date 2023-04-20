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
                Text("Nugget of wisdom")
                    .font(.title)
                    .multilineTextAlignment(.center)
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
