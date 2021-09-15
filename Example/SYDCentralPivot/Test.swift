//
//  Test.swift
//  SYDCentralPivot_Example
//
//  Created by 朱猛 on 2021/9/15.
//  Copyright © 2021 ExistOrLive. All rights reserved.
//

import Foundation
import SYDCentralPivot

func getObject() -> SYDCentralRouterModel{
   SYDCentralRouterModel(modelKey: "SYDAppDelegate", modelType: SYDCentralRouterModelType.other, cla: SYDAppDelegate.self, single: false, singletonMethodStr: nil)
}

