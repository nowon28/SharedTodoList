//
//  ViewController.swift
//  SharedTodoList
//
//  Created by Yim YongBin on 2019/10/15.
//  Copyright © 2019 Yim YongBin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data: [String] = ["test1", "test2"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: TodoListTableViewCell = ListTableView.dequeueReusableCell(withIdentifier: "todoListCell", for: indexPath) as! TodoListTableViewCell
        
        if indexPath.section == 0 {
            let text: String = self.data[indexPath.row]
            cell.titleTextField.text = text
        }
        
        return cell
    }
    
    @IBAction func addList(_ sender: UIButton) {
        self.data.append("");
        
        let indexPath = IndexPath(row: self.data.count, section: 0)
        
        //self.ListTableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        self.ListTableView.reloadData()
    }
    
    @IBOutlet weak var ListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updatedTextField(_ sender: UITextField) {
        let supercell: TodoListTableViewCell = sender.superview?.superview as! TodoListTableViewCell
        
        let supertable: UITableView = supercell.superview as! UITableView
        
        let indexPath = supertable.indexPath(for: supercell)
        
        self.data[indexPath!.row] = sender.text!
    }
}

