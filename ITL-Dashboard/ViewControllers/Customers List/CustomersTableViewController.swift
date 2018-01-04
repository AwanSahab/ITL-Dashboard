//
//  CustomersTableViewController.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import UIKit

class CustomersTableViewController: UITableViewController {

    struct CustomerItems {
        var iconImg: UIImage
    }
    
    var arrayOfCustomers = [CustomerItems]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfCustomers = [CustomerItems.init(iconImg: #imageLiteral(resourceName: "ADIlogo")),
                        CustomerItems.init(iconImg: #imageLiteral(resourceName: "debenhamslogo")),
                        CustomerItems.init(iconImg: #imageLiteral(resourceName: "kmartlogo")),
                        CustomerItems.init(iconImg: #imageLiteral(resourceName: "levis")),
                        CustomerItems.init(iconImg: #imageLiteral(resourceName: "nextlogo"))]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfCustomers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("CustomerTableViewCell", owner: self, options: nil)?.first as! CustomerTableViewCell
        cell.imgVCust.image = arrayOfCustomers[indexPath.row].iconImg
        return cell
    }
    
    var selectedIndex: Int!
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "toCustomerDetails", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.destination)
        if segue.destination.isKind(of: DetailsTableViewController.self) {
            let notificationVC = segue.destination as! DetailsTableViewController
            notificationVC.imgOfLogo = arrayOfCustomers[selectedIndex].iconImg
        }
    }
}
