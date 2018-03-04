//
//  BuyViewModel.swift
//  FlexibleTableViewCells
//
//  Created by Dan Neatu on 04.03.18.
//  Copyright © 2018 Dan Neatu. All rights reserved.
//

import Foundation

struct BuyViewModel {
    var buyAction: () -> ()
}

extension BuyViewModel: ViewModel {
    var identifier: String {
        return "buyCell"
    }
}
