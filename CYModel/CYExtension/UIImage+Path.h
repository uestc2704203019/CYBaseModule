//
//  UIImage+Path.h
//  CYBaseProject
//
//  Created by chai on 15-5-25.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Path)

//根据 bundle path 获取图片
+ (UIImage *)imageNamed:(NSString *)name relativePath:(NSString *)relativePath;


@end
