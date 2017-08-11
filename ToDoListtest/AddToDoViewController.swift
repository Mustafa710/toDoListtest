//
//  AddToDoViewController.swift
//  ToDoListtest
//
//  Created by Mostafa Taha on 8/9/17.
//  Copyright © 2017 Mostafa Taha. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDOTableViewController()
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var switchImportant: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTappedButton(_ sender: Any) {
        
        
        
//        let toDo = ToDoList()
//
//        if let putInList = textField.text {
//
//            toDo.name = putInList
//            toDo.important = switchImportant.isOn
//
//            previousVC.toDos.append(toDo)
//            previousVC.tableView.reloadData()
//
//            navigationController?.popViewController(animated: true)
//        }
        
        
    }
    

    
}
