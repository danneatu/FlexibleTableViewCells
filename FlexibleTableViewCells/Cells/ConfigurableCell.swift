//
//  ConfigurableCell.swift
//  FlexibleTableViewCells
//
//  Created by Dan Neatu on 04.03.18.
//  Copyright © 2018 Dan Neatu. All rights reserved.
//

import Foundation
import UIKit

class ConfigurableCell<T: ViewModel>: UITableViewCell {
    func configure(with viewModel: T) {
        fatalError("Needs to be overriden by subclass")
    }
}
