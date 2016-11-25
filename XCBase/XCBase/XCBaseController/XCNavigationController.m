//
//  XCNavigationController.m
//  XCBase
//
//  Created by qianjn on 2016/11/9.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "XCNavigationController.h"

@interface XCNavigationController ()
@property (nonatomic, strong) UINavigationBar *naviBar;
@end

@implementation XCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.naviBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    [self.navigationBar addSubview:self.naviBar];
}

- (void)setNavItem:(UINavigationItem *)navItem
{
    _navItem = navItem;
    self.naviBar.items = @[navItem];
    
}

@end
