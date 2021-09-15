//
//  SYDCentralRouterModel.m
//  SYDServiceSDK
//
//  Created by zhumeng on 2019/1/7.
//  Copyright © 2019年 zhumeng. All rights reserved.
//

#import "SYDCentralRouterModel.h"

@implementation SYDCentralRouterModel

- (id)copyWithZone:(nullable NSZone *)zone{
    
    SYDCentralRouterModel* newModel = [[SYDCentralRouterModel allocWithZone:zone] init];
    
    newModel.modelKey = self.modelKey;
    newModel.cla = self.cla;
    newModel.modelType = self.modelType;
    newModel.single = self.isSingle;
    newModel.singletonMethodStr = self.singletonMethodStr;
    
    return newModel;
}

- (instancetype)initWithModelKey:(NSString *)modelKey
                       modelType:(SYDCentralRouterModelType)modelType
                             cla:(Class)cla
                          single:(BOOL)single
              singletonMethodStr:(NSString *)singletonMethodStr{
   
    if(self = [super init]){
        self.modelKey = modelKey;
        self.modelType = modelType;
        self.cla = cla;
        self.single = single;
        self.singletonMethodStr = singletonMethodStr;
    }
    return self;
    
}

@end






