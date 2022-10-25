//
//  PageModel.swift
//  Pinch
//
//  Created by Kyle Ferrigan on 10/11/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
