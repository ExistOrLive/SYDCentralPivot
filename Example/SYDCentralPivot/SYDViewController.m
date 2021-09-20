//
//  SYDViewController.m
//  SYDCentralPivot
//
//  Created by ExistOrLive on 02/02/2021.
//  Copyright (c) 2021 ExistOrLive. All rights reserved.
//

#import "SYDViewController.h"
#import <SYDCentralPivot/SYDCentralPivot.h>


@interface SYDViewController ()

@end

@implementation SYDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor redColor];
    
    UILabel *label = [UILabel new];
    [label setText:@"dasdasdasdasdas"];
    [self.view addSubview:label];
    
    
    SYDCentralRouterModel *model = [[SYDCentralRouterModel alloc] initWithModelKey:@"Test" modelType:SYDCentralRouterModelType_Other claStr:@"Test" moduleName:@"SYDCentralPivot_Example" single:NO singletonMethodStr:nil];
    [[SYDCentralFactory sharedInstance] addConfig:@[model]];
    
    // factory test
    id test = [[SYDCentralFactory sharedInstance] getCommonBean:@"Test" withInjectParam:@{@"str1":@"hahah",@"int1":@13}];
    Class testCla = [[SYDCentralFactory sharedInstance] getBeanClass:@"test"];
    
    id test1 = [[SYDCentralFactory sharedInstance] getCommonBean:@"test1"];
    Class testCla1 = [[SYDCentralFactory sharedInstance] getBeanClass:@"test1"];
    
    // router test
    id result = [[SYDCentralRouter sharedInstance] sendMessage:@"test" toBean:@"Test" withPara:nil isInstanceMessage:NO];
    id result1 = [[SYDCentralRouter sharedInstance] sendMessage:@"test" toBean:@"Test" withPara:nil isInstanceMessage:YES];
    
    id result2 = [[SYDCentralRouter sharedInstance] sendMessage:@"test" toBean:@"Test1" withPara:nil isInstanceMessage:NO];
    id result3 = [[SYDCentralRouter sharedInstance] sendMessage:@"test1" toBean:@"Test" withPara:nil isInstanceMessage:YES];
    
    NSLog(@"%@",result);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
