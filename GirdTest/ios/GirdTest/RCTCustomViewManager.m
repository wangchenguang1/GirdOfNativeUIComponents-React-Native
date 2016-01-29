//
//  RCTCustomViewManager.m
//  NativeView
//
//  Created by wcg on 16/1/28.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewManager.h"
#import "RCTBridge.h"
#import "RCTConvert.h"
#import "RCTCustomView.h"

@implementation RCTCustomViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RCTCustomView* customView = [[RCTCustomView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
  return customView;
}

RCT_EXPORT_VIEW_PROPERTY(girdData, NSArrayArray)
RCT_EXPORT_VIEW_PROPERTY(leftTopTitle, NSString)
RCT_EXPORT_VIEW_PROPERTY(nameArray, NSStringArray)
RCT_EXPORT_VIEW_PROPERTY(titleArray, NSStringArray)

@end
