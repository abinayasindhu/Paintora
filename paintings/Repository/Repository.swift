//
//  RepositoryP.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-31.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation

protocol Repository {
    func getData() -> [PaintingData]
}
