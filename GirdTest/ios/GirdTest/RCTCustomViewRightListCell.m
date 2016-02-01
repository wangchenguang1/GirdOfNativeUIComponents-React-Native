//
//  RCTCustomViewRightListCell.m
//  NativeView
//
//  Created by wcg on 16/1/28.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewRightListCell.h"

#define  CELL_WIDTH 100

@implementation RCTCustomViewRightListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    self.backgroundColor = [UIColor yellowColor];
    
  }
  return self;
}



- (void)setDataArray:(NSArray *)dataArray
{
  _dataArray = dataArray;
  NSInteger count = [dataArray count];
  for (int i = 0; i < count; i++) {
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i * 100, 0, 100, 30)];
    label.text = [dataArray objectAtIndex:i];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 1;
    label.font = [UIFont systemFontOfSize:13];
    label.layer.borderWidth = 0.5;
    label.layer.borderColor = [[UIColor grayColor] CGColor];
    [self addSubview:label];
  }
  
}




@end
