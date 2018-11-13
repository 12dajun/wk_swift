//
//  CustomTextField.swift
//  wk_swift
//
//  Created by Leo on 2018/11/9.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var leftRect = super.leftViewRect(forBounds: bounds)
        leftRect.origin.x += 10;
        return leftRect;
    }
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rightRect = super.rightViewRect(forBounds: bounds)
        rightRect.origin.x += 10;
        return rightRect;
    }
   
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
