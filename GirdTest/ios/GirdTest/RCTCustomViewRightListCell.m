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

//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//  if (self) {
//    self.backgroundColor = [UIColor yellowColor];
//    
//  }
//  return self;
//}
//
//- (void)layoutViews:(NSArray *)dataArray
//{
//  CGFloat cellHeight = self.contentView.frame.size.height;
//  
//  for (int i = 0; i < [dataArray count]; i++) {
//    NSDictionary *dic = [dataArray objectAtIndex:i];
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(i * CELL_WIDTH, 0, CELL_WIDTH, cellHeight)];
//    label.text = [dic objectForKey:@"name"];
//    label.textAlignment = NSTextAlignmentCenter;
//    [self.contentView addSubview:label];
//    
//    UIView *bottomLine = [[UIView alloc] initWithFrame:CGRectMake(i * CELL_WIDTH, cellHeight - 1, CELL_WIDTH, 1)];
//    bottomLine.backgroundColor = [UIColor redColor];
//    [self.contentView addSubview:bottomLine];
//    
//    UIView *rightLine = [[UIView alloc] initWithFrame:CGRectMake((i + 1) * CELL_WIDTH, 0, 1, cellHeight)];
//    rightLine.backgroundColor = [UIColor redColor];
//    [self.contentView addSubview:rightLine];
//    
//  }
//}

- (id)initWithData:(NSArray *)data
{
  self = [super init];
  if (self) {
    
    NSInteger count = [data count];
    for (int i = 0; i < count; i++) {
      
      UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i * 100, 0, 100, 30)];
      label.text = [data objectAtIndex:i];
      label.textAlignment = NSTextAlignmentCenter;
      label.numberOfLines = 1;
      label.font = [UIFont systemFontOfSize:13];
      label.layer.borderWidth = 0.5;
      label.layer.borderColor = [[UIColor grayColor] CGColor];
      [self addSubview:label];
    }
  }
  return self;
}





@end
