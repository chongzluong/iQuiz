//
//  quizCell.swift
//  iQuiz-Part1
//
//  Created by Timothy Luong on 5/5/16.
//  Copyright © 2016 Timothy Luong. All rights reserved.
//

import UIKit

class quizCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBOutlet weak var answerTitle: UILabel!
    @IBOutlet weak var questionTitle: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var imageSource: UIImageView!
    
    var cellTitle: String = "" {
        didSet {
            if (cellTitle != oldValue) {
                title.text = cellTitle
            }
        }
    }
    
    var descript: String = "" {
        didSet {
            if (descript != oldValue) {
                desc.text = descript
            }
        }
    }
    
    var index = Int()
    var answerIndex = Int()
}
