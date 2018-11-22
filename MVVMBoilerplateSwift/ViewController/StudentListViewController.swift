//
//  StudentListViewController.swift
//  MVVMBoilerplateSwift
//
//  Created by Md Anwar Hossain on 11/22/18.
//  Copyright © 2018 Md Anwar Hossain. All rights reserved.
//

import UIKit

class StudentListViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let studentViewModel = StudentListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Now first we create add method in view model class
        tableViewSetup()
        // Now we access view model first create view model object
        studentViewModel.reloadStudentList = {
            [weak self] () in self?.tableView?.reloadData()
        }
        
    }

    @IBAction func btnAddData(_ sender: UIButton) {
        if (nameTextField.text?.count ?? 0 > 0) &&
            (addressTextField.text?.count ?? 0 > 0){
            studentViewModel.addStudentData(name: nameTextField.text!, address: addressTextField.text!)
            
            //for remove value after add data list
            nameTextField.text = ""
            addressTextField.text = ""
            self.view.endEditing(true)
            
        }else{
            
        }
    }
    
}
extension StudentListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableViewSetup(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel.arrayOfStudent?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: StudentListCell = tableView.dequeueReusableCell(withIdentifier:String(describing: StudentListCell.self)) as! StudentListCell
        cell.studentObj = studentViewModel.arrayOfStudent?[indexPath.row]
        
        return cell
    }
}
