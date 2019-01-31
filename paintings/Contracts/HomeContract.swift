//
//  HomeContract.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-30.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation

protocol HomeView {
    func displayData()
}

protocol Presenter {
    func prepareData(view : HomeView)
}
