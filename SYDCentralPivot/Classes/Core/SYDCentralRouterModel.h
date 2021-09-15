//
//  SYDCentralRouterModel.h
//  SYDServiceSDK
//
//  Created by zhumeng on 2019/1/7.
//  Copyright © 2019年 zhumeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark -

typedef NS_ENUM(NSInteger,SYDCentralRouterModelType){
    SYDCentralRouterModelType_UIViewController,
    SYDCentralRouterModelType_Service,
    SYDCentralRouterModelType_Other
};


@interface SYDCentralRouterModel : NSObject <NSCopying>

@property(nonatomic,strong) NSString * _Nonnull modelKey;

@property(nonatomic,assign) SYDCentralRouterModelType modelType;

@property(nonatomic,strong) Class _Nonnull cla;

@property(nonatomic,assign,getter=isSingle) BOOL single;                                      // 是否为单例类

@property(nonatomic,strong) NSString * _Nullable singletonMethodStr;                      // 单例方法；仅当isSingle为YES有效

//@property(nonatomic,strong) id singleton;                                       // 单例；仅当isSingle为YES有效

- (instancetype _Nonnull ) initWithModelKey:(NSString *_Nonnull) modelKey
                        modelType:(SYDCentralRouterModelType)modelType
                              cla:(Class _Nonnull ) cla
                           single:(BOOL) single
               singletonMethodStr:(NSString * _Nullable)singletonMethodStr;



@end







