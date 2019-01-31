//
//  MockRepository.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-31.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation

class MockRepository : Repository {

    func getData() -> [PaintingData] {
        var paintingData = [PaintingData]()
        paintingData.append(PaintingData(id: "1",imageUrl: "sdfjkasd",likeCount: 232,dislikeCount: 2323,ownerName: "Parithi"))
        return paintingData
    }
}
