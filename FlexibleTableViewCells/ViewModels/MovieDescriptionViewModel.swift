//
//  MovieDescriptionViewModel.swift
//  FlexibleTableViewCells
//
//  Created by Dan Neatu on 04.03.18.
//  Copyright © 2018 Dan Neatu. All rights reserved.
//

import Foundation

struct MovieDescriptionViewModel {
    let title: String
    let subtitle: String
    let imageName: String
}

extension MovieDescriptionViewModel: ViewModel {
    var identifier: String {
        return "movieDescriptionCell"
    }
}
