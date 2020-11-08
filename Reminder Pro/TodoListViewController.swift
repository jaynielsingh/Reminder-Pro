//
//  ViewController.swift
//  Reminder Pro
//
//  Created by Jayniel on 11/7/20.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["jack", "hill", "jill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Tableview Datasource Methods
    //1st step is to get tableview number of row in section
    //2nd is to call the tableview cell for row at to get the position
    //next let cell = the tableview dequeueReusableCell; update textlable with itemArray indexpath row.
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    //MARK: - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

