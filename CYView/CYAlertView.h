//
//  CYAlertView.h
//  CYBaseProject
//
//  Created by chai on 15-6-7.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYAlertView : UIView

@property (nonatomic, assign) BOOL isHaveAnimation;
@property (nonatomic, weak) UIView *contentView;

- (void)show;

- (void)hidden;

@end
