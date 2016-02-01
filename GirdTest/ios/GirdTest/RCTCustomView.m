//
//  RCTCustomView.m
//  NativeView
//
//  Created by wcg on 16/1/28.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTCustomView.h"
#import "RCTEventDispatcher.h"
#import "RCTCustomViewRightListCell.h"
#import "RCTCustomViewHeaderView.h"
#import "RCTCustomViewLeftListCell.h"

//#define SCREEN_HEIGHT  ［UIScreen mainScreen].bounds.size.height
//#define SCREEN_WIDTH   ［UIScreen mainScreen].bounds.size.WIDTH

@interface RCTCustomView () <UITableViewDelegate ,UITableViewDataSource, UIScrollViewDelegate>

@end

@implementation RCTCustomView

- (id)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
  if (self = [super initWithFrame:CGRectZero]) {
    
    
//    self.backgroundColor = [UIColor redColor];
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  
  CGFloat width= self.frame.size.width;
  CGFloat height = self.frame.size.height;
  
  UILabel *leftTopLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
  leftTopLabel.text = self.leftTopTitle;
  leftTopLabel.layer.borderWidth = 0.5;
  leftTopLabel.layer.borderColor = [[UIColor grayColor] CGColor];
  leftTopLabel.textAlignment = NSTextAlignmentCenter;
  
  [self addSubview:leftTopLabel];
  
  self.leftTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 30, 100, height - 30)];
  self.leftTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  self.leftTableView.showsHorizontalScrollIndicator = NO;
  self.leftTableView.showsVerticalScrollIndicator = NO;
  self.leftTableView.delegate = self;
  self.leftTableView.dataSource = self;
  [self addSubview:self.leftTableView];
  
  UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(100, 0, width - 100, height )];
  scrollView.contentSize = CGSizeMake(100 * [self.titleArray count], height);
  scrollView.bounces = NO;
  [self addSubview:scrollView];
  
  RCTCustomViewHeaderView * headerView = [[RCTCustomViewHeaderView alloc] initWithFrame:CGRectMake(0, 0, 100 * [self.girdData count], 30)];
  [scrollView addSubview:headerView];
  headerView.dataArray = self.titleArray;
  
  self.rightTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, 100 * [self.girdData count], height - 30)];
  self.rightTableView.separatorStyle =  UITableViewCellSeparatorStyleNone;
  self.rightTableView.delegate = self;
  self.rightTableView.dataSource = self;
  [scrollView addSubview:self.rightTableView];
  
}

- (void)setChartData:(NSArray *)chartData {
  
  NSLog(@"%f,%f", self.frame.size.height, self.frame.size.width);
  _girdData = chartData;
  [self setNeedsLayout];
}

#pragma UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.girdData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if ([tableView isEqual:self.leftTableView]) {
    
    NSString *title = [self.nameArray objectAtIndex:indexPath.row];
    
    static NSString *identifier1 = @"cell1";
    RCTCustomViewLeftListCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier1];
    if (cell == nil) {
//      cell = [[RCTCustomViewLeftListCell alloc]initWithWidth:100 title:title];
      
      cell = [[RCTCustomViewLeftListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier1];
    
    }
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.title = title;
    
    return cell;
    
  } else {
    
    static NSString *identifier = @"cell";
    NSArray *data = [self.girdData objectAtIndex:indexPath.row];
    RCTCustomViewRightListCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
      cell = [[RCTCustomViewRightListCell alloc] initWithData:data];
//      cell = [[RCTCustomViewRightListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
   
    return cell;

  }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 30;
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
  if ([scrollView isEqual:self.rightTableView]) {
    CGFloat offsetY = self.rightTableView.contentOffset.y;
    CGPoint nameOffsetY = self.leftTableView.contentOffset;
    nameOffsetY.y = offsetY;
    self.leftTableView.contentOffset = nameOffsetY;
    if (offsetY == 0) {
      self.leftTableView.contentOffset = CGPointZero;
    }
  } else {
    
    CGFloat offsetY = self.leftTableView.contentOffset.y;
    CGPoint nameOffsetY = self.rightTableView.contentOffset;
    nameOffsetY.y = offsetY;
    self.rightTableView.contentOffset = nameOffsetY;
    if (offsetY == 0) {
      self.rightTableView.contentOffset = CGPointZero;
    }
    
  }
 }










@end
