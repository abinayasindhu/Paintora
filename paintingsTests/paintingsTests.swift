//
//  paintingsTests.swift
//  paintingsTests
//
//  Created by Abinaya Sindhu on 2019-01-25.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import XCTest
@testable import paintings

class PaintingsTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPaintingDataNil() {
        let paintingDataProvider = PaintingDataProvider_Local()
        let data = paintingDataProvider.providePaintingData()
        XCTAssertNotNil(data)
        XCTAssertEqual(16, data.count)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
