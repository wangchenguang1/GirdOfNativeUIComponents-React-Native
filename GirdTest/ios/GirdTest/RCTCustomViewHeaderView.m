//
//  RCTCustomViewHeaderView.m
//  NativeView
//
//  Created by wcg on 16/1/28.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewHeaderView.h"

@implementation RCTCustomViewHeaderView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    
  }
  return self;
}

- (void)setDataArray:(NSArray *)dataArray {
  
  _dataArray = dataArray;
  [self setNeedsLayout];
}

- (void)layoutSubviews
{
  for (int i = 0; i < [self.dataArray count]; i++) {
    
    NSString *str = [self.dataArray objectAtIndex:i];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i * 100, 0, 100, 30)];
    label.text = str;
    label.textAlignment = NSTextAlignmentCenter;
    label.layer.borderWidth = 0.5;
    label.font = [UIFont systemFontOfSize:13];
    label.layer.borderColor = [[UIColor grayColor] CGColor];
    [self addSubview:label];
  }
}


@end
