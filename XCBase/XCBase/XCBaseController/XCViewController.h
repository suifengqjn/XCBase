//
//  XCViewController.h
//  XCBase
//
//  Created by qianjn on 2016/10/19.
//  Copyright © 2016年 SF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCViewController : UIViewController
@property(strong,nonatomic) NSDictionary *pageConfig;
@property(strong,nonatomic) NSString *pageName;
@property(assign, atomic  )   BOOL hideBarOnSwipe;

@property (nonatomic, strong) UINavigationItem *navItem;
@end
