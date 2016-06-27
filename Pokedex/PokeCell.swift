//
//  PokeCell.swift
//  Pokedex
//
//  Created by HuiYao Tan on 27/06/2016.
//  Copyright © 2016 welvetech. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet var thumbImg: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named:"\(self.pokemon.pokedexId)")
    }
}
