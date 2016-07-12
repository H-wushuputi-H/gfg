//
//  MyTableViewCell.h
//  aaa
//
//  Created by lanou on 16/7/11.
//  Copyright © 2016年 H. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *lab;
@property (nonatomic, strong) UIImageView *imageV;

- (void)configureCellWith:(NSString *)title image:(UIImage *)image;

@end
