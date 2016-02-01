//
//  RCTCustomViewRightListCell.m
//  NativeView
//
//  Created by wcg on 16/1/28.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewRightListCell.h"

#define  CELL_WIDTH 100

@interface RCTCustomViewRightListCell ()

@property(strong, nonatomic)NSMutableArray *lablesArr;

@end

@implementation RCTCustomViewRightListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    _lablesArr = @[].mutableCopy;
  }
  return self;
}

- (void)setDataArray:(NSArray *)dataArray
{
  _dataArray = dataArray;
  [self configureLBs];
}

- (void)configureLBs
{
  NSUInteger count = _dataArray.count;
  
  for (NSInteger i = 0; i < count; i++) {
    UILabel *lable = nil;
    NSString *str = [self.dataArray objectAtIndex:i];
    
    if (i >= self.lablesArr.count) {
      lable = [[UILabel alloc] init];
      lable.textAlignment = NSTextAlignmentCenter;
      lable.layer.borderWidth = 0.5;
      lable.font = [UIFont systemFontOfSize:13];
      lable.layer.borderColor = [[UIColor grayColor] CGColor];
      [self.lablesArr addObject:lable];
      [self.contentView addSubview:lable];
    }else{
      lable = self.lablesArr[i];
    }
    [lable setFrame:CGRectMake(i * 100, 0, 100, 30)];
    lable.text = str;
    lable.hidden = NO;
  }
  
//  for (NSInteger j = count; j < self.lablesArr.count; j++) {
//    UILabel *lable = self.lablesArr[j];
//    lable.hidden = YES;
//  }
  
}




@end
