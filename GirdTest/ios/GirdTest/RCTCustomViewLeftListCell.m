//
//  RCTCustomViewLeftListCell.m
//  NativeView
//
//  Created by wcg on 16/1/29.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomViewLeftListCell.h"

@interface RCTCustomViewLeftListCell ()

@property (nonatomic, strong) UILabel *label;
@end

@implementation RCTCustomViewLeftListCell



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.tag = 100;
    _label.layer.borderWidth = 0.5;
    _label.font = [UIFont systemFontOfSize:13];
    _label.layer.borderColor = [[UIColor grayColor] CGColor];
    [self.contentView addSubview:_label];
  }
  return self;
}

- (void)setTitle:(NSString *)title
{
  _title = title;
  _label.text = title;
}





@end
