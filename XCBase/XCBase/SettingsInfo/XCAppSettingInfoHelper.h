//
//  XCAppSettingInfoHelper.h
//  system_setting_info_demo
//
//  Created by stone on 15/1/10.
//  Copyright (c) 2015年 xstone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XCAppSettingInfoHelper : NSObject

/**
 *  需要在application:didFinishLaunchingWithOptions:中调用
 */
+ (void)setSettingInfo;

/**
 *  返回渠道字符串
 */
+ (NSString *)channelId;
+ (NSNumber *)environment;
+ (NSString *)webDevelopAddress;
+ (NSNumber *)cacheCleanTime;
+ (BOOL      )allowDisWifi;

/**
 
 将如下脚本添加到"Build Phase > Run Script"
 
 INFOPLISTPATH="${TARGET_BUILD_DIR}/${EXECUTABLE_NAME}.app/Info.plist"
 PLISTBUDDY="/usr/libexec/PlistBuddy"
 
 REV=$(date +%Y%m%d.%H%M%S)
 
 $PLISTBUDDY -c "Set :CFBundleVersion $REV" "${INFOPLISTPATH}"
 
 # 注意：如果.hg目录与.xcodeproj文件不在同一目录下，这里需要cd进.hg所在目录下执行下面代码，执行完之后还需cd到之前的目录($ cd /usr/local/bin)
 #cd ..
 HG=$(/usr/local/bin/hg summary | grep parent | awk '{print $2}')
 #cd -
 
 $PLISTBUDDY -c "Set :HGHash $HG" "${INFOPLISTPATH}"

 */

@end
