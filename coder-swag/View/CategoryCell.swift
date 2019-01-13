//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Krishna Torrence on 1/11/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
