//
//  ContentView.swift
//  CatViewApp
//
//  Created by Arshin Jain on 9/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var breedFetcher = BreedFetcher()
    var body: some View {
        VStack {
            if breedFetcher.isLoading {
                LoadingView()
            } else if breedFetcher.errorMessage != nil {
                ErrorView(breedFetcher: breedFetcher)
            } else {
                BreedsListView(breeds: breedFetcher.breeds)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
