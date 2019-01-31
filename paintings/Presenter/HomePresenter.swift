//
//  HomePresenter.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-30.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation
import Koloda

class HomePresenter : Presenter, KolodaViewDataSource {
    
    var repo : Repository

    var homeView : HomeView?
    
    var paintingDataArr = [PaintingData]()
    
    init(repo : Repository) {
        self.repo = repo
    }
    
    func prepareData(view : HomeView) {
        getDataFromRepo()
        homeView = view
        homeView?.displayData()
    }
    
    func getDataFromRepo() {
        paintingDataArr = repo.getData()
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return paintingDataArr.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let uiview = UIImageView()
        
        do {
            let url = URL(string: paintingDataArr[index].imageUrl)
            let data = try Data(contentsOf: url!)
            uiview.image = UIImage(data: data)
        }
        catch {
            print(error)
        }
        
        return uiview
    }
    
}
