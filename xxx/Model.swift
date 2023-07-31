//
//  Model.swift
//  xxx
//
//  Created by odc on 23/07/2023.
//

import Foundation

struct Rating : Decodable{
    
    let rate:Double
    let count:Int
    
    init()
    {
        rate=0.0
        count=0
    }
}

struct product : Decodable{
    
    init() {
    id=0
    title=""
        price=0
    description=""
        category=""
        image=" "
    
    rating=Rating()
        
        }
    
    
    let id:Int
    
    let title:String
    
    let price:Double

    let description:String
    
    let category:String

    let image:String
    
    let rating:Rating
    
}
