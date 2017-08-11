//
//  ToDOTableViewController.swift
//  ToDoListtest
//
//  Created by Mostafa Taha on 8/9/17.
//  Copyright © 2017 Mostafa Taha. All rights reserved.
//

import UIKit

class ToDOTableViewController: UITableViewController {
    
    var toDos : [ToDoList] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = creatToDo()
    }

    

    func creatToDo()->[ToDoList] {
        
        let home = ToDoList()
        home.name = "7 October"
        home.important = true
        
        let car = ToDoList()
        car.name = "BMW"
        
        let lapTop = ToDoList()
        lapTop.name = "Mac pro"
        
        return[home, car, lapTop]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
        
        cell.textLabel?.text = "\(toDo.name) ❤️"
            
        } else {
             cell.textLabel?.text = toDo.name
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let todo = toDos[indexPath.row]
        performSegue(withIdentifier: "moveTocomplete", sender: todo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? AddToDoViewController {
            addVC.previousVC = self
     }
        
        if let completeVC = segue.destination as? CompleteViewController {
            
            if let toDo = sender as? ToDoList {
                completeVC.selectFromToDo = toDo
               completeVC.previousvC2 = self
                
            }
        }
        
        
    }

}
