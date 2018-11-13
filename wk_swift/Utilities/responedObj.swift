//
//  responedObj.swift
//  wk_swift
//
//  Created by Leo on 2018/11/9.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

class responedObj: NSObject {
    
    @objc override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print("匹配不上的key == \(key)")
    }
    
//    class func modelWithDictionary(dic:NSDictionary) -> AnyObject {
//
//        return responedObj.yy_modelWithDictionary(dic);
//    }
//    class func modelCustomPropertyMapper() -> NSDictionary {
//        return nil;
//    }
//
//    func modelContainerPropertyGenericClass() -> NSDictionary {
//        return nil;
//    }
//    func modelToJSONObject() -> AnyObject {
//        return self.yy_modelToJSONObject()
//    }
}




