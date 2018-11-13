//
//  wk_prefix.swift
//  wk_swift
//
//  Created by Leo on 2018/11/8.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

let screen_width = UIScreen.main.bounds.size.width
let screen_height = UIScreen.main.bounds.size.height

let themeColor :UIColor = colorWithString(0xc9a37e)

func colorWithString(_ color:NSInteger) -> UIColor {
    return UIColor(red: ((CGFloat)((color & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((color & 0xFF00) >> 8))/255.0, blue: ((CGFloat)(color & 0xFF))/255.0, alpha: 1.0)
}



