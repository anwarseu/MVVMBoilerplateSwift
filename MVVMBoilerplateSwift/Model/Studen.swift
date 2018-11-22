//
//  Studen.swift
//  MVVMBoilerplateSwift
//
//  Created by Md Anwar Hossain on 11/22/18.
//  Copyright © 2018 Md Anwar Hossain. All rights reserved.
//

import Foundation
class Studen{
    //This is student model class
    //we can create two property
    var name: String?
    var address: String?
    
    init() {
    
    }
    
    init(name: String?, address: String?) {
        self.name = name
        self.address = address
    }
}
