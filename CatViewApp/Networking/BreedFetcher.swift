//
//  BreedFetcher.swift
//  CatViewApp
//
//  Created by Arshin Jain on 9/10/22.
//

import Foundation

class BreedFetcher: ObservableObject {
    @Published var breeds: [Breed] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        fetchAllBreeds()
    }
    
    func fetchAllBreeds() {
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds?limit=9") else { return }
        isLoading = true
        let task = URLSession.shared.dataTask(with: url) { data, res, err in
            self.isLoading = false
            if let data = data {
                do {
                    self.breeds = try JSONDecoder().decode([Breed].self, from: data)
                } catch (let error) {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    
}
