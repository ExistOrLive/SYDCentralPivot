//
//  SYDCentralRouter.h
//  SYDServiceSDK
//
//  Created by zhumeng on 2019/1/7.
//  Copyright © 2019年 zhumeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SYDCentralFactory;
@class SYDCentralRouterModel;


@interface SYDCentralRouter : NSObject

@property(nonatomic,strong,readonly) SYDCentralFactory * _Nonnull centralFactory;

+ (instancetype _Nonnull) sharedInstance;

- (void) addConfig:(NSArray <SYDCentralRouterModel *>  * _Nonnull ) configs;

- (void) addConfigWithFilePath:(NSString * _Nonnull) filePath withBundle:(NSBundle * _Nullable) bundle;

@end

@interface SYDCentralRouter (ViewController)

- (void) enterViewController:(const NSString * _Nonnull) viewControllerKey withViewControllerConfig:(id _Nonnull) config withParam:(NSDictionary * _Nullable) paramDic;

@end

@interface SYDCentralRouter (SYDService)

- (id _Nullable) sendMessageToService:(const NSString * _Nonnull) serviceKey withSEL:(SEL _Nonnull) message withPara:(NSArray * _Nullable) paramArray isInstanceMessage:(BOOL) isInstanceMessage;

@end

