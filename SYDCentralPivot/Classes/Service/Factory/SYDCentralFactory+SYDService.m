#import "SYDCentralFactory+SYDService.h"

@implementation SYDCentralFactory (SYDService)

- (id) getSYDServiceBean:(const NSString *) serviceKey
{
    id serviceBean = nil;
    
    if(!self.serviceModelMapCache)
    {
        self.serviceModelMapCache = [[NSMutableDictionary alloc] init];
    }
    else
    {
        serviceBean = [self.serviceModelMapCache objectForKey:serviceKey];
    }
    
    if(!serviceBean)
    {
        serviceBean = [self getCommonBean:serviceKey];
        
        if(serviceBean)
        {
            [self.serviceModelMapCache setObject:serviceBean forKey:serviceKey];
        }
        else
        {
            NSLog(@"SYDCentralFactory_getSYDServiceBean: serviceBean for [%@] not exist",serviceKey);
        }
    }
    
    return serviceBean;
}

@end