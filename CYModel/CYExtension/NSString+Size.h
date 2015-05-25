//
//  NSString+Size.h
//  CYBaseProject
//
//  Created by chai on 15-5-25.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Size)

//获取字符串占用的size的大小
- (CGSize)sizeForStringWithFont:(UIFont *)font width:(float)width height:(float)height lineBreakMode:(NSLineBreakMode)lineBreakMode;

@end
