//
//  CYLabel.m
//  CYBaseProject
//
//  Created by chai on 15-5-24.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "CYLabel.h"

@implementation CYLabel

+ (CYLabel *)label
{
    CYLabel *label = [[CYLabel alloc] init];
    label.backgroundColor = [UIColor clearColor];
    return label;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
