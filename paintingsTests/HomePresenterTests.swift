//
//  HomePresenterTests.swift
//  paintingsTests
//
//  Created by Abinaya Sindhu on 2019-01-31.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import XCTest

class HomePresenterTests: XCTestCase {

    func testNotNil(){
        var repo = MockRepository()

        var homePresenter = HomePresenter(repo : repo)
        
        XCTAssertNotNil(homePresenter)
    }
    
    func testCount(){
        var repo = MockRepository()
        var homePresenter = HomePresenter(repo: repo)
        var view = MockHomeView()
        homePresenter.prepareData(view: view)
        
        XCTAssertEqual(1,homePresenter.paintingDataArr.count)
    }
    
    

}
