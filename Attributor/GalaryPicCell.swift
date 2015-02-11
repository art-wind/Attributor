//
//  GalaryPicCell.swift
//  Attributor
//
//  Created by 许Bill on 15-2-11.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import UIKit

class GalaryPicCell: UICollectionViewCell {

    @IBOutlet var galaryPicture: UIImageView!
    @IBOutlet var attachedComment: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        galaryPicture.layer.cornerRadius = 5
        galaryPicture.layer.masksToBounds = true
        // Initialization code
    }

}
