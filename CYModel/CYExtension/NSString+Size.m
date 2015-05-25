//
//  NSString+Size.m
//  CYBaseProject
//
//  Created by chai on 15-5-25.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)sizeForStringWithFont:(UIFont *)font width:(float)width height:(float)height lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineBreakMode = lineBreakMode;
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, height)
                                     options:NSStringDrawingUsesFontLeading
                                  attributes:@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle}
                                     context:nil];
    return rect.size;
}

@end
