//
//  TodoListTableViewCell.swift
//  SharedTodoList
//
//  Created by Yim YongBin on 2019/10/18.
//  Copyright © 2019 Yim YongBin. All rights reserved.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    var data: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func checkButton(_ sender: UIButton) {
        let imgCircle: UIImage = UIImage.init(systemName: "circle")!
        
        if (sender.currentImage?.isEqual(imgCircle))! {
            sender.setImage(UIImage(systemName: "largecircle.fill.circle"), for: UIControl.State.normal)
            sender.tintColor = UIColor.systemGreen
        } else {
            sender.setImage(UIImage(systemName: "circle"), for: UIControl.State.normal)
            sender.tintColor = UIColor.systemGray
        }

    }
}
