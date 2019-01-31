//
//  PaintingData.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-30.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation

class PaintingData {
    var id : String
    var imageUrl : String
    var likeCount : Int
    var dislikeCount : Int
    var ownerName : String

    init(id: String, imageUrl: String, likeCount: Int, dislikeCount: Int, ownerName: String ) {
        self.id = id
        self.imageUrl = imageUrl
        self.likeCount = likeCount
        self.dislikeCount = dislikeCount
        self.ownerName = ownerName
    }
}
