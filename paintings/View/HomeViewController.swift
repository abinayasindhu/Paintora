//
//  ViewController.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-25.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import UIKit
import Koloda

class HomeViewController: UIViewController, KolodaViewDelegate, HomeView {
    
    @IBOutlet weak var kolodaView: KolodaView!
    
    let dataPresenter = HomePresenter(repo: RepositoryImpl.shared)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataPresenter.prepareData(view : self)
    }

    func displayData() {
        kolodaView.dataSource = dataPresenter
        kolodaView.delegate = self
    }
  
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }

}

