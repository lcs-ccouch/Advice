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
    @State var adviceOpacity = 0.0
    // MARK: Computed properties
    @State var currentAdvice: Advice?
    
    var body: some View {
        NavigationView {
            VStack {
                
                if let currentAdvice = currentAdvice {
                    Text("Click for Wisdom")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        
                    Button(action: {
                        
                        withAnimation(.easeIn(duration: 1.0)) {
                            adviceOpacity = 1.0
                            
                        }
                        
                    }, label: {
                        Image(systemName: "arrow.down.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .tint(.black)
                    })
                    Text(currentAdvice.slip.advice)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .opacity(adviceOpacity)
                } else {
                    ProgressView()
                }
                Button(action: {
                                     // Reset the interface
                                     adviceOpacity = 0.0

                                     Task {
                                         // Get another joke
                                         withAnimation {
                                             currentAdvice = nil
                                         }
                                         currentAdvice = await NetworkService.fetch()
                                     }
                                 }, label: {
                                     Text("Reset")
                                 })
                                 .disabled(adviceOpacity == 0.0 ? true : false)
                                 .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Nuggets of Wisdom")
        }
        
        .task {
            currentAdvice = await NetworkService.fetch()
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
    }
}
