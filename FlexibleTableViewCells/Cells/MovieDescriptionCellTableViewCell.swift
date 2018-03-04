//
//  MovieDescriptionCellTableViewCell.swift
//  FlexibleTableViewCells
//
//  Created by Dan Neatu on 04.03.18.
//  Copyright © 2018 Dan Neatu. All rights reserved.
//

import UIKit

class MovieDescriptionCellTableViewCell: ConfigurableCell<MovieDescriptionViewModel> {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var movieImageView: UIImageView!
    
    override func configure(with viewModel: MovieDescriptionViewModel) {
        titleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        movieImageView.image = UIImage(named: viewModel.imageName)
    }
    
}

