//
//  BreedsListView.swift
//  CatViewApp
//
//  Created by Arshin Jain on 9/10/22.
//

import SwiftUI

struct BreedsListView: View {
    let breeds: [Breed]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct BreedsListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedsListView(breeds: [])
    }
}

