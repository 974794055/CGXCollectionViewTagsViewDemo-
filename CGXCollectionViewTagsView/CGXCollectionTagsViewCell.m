//
//  CGXCollectionTagsViewCell.m
//  CGXCollectionViewTagsView
//
//  Created by CGX on 2017/9/28.
//  Copyright © 2017年 CGX. All rights reserved.
//

#import "CGXCollectionTagsViewCell.h"

@interface CGXCollectionTagsViewCell ()
@property (nonatomic , assign) CGFloat viewW;
@property (nonatomic , assign) CGFloat viewH;

@end

@implementation CGXCollectionTagsViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self =[super initWithFrame:frame];
    if (self) {
        self.viewH = frame.size.height;
        self.viewW = frame.size.width;
    }
    return self;
}

- (UILabel *)tagsLabel
{
    if (!_tagsLabel) {
        _tagsLabel = [UILabel new];
        [self.contentView addSubview:_tagsLabel];
        _tagsLabel.frame = CGRectMake(0, 0,self.viewW, self.viewH);
        _tagsLabel.textColor = [UIColor blackColor];
        _tagsLabel.font = [UIFont systemFontOfSize:14];
        _tagsLabel.backgroundColor = [UIColor whiteColor];
        _tagsLabel.textAlignment =NSTextAlignmentCenter;
        _tagsLabel.layer.cornerRadius = 4;
        _tagsLabel.layer.masksToBounds = YES;
        _tagsLabel.layer.borderWidth = 0.5;
        _tagsLabel.layer.borderColor = [UIColor colorWithWhite:0.93 alpha:1].CGColor;
    }
    return _tagsLabel;
}

- (void)updateWithModel:(CGXCollectionTagsViewModel *)model
{
    self.tagsLabel.textColor = model.titleColor;
    self.tagsLabel.font =model.titleSize;
    self.tagsLabel.backgroundColor = model.itemColor;
    self.tagsLabel.text = model.title;
    self.tagsLabel.textAlignment =NSTextAlignmentCenter;
    self.tagsLabel.layer.cornerRadius = model.cornerRadius;
    self.tagsLabel.layer.masksToBounds = YES;
    self.tagsLabel.layer.borderWidth = model.borderWidth;
    self.tagsLabel.layer.borderColor = model.borderColor.CGColor;
    self.tagsLabel.userInteractionEnabled = !model.isUser;
}
@end
