//
//  TableTableViewController.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/9/21.
//

import UIKit


var ListOfItems: [String: String] = [:]

class TableViewController: UITableViewController {
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
   -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell( withIdentifier: "TableViewCell" , for: indexPath) as! TableViewCell
        
        cell.UpdateCellView(item: item)
     
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let itemsListViewController = segue.destination as? ItemsListViewController {
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                itemsListViewController.item = items[indexPath.row]
                }
            }
    }
}
