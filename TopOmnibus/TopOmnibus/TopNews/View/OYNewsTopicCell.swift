//
//  OYNewsTopicCell.swift
//  TopOmnibus
//
//  Created by Gold on 2016/11/3.
//  Copyright © 2016年 herob. All rights reserved.
//

import UIKit

let OYNewsTopicCellID = NSStringFromClass(OYNewsTopicCell.self)

class OYNewsTopicCell: UICollectionViewCell {
    
    var model: OYNewsTopicModel? {
        didSet {
            label.text = model!.topic
            label.textColor = UIColor(red: model!.process, green: 0, blue: 0, alpha: 1)
        }
    }
    private var label: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 16)
        label.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(contentView)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
