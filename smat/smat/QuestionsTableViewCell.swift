//
//  QuestionsTableViewCell.swift
//  smat
//
//  Created by Hiroshi Tamura on 2018/11/12.
//  Copyright © 2018 KINC. All rights reserved.
//

import UIKit
import iosMath

class QuestionsTableViewCell: UITableViewCell{
    @IBOutlet weak var texLabel: MTMathUILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        texLabel.latex = "x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
