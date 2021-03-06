//
//  WRGAddSubcategoryCell.m
//  KeepAccounts
//
//  Created by 王瑞果 on 2018/9/11.
//  Copyright © 2018年 王瑞果. All rights reserved.
//

#import "WRGAddSubcategoryCell.h"

CGFloat const kASCImageWH = 35.f;

@interface WRGAddSubcategoryCell ()
@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@end

@implementation WRGAddSubcategoryCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupCategoryViewCellWithSize:frame.size];
    }
    return self;
}

- (void)setupCategoryViewCellWithSize:(CGSize)size {
    self.iconImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:self.iconImageView];
    self.iconImageView.layer.cornerRadius = kASCImageWH / 2;
    self.iconImageView.layer.masksToBounds = YES;
    self.iconImageView.backgroundColor = COLOR_RANDOM;
    self.iconImageView.layer.cornerRadius = 5.f;
    self.iconImageView.layer.masksToBounds = YES;
//    self.iconImageView.image = [UIImage imageNamed:@""];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.nameLabel];
    self.nameLabel.text = @"添加子类";
    self.nameLabel.textAlignment = NSTextAlignmentCenter;
    self.nameLabel.font = [UIFont systemFontOfSize:10.f];
    self.nameLabel.backgroundColor = COLOR_RANDOM;
    
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top);
        make.centerX.equalTo(self.contentView.mas_centerX);
        make.width.height.mas_equalTo(kASCImageWH);
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView.mas_bottom);
        make.left.bottom.right.equalTo(self.contentView);
    }];
}
@end
