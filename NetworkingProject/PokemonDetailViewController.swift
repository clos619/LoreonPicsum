//
//  PokemonDetailViewController.swift
//  NetworkingProject
//
//  Created by Field Employee on 12/12/20.
//

import UIKit



class PokemonDetailViewController: UIViewController {

    let passedDetails = PokemonTableViewCell()
    
    @IBOutlet weak var pokemonMoves: UILabel!
    @IBOutlet weak var pokemonName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonName.text = passedDetails.pokemonNameLabel.text

    }
    
}
