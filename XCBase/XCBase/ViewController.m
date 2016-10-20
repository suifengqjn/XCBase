//
//  ViewController.m
//  XCBase
//
//  Created by qianjn on 2016/10/20.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "ViewController.h"
#import "PINCache.h"
#import "XCAppSettingInfoHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id emv = [XCAppSettingInfoHelper environment];
    id webadd = [XCAppSettingInfoHelper webDevelopAddress];
    id clean = [XCAppSettingInfoHelper cacheCleanTime];
    BOOL wifi = [XCAppSettingInfoHelper allowDisWifi];
    
    
    NSLog(@"%@", clean);
}

@end
