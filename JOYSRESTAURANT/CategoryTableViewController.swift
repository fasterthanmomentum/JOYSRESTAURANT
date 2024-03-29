//
//  CategoryTableViewController.swift
//  JOYSRESTAURANT
//
//  Created by JOY BEST on 10/23/19.
//  Copyright © 2019 JOY BEST. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    let menuController = MenuController()
    var categories = [String]()

    func updateUI(with categories: [String]) {
            DispatchQueue.main.async {
                self.categories = categories
                self.tableView.reloadData()
            }
        }

    
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        menuController.fetchCategories{ (categories) in
            if let categories = categories {
                self.updateUI(with: categories)
            }
        }
    }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    
    
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }

    func configure(_ cell: UITableViewCell, forItemAt indexPath: IndexPath) {
          let categoryString = categories[indexPath.row]
          cell.textLabel?.text = categoryString.capitalized
      }
      
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath)
        configure(cell, forItemAt: indexPath)
        // Configure the cell...

        return cell
    }
    
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuSegue"
        {
            let menuTableViewController = segue.destination as!
            MenuTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            menuTableViewController.name = categories [index]
        }
    }
    
}
