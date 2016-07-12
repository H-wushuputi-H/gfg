//
//  MyTableViewCell.m
//  aaa
//
//  Created by lanou on 16/7/11.
//  Copyright © 2016年 H. All rights reserved.
//

#import "MyTableViewCell.h"
#import "Masonry.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.lab = [[UILabel alloc] init];
        self.lab.numberOfLines = 0;
        [self.contentView addSubview:self.lab];
        
        self.imageV = [[UIImageView alloc] init];
        [self.contentView addSubview:self.imageV];
    }
    return self;
}

- (void)configureCellWith:(NSString *)title image:(UIImage *)image
{
    self.lab.text = title;
    self.imageV.image = image;
    
    [self.lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
        make.top.equalTo(self.contentView.mas_top).offset(10);
    }];
    
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lab.mas_bottom).offset(10);
        make.left.equalTo(self.lab.mas_left);
//        make.right.equalTo(self.lab.mas_right);
        make.width.equalTo(@100);
        make.height.equalTo(self.imageV.mas_width).multipliedBy(3.0 / 4);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
    }];
    
    self.imageV.backgroundColor = [UIColor redColor];
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
