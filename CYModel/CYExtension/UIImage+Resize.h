//
//  UIImage+Resize.h
//  CYBaseProject
//
//  Created by chai on 15-6-1.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Resize)

/**
 *
 *  @description 切割图片
 *
 *  @param image 被切割图片
 *  @param point 切割起点
 *  @param size 切割大小
 *
 */
- (UIImage *)resizeImageFromPoint:(CGPoint)point getSize:(CGSize)size;

@end
