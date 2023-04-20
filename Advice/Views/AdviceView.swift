//
//  AdviceView.swift
//  Advice
//
//  Created by calum couch on 2023-04-19.
//

import SwiftUI

struct AdviceView: View {
    
    // MARK: Stored properties
    // 0.0 is invisible, 1.0 is visible
    @State var NuggetOpacity = 0.0
    // MARK: Computed properties
    @State var currentAdvice = exampleAdvice
    var body: some View {
        NavigationView {
            VStack {
                Text("Click for Wisdom")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    withAnimation(.easeIn(duration: 1.0)) {
                        NuggetOpacity = 1.0
                        
                    }
                    
                }, label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                Text(currentAdvice.advice)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .opacity(NuggetOpacity)
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
