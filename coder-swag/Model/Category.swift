//
//  Category.swift
//  coder-swag
//
//  Created by Krishna Torrence on 1/11/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        
    }
}
