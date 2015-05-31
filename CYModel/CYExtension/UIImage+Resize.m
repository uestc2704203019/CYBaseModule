//
//  UIImage+Resize.m
//  CYBaseProject
//
//  Created by chai on 15-6-1.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "UIImage+Resize.h"

@implementation UIImage (Resize)

/**
 *
 *  @description 切割图片
 *
 *  @param image 被切割图片
 *  @param point 切割起点
 *  @param size 切割大小
 *
 */
- (UIImage *)resizeImageFromPoint:(CGPoint)point getSize:(CGSize)size
{
    float start_x = point.x;
    float start_y = point.y;
    float end_x = point.x+size.width;
    float end_y = point.y+size.height;
    UIImage *managerImage = [self resizableImageWithCapInsets:UIEdgeInsetsMake(start_x, start_y, end_x, end_y) resizingMode:UIImageResizingModeStretch];
    return managerImage;
}

@end
