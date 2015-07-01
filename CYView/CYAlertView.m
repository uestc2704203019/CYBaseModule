//
//  CYAlertView.m
//  CYBaseProject
//
//  Created by chai on 15-6-7.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "CYAlertView.h"
#import "CYLabel.h"

@interface CYAlertView ()
{
    
}


@end

@implementation CYAlertView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = [UIScreen mainScreen].bounds;
    }
    return self;
}

- (void)setContentView:(UIView *)contentView
{
    _contentView = contentView;
    _contentView.layer.cornerRadius = 6.0f;
    _contentView.layer.borderColor = [UIColor colorWithWhite:0.9 alpha:0.9].CGColor;
    _contentView.layer.borderWidth = 1.0f;
    _contentView.center = self.center;
    _contentView.backgroundColor = [UIColor whiteColor];
    if (![self.subviews containsObject:_contentView]) {
        [self addSubview:contentView];
    }
    [self addSubview:contentView];
}

- (void)show
{
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    
    if (_isHaveAnimation) {
        CAKeyframeAnimation *popAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
        popAnimation.duration = 0.4;
        popAnimation.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01f, 0.01f, 1.0f)],
                                [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1f, 1.1f, 1.0f)],
                                [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9f, 0.9f, 1.0f)],
                                [NSValue valueWithCATransform3D:CATransform3DIdentity]];
        popAnimation.keyTimes = @[@0.2f, @0.5f, @0.75f, @1.0f];
        popAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
        [self.layer addAnimation:popAnimation forKey:nil];
    }
}

- (void)hidden
{
    [self resignNotification];
    
    [_contentView removeFromSuperview];
    [self removeFromSuperview];

    CAKeyframeAnimation *hideAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    hideAnimation.duration = 0.4;
    hideAnimation.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1f, 1.1f, 1.0f)],
                             [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0f, 1.0f, 1.0f)],
                             [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.00f, 0.00f, 0.00f)]];
    hideAnimation.keyTimes = @[@0.2f, @0.5f, @0.75f];
    hideAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    hideAnimation.delegate = self;
    [self.layer addAnimation:hideAnimation forKey:nil];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
