//
//  XCViewController.m
//  XCBase
//
//  Created by qianjn on 2016/10/19.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "XCViewController.h"

@interface XCViewController ()
@property (nonatomic, strong) UINavigationBar *naviBar;
@end

@implementation XCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.naviBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
    self.navItem = [[UINavigationItem alloc] init];
    [self.navigationController.navigationBar addSubview:self.naviBar];
    self.naviBar.items = @[self.navItem];
    
    self.naviBar.barTintColor = [UIColor whiteColor];
    self.naviBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor grayColor]};
    self.naviBar.tintColor = [UIColor orangeColor];
}


@end
