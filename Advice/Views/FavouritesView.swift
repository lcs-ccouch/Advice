//
//  FavouritesView.swift
//  Advice
//
//  Created by calum couch on 2023-04-20.
//
import Blackbird
import SwiftUI

struct FavouritesView: View {
    @BlackbirdLiveModels({ db in
        try await Advice.read(from: db)
    }) var favouriteAdvice
    // MARK: computed properties
    
    var body: some View {
        NavigationView {
            List(favouriteAdvice.results) { currentAdvice in
                VStack(alignment: .leading) {
                    Text(currentAdvice.advice)
                        .bold()
                    Text(currentAdvice.advice)
                }
            }
            .navigationTitle("Favourites")
        }
    }
}
struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
