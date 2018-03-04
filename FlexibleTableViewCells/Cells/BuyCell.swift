//
//  BuyCell.swift
//  FlexibleTableViewCells
//
//  Created by Dan Neatu on 04.03.18.
//  Copyright © 2018 Dan Neatu. All rights reserved.
//

import Foundation
import UIKit

class BuyCell: ConfigurableCell<BuyViewModel> {
    
    private var buyAction: (() -> ())?
    
    override func configure(with viewModel: BuyViewModel) {
        self.buyAction = viewModel.buyAction
    }
    
    @IBAction func buyButtonPressed(_ sender: UIButton) {
        buyAction?()
    }
    
}

