//
//  DashBoardListTableViewController.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import UIKit

class DashBoardListTableViewController: UITableViewController {
    
    struct ListItems {
        var iconImg: UIImage
        var listLbl: String
        var ofTypeLbl: String
    }

    var arrayOfItems = [ListItems]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfItems = [ListItems.init(iconImg: #imageLiteral(resourceName: "customers"), listLbl: "Customers", ofTypeLbl: "toCustomers")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("DashListTableViewCell", owner: self, options: nil)?.first as! DashListTableViewCell
        cell.imgIcon.image = arrayOfItems[indexPath.row].iconImg
        cell.lblListItem.text = arrayOfItems[indexPath.row].listLbl
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: arrayOfItems[indexPath.row].ofTypeLbl, sender: nil)
    }
}
