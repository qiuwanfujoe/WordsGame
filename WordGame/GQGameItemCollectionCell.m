//
//  GQGameItemCollectionCell.m
//  WordGame
//
//  Created by Gideon on 15/11/15.
//  Copyright (c) 2015年 Gideon. All rights reserved.
//

#import "GQGameItemCollectionCell.h"

@interface GQGameItemCollectionCell()
@property (nonatomic, strong) UIButton *button;
@end

@implementation GQGameItemCollectionCell

- (void)setContentWithTitle:(NSString *)title
{
    if (!_button) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    }
    _button.layer.cornerRadius = _button.frame.size.height / 2.0;
    _button.layer.borderColor = [UIColor blueColor].CGColor;
    _button.layer.borderWidth = 1.0;
    [self addSubview:_button];
    [_button setTitle:title forState:UIControlStateNormal];
    
}

@end
