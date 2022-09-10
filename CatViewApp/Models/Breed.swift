//
//  Breed.swift
//  CatViewApp
//
//  Created by Arshin Jain on 9/10/22.
//

struct Breed: Codable {
    let id: String
    let name: String
    let temperament: String
    let breedExplanation: String
    let energyLevel: Int
    let isHairless: Bool
    let image: BreedImage
    
    var description: String {
        "breed with name: \(name) and id \(id), energy level: \(energyLevel) isHairless: \(isHairless ? "YES" : "NO")"
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case temperament
        case breedExplanation = "description"
        case energyLevel = "energy_level"
        case isHairless = "hairless"
        case image
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        temperament = try values.decode(String.self, forKey: .temperament)
        breedExplanation = try values.decode(String.self, forKey: .breedExplanation)
        energyLevel = try values.decode(Int.self, forKey: .energyLevel)
        isHairless = try values.decode(Int.self, forKey: .isHairless) == 1
        image = try values.decode(BreedImage.self, forKey: .image)
    }
}
