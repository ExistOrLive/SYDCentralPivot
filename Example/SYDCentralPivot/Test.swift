//
//  Test.swift
//  SYDCentralPivot_Example
//
//  Created by 朱猛 on 2021/9/15.
//  Copyright © 2021 ExistOrLive. All rights reserved.
//

import Foundation

class Test : NSObject {
    
    @objc var str1: String?
    @objc var int1: Int = 0
    
    @objc class func test() -> String{
        print("this is test");
        return "YES";
    }
    
    @objc func test() -> String{
        return "\(str1 ?? "nil")_\(int1)"
    }
}

