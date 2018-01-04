//
//  DetailsTableViewController.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {

    var imgOfLogo: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 230
        } else {
            return 370
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = Bundle.main.loadNibNamed("CustomerDetailsTableViewCell", owner: self, options: nil)?.first as! CustomerDetailsTableViewCell
            cell.imgLogo.image = imgOfLogo
            return cell
        } else if indexPath.section == 1 {
            let cell = Bundle.main.loadNibNamed("GraphTableViewCell", owner: self, options: nil)?.first as! GraphTableViewCell
            
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("PieGraphDetailsTableViewCell", owner: self, options: nil)?.first as! PieGraphDetailsTableViewCell
            
            return cell
        }
    }
}
