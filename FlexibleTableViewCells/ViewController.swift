//
//  ViewController.swift
//  FlexibleTableViewCells
//
//  Created by Dan Neatu on 04.03.18.
//  Copyright © 2018 Dan Neatu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var viewModels = [ViewModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewModels()
    }

    private func createViewModels() {
        let movieDescriptionViewModel = MovieDescriptionViewModel(title: "WALL·E – Der Letzte räumt die Erde auf",
                                                                  subtitle: "10 €",
                                                                  imageName: "movie")
        let buyViewModel = BuyViewModel {
            print("Buy button pressed")
        }
        viewModels.append(movieDescriptionViewModel)
        viewModels.append(buyViewModel)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let movieDescriptionViewModel = viewModels[indexPath.row] as? MovieDescriptionViewModel {
            return configuredCell(from: tableView, cellModel: movieDescriptionViewModel)
        }
        
        if let buyViewModel = viewModels[indexPath.row] as? BuyViewModel {
            return configuredCell(from: tableView, cellModel: buyViewModel)
        }
        
        return UITableViewCell()
    }
    
    func configuredCell<T: ViewModel>(from tableView: UITableView, cellModel: T) -> ConfigurableCell<T> {
        let cell: ConfigurableCell<T> = (tableView.dequeueReusableCell(withIdentifier: cellModel.identifier) as? ConfigurableCell)!
        cell.configure(with: cellModel)
        return cell
    }
    
}

