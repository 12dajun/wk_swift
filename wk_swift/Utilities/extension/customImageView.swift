//
//  customImageView.swift
//  wk_swift
//
//  Created by Leo on 2018/11/9.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func setImageWithString(_ urlStr:NSString) -> Void {
        
        let imageURL = URL.init(string: urlStr as String)
        
//        SDWebImageManager.shared().loadImage(with: imageURL, options: SDWebImageOptions.highPriority, progress: {(receivedSize:Int,expectedSize:Int,targetURL:URL?)->Void in
//
//        }, completed: { ( image:UIImage?,data:Data?, error:Error? ,cacheType:SDImageCacheType, finished:Bool,url:URL?) -> Void in
//
//            if let img = image {
//                self.image = img
//            }
//        })
    }

}
