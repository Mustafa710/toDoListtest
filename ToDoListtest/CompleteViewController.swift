//
//  CompleteViewController.swift
//  ToDoListtest
//
//  Created by Mostafa Taha on 8/9/17.
//  Copyright © 2017 Mostafa Taha. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var previousvC2 = ToDOTableViewController()
    var selectFromToDo = ToDoList()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        titleLabel.text = selectFromToDo.name
        
    }
    
    @IBAction func completedButtonTapped(_ sender: Any) {
        
        var index = 0
        
        for selectToDo in previousvC2.toDos {
            
            if selectToDo.name == selectFromToDo.name{
                previousvC2.toDos.remove(at: index)
                previousvC2.tableView.reloadData()
                break
            }
            
            index += 1
        }
    }
    
}
