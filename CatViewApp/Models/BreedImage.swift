//
//  BreedImage.swift
//  CatViewApp
//
//  Created by Arshin Jain on 9/10/22.
//
import UIKit

struct BreedImage: Codable {
    let height: Int
    let id: String
    let url: String
    let width: Int
    var getURL: URL? {
        URL(string: url)
    }
}
