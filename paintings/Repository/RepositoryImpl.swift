//
//  Repository.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-30.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation

class RepositoryImpl : Repository {
    
    static let shared = RepositoryImpl()
    
    var dataProvider = PaintingDataProvider_Local()
    
    func getData() -> [PaintingData] {
        return dataProvider.providePaintingData()
    }
    
}
