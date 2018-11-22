//
//  StudentListViewModel.swift
//  MVVMBoilerplateSwift
//
//  Created by Md Anwar Hossain on 11/22/18.
//  Copyright © 2018 Md Anwar Hossain. All rights reserved.
//

import Foundation
class StudentListViewModel {
    //This is ViewModel class of StudentListViewModel
    
    var reloadStudentList = {() -> () in }
    //First create array of student
    var arrayOfStudent : [Studen]? = []{
        didSet{
            //Hear we call clouser reload data
            reloadStudentList()
        }
    }
    
    func addStudentData(name: String, address: String){
        arrayOfStudent?.append(Studen(name: name, address: address))
    }
}
