//
//  RCTCustomView.h
//  NativeView
//
//  Created by wcg on 16/1/28.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RCTView.h>

@class RCTEventDispatcher;
@interface RCTCustomView : RCTView

@property (nonatomic, strong) NSArray* girdData;
@property (nonatomic, strong) NSArray* titleArray;
@property (nonatomic, strong) NSArray* nameArray;
@property (nonatomic, strong) NSString *leftTopTitle;

@property (nonatomic, strong) UITableView *leftTableView;
@property (nonatomic, strong) UITableView *rightTableView;

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;

@end
