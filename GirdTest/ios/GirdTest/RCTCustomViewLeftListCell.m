//
//  RCTCustomViewLeftListCell.m
//  NativeView
//
//  Created by wcg on 16/1/29.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewLeftListCell.h"

@implementation RCTCustomViewLeftListCell


- (id)initWithWidth:(CGFloat)width title:(NSString *)title
{
  self =[super init];
  if (self) {
//            self.backgroundColor = [UIColor blackColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 30)];
    label.text = title;
//    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.layer.borderWidth = 0.5;
    label.font = [UIFont systemFontOfSize:13];
    label.layer.borderColor = [[UIColor grayColor] CGColor];
    [self.contentView addSubview:label];
    
  }
  return self;
}





@end
