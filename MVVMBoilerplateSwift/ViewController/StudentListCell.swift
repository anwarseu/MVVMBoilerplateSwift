//
//  StudentListCell.swift
//  MVVMBoilerplateSwift
//
//  Created by Md Anwar Hossain on 11/22/18.
//  Copyright © 2018 Md Anwar Hossain. All rights reserved.
//

import UIKit

class StudentListCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var studentObj: Studen?{
        didSet{
            callDataSet()
        }
    }
    
    func callDataSet(){
        labelName.text = studentObj?.name
        labelAddress.text = studentObj?.address
    }

}
