//
//  ViewController.swift
//  coder-swag
//
//  Created by Krishna Torrence on 1/10/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.rowHeight = 165
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else {
            return CategoryCell()
        }
    }
    


}

