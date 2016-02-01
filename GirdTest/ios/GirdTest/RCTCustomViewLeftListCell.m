//
//  RCTCustomViewLeftListCell.m
//  NativeView
//
//  Created by wcg on 16/1/29.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewLeftListCell.h"

@implementation RCTCustomViewLeftListCell


//- (id)initWithWidth:(CGFloat)width title:(NSString *)title
//{
//  self =[super init];
//  if (self) {
////            self.backgroundColor = [UIColor blackColor];
//    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 30)];
//    label.text = title;
////    label.textColor = [UIColor whiteColor];
//    label.textAlignment = NSTextAlignmentCenter;
//    label.layer.borderWidth = 0.5;
//    label.font = [UIFont systemFontOfSize:13];
//    label.layer.borderColor = [[UIColor grayColor] CGColor];
//    [self.contentView addSubview:label];
//    
//  }
//  return self;
//}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    label.tag = 100;
    label.layer.borderWidth = 0.5;
    label.font = [UIFont systemFontOfSize:13];
    label.layer.borderColor = [[UIColor grayColor] CGColor];
    [self.contentView addSubview:label];

    
  }
  return self;
}

- (void)setTitle:(NSString *)title
{
  UILabel *label = (UILabel *)[self viewWithTag:100];
  label.text = title;
}





@end
