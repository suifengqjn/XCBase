//
//  XCAppSettingInfoHelper.m
//  system_setting_info_demo
//
//  Created by stone on 15/1/10.
//  Copyright (c) 2015年 xstone. All rights reserved.
//

#import "XCAppSettingInfoHelper.h"

@implementation XCAppSettingInfoHelper

+ (void)setSettingInfo
{
    NSString *version = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    [[NSUserDefaults standardUserDefaults] setObject:version
                                              forKey:@"version_preference"];
    
    NSString *build = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
    [[NSUserDefaults standardUserDefaults] setObject:build
                                              forKey:@"build_preference"];
    
    NSString *hghash = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"HGHash"];
    [[NSUserDefaults standardUserDefaults] setObject:hghash
                                              forKey:@"hg_preference"];
    
    NSString *channelId = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"ChannelId"];
    [[NSUserDefaults standardUserDefaults] setObject:channelId
                                              forKey:@"channelId_preference"];
}

+ (NSString *)channelId
{
    static NSString *channelId = nil;
    
    if (!channelId) {
        channelId = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"ChannelId"];
    }
    
    return channelId;
}

@end
