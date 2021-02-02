#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "SYDCentralRouterModel.h"
#import "SYDCentralFactory.h"
#import "SYDCentralPivotHeader.h"
#import "SYDCentralQueuePool.h"
#import "SYDCentralRouter.h"
#import "UIViewController+SYDRouter.h"

FOUNDATION_EXPORT double SYDCentralPivotVersionNumber;
FOUNDATION_EXPORT const unsigned char SYDCentralPivotVersionString[];

