//
//  Pokemon.swift
//  NetworkingProject
//
//  Created by MAC on 12/8/20.
//

import Foundation

struct Pokemon: Decodable {
  let name: String
  let frontImageURL: URL
    let weight: Int
  
  enum CodingKeys: String, CodingKey {
    case name
    case sprites
    case weight
  }
  
  enum SpritesCodingKeys: String, CodingKey {
    case front = "front_default"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let spritesContainer = try container.nestedContainer(keyedBy: SpritesCodingKeys.self, forKey: .sprites)
    self.name = try container.decode(String.self, forKey: .name)
    self.frontImageURL = try spritesContainer.decode(URL.self, forKey: .front)
    self.weight = try container.decode(Int.self, forKey: .weight)

  }
}
