//
//  PokemonTableViewCell.swift
//  NetworkingProject
//
//  Created by MAC on 12/8/20.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
  @IBOutlet weak var pokemonImageView: UIImageView!
  @IBOutlet weak var pokemonNameLabel: UILabel!
  
    @IBOutlet weak var weightLabel: UILabel!
    func configure(with pokemon: Pokemon) {
    self.pokemonNameLabel.text = pokemon.name
        self.weightLabel.text = String(pokemon.weight)
    NetworkingManager.shared.getImageData(from: pokemon.frontImageURL) { (data, error) in
      guard let data = data else { return }
      DispatchQueue.main.async {
        self.pokemonImageView.image = UIImage(data: data)
      }
    }
  }
}
