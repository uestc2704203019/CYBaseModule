//
//  CYTipMethod.m
//  CYBaseProject
//
//  Created by chai on 15-5-19.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "CYTipMethod.h"
#import <UIKit/UIKit.h>

#define anmationTime 1
#define anmationDelay 1.5

@implementation CYTipMethod

/**
 *
 *  @description toast message
 *
 */
+ (void)showToastWithMessage:(NSString *)message
{
    UIView *baseView = [[UIView alloc] init];
    UIFont *font = [UIFont systemFontOfSize:14];
    UILabel *toastLabel = [[UILabel alloc] init];
    
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    float padding = 8;
    float margin_x = 20;
    float margin_bottom = 60;

    CGSize toastSize = [message boundingRectWithSize:CGSizeMake(width-margin_x*2, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    
    toastLabel.numberOfLines = 0;
    toastLabel.frame = (CGRect){padding,padding,toastSize};
    toastLabel.text = message;
    toastLabel.textColor = [UIColor whiteColor];
    toastLabel.textAlignment = NSTextAlignmentCenter;
    toastLabel.font = font;
    [baseView addSubview:toastLabel];
    baseView.layer.masksToBounds = YES;
    baseView.layer.cornerRadius = 6;
    baseView.backgroundColor = [UIColor colorWithWhite:0.1 alpha:1];
    baseView.frame = CGRectMake((width-toastSize.width-padding*2)/2.0, height-margin_bottom-toastSize.height-padding*2, toastSize.width+padding*2, toastSize.height+padding*2);
    [[UIApplication sharedApplication].keyWindow addSubview:baseView];
    
    [CYTipMethod animationForHidden:baseView];
}

+ (void)animationForHidden:(UIView *)view
{
    [UIView animateWithDuration:anmationTime
                          delay:anmationDelay
                        options:UIViewAnimationOptionAllowAnimatedContent
                     animations:^{
                         view.alpha = 0;
                     }
                     completion:^(BOOL finished) {
                         for (UIView *conView in view.subviews) {
                             [conView removeFromSuperview];
                         }
                         [view removeFromSuperview];
                     }];
}

@end
