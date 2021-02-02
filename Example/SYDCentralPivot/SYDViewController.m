//
//  SYDViewController.m
//  SYDCentralPivot
//
//  Created by ExistOrLive on 02/02/2021.
//  Copyright (c) 2021 ExistOrLive. All rights reserved.
//

#import "SYDViewController.h"

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
