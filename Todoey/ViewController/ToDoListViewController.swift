//
//  ViewController.swift
//  Todoey
//
//  Created by Jesus Cueto on 27/07/18.
//  Copyright © 2018 Jesus Cueto. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = [ItemTodDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        itemArray.append(ItemTodDo.init(title: "Buy Eggs", done: false))
        itemArray.append(ItemTodDo.init(title: "Go Shopping", done: false))
        itemArray.append(ItemTodDo.init(title: "Destroy Demorogon", done: false))
    }

}

extension ToDoListViewController {
    //MARK: Datasource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row].title
        return cell
    }
}

extension ToDoListViewController {
    //Mark: Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
