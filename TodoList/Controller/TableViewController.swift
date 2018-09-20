//
//  ViewController.swift
//  TodoList
//
//  Created by Ningqian Jia on 2018-09-13.
//  Copyright © 2018 RickyJia. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // Variables
    var itemList = [Item]()
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        itemList.append(Item(title: "1"))
         itemList.append(Item(title: "2"))
         itemList.append(Item(title: "3"))
         itemList.append(Item(title: "4"))
        itemList.append(Item(title: "5"))
        
    }

    
    //MARK - Tableview Datasource Methods
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return itemList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListCell", for: indexPath)
        let item = itemList[indexPath.row]
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.done ? .checkmark : .none
        
        
        return cell
    }
    //MARK - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemList[indexPath.row].done = !itemList[indexPath.row].done
        tableView.deselectRow(at: indexPath, animated: true)
        
        tableView.reloadData()
    }
   
    
    
    //MARK - Add New Items
    
    
    @IBAction func addBtnPressed(_ sender: UIBarButtonItem) {
        
        
        let alert = UIAlertController(title: "New Item", message: "", preferredStyle: .alert)
        var textField = UITextField()
        
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            self.itemList.append(Item(title: textField.text!))
           self.tableView.reloadData()

        }
        alert.addTextField { (UITextField) in
            UITextField.placeholder = "Create new item"
            textField = UITextField

            
        }
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        
        
       
    }
    
    
    
    
    
    
    
    
    

}


// s19 249



//override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return itemArray.count
//}
//
//override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//
//    let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListCell", for: indexPath)
//
//    cell.textLabel?.text = itemArray[indexPath.row].title
//
//
//    return cell
//}

//
//override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//
//    if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
//        tableView.cellForRow(at: indexPath)?.accessoryType = .none
//
//    }else{
//        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//
//    }
//
//
//    tableView.deselectRow(at: indexPath, animated: true)
//
//}

//var textField = UITextField()
//
//let alert = UIAlertController(title: "Add New Todo Item", message: "", preferredStyle: .alert)
//
//let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
//
//
//    self.itemArray.append(Item(title: textField.text!, done: false))
//
//
//}
//alert.addTextField { (alerTextField) in
//    alerTextField.placeholder = " Create new item"
//}
//
//alert.addAction(action)
//
//present(alert,animated: true,completion: nil)
//
