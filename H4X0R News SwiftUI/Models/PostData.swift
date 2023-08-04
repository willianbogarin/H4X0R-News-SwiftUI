//
//  PostData.swift
//  H4X0R News SwiftUI
//
//  Created by Willian Bogarin Jr on 2023. 08. 02..
//

import Foundation



struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return  objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
