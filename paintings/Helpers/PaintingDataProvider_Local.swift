//
//  PaintingDataProvider_Local.swift
//  paintings
//
//  Created by Abinaya Sindhu on 2019-01-30.
//  Copyright © 2019 Abinaya Sindhu. All rights reserved.
//

import Foundation

class PaintingDataProvider_Local: PaintingDataProvider {
    
    func providePaintingData() -> [PaintingData] {
        
        var paintingDataArr = [PaintingData]()
        
        let path = Bundle.main.path(forResource: "paintings", ofType: "txt")
        do {
            let contents = try NSString(contentsOfFile: path!, encoding: String.Encoding.utf8.rawValue)
            let paintingDataStringArray = contents.components(separatedBy: .newlines)
            
            for i in 0..<paintingDataStringArray.count {
                let paintingDataArray = paintingDataStringArray[i].components(separatedBy: ",")
                
                let id = paintingDataArray[0]
                let imageUrl = paintingDataArray[1]
                let likeCount = Int(paintingDataArray[2]) ?? 0
                let dislikeCount = Int(paintingDataArray[3]) ?? 0
                let ownerName = paintingDataArray[4]
                
                let paintingData = PaintingData(id: id, imageUrl: imageUrl, likeCount: likeCount, dislikeCount: dislikeCount, ownerName: ownerName)
                
                paintingDataArr.append(paintingData)
            }
            
        }
        catch let error as NSError {
            print("Ooops! Something went wrong: \(error)")
        }
        
        return paintingDataArr
    }
    
}
