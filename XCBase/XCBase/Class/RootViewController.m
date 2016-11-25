//
//  RootViewController.m
//  XCBase
//
//  Created by qianjn on 2016/11/9.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "RootViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(gotoNextpage)];
}


- (void)gotoNextpage
{
    RootViewController *VC = [[RootViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}
@end
