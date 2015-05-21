//
//  CYMethod.m
//  CYBase
//
//  Created by longyuan on 15/4/24.
//  Copyright (c) 2015年 ly. All rights reserved.
//

#import "CYMethod.h"

@implementation CYMethod

//根据十六进制颜色值获取颜色 输入颜色值大于f默认为0，长度大于6位取前六位
+ (UIColor *)hexColor:(NSString *)hexStr alpha:(float)alpha
{
    float red = 0;
    float green = 0;
    float blue = 0;
    
    switch (hexStr.length) {
        case 1:;
        {
            red = 0;
            green = 0;
            blue = [self hexNumber:hexStr];
        }
            break;
        case 2:;
        {
            red = 0;
            green = 0;
            NSString *b = hexStr;
            blue = [self hexNumber:[b substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[b substringWithRange:NSMakeRange(1, 1)]];
        }
            break;
        case 3:;
        {
            NSString *r = [hexStr substringWithRange:NSMakeRange(0,1)];
            NSString *g = [hexStr substringWithRange:NSMakeRange(1, 1)];
            NSString *b = [hexStr substringWithRange:NSMakeRange(2, 1)];
            red = [self hexNumber:r]*17;
            green = [self hexNumber:g]*17;
            blue = [self hexNumber:b]*17;
        }
            break;
        case 4:;
        {
            NSString *g = [hexStr substringWithRange:NSMakeRange(0, 2)];
            NSString *b = [hexStr substringWithRange:NSMakeRange(2, 2)];
            red = 0;
            green = [self hexNumber:[g substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[g substringWithRange:NSMakeRange(1, 1)]];
            blue = [self hexNumber:[b substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[b substringWithRange:NSMakeRange(1, 1)]];
        }
            break;
        case 5:;
        {
            NSString *r = [hexStr substringWithRange:NSMakeRange(0,1)];
            NSString *g = [hexStr substringWithRange:NSMakeRange(1, 2)];
            NSString *b = [hexStr substringWithRange:NSMakeRange(3, 2)];
            red = [self hexNumber:r];
            green = [self hexNumber:[g substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[g substringWithRange:NSMakeRange(1, 1)]];
            blue = [self hexNumber:[b substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[b substringWithRange:NSMakeRange(1, 1)]];
        }
            break;
        default:;
        {
            NSString *r = [hexStr substringWithRange:NSMakeRange(0,2)];
            NSString *g = [hexStr substringWithRange:NSMakeRange(2, 2)];
            NSString *b = [hexStr substringWithRange:NSMakeRange(4, 2)];
            red = [self hexNumber:[r substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[r substringWithRange:NSMakeRange(1, 1)]];
            green = [self hexNumber:[g substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[g substringWithRange:NSMakeRange(1, 1)]];
            blue = [self hexNumber:[b substringWithRange:NSMakeRange(0, 1)]]*16+[self hexNumber:[b substringWithRange:NSMakeRange(1, 1)]];
            
        }
            break;
    }
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0 alpha:alpha];
}

/*16进制转化10进制*/
+ (int)hexNumber:(NSString *)hexStr
{
    if ([hexStr isEqualToString:@"f"]) {
        return 15;
    }
    if ([hexStr isEqualToString:@"e"]) {
        return 14;
    }
    if ([hexStr isEqualToString:@"d"]) {
        return 13;
    }
    if ([hexStr isEqualToString:@"c"]) {
        return 12;
    }
    if ([hexStr isEqualToString:@"b"]) {
        return 11;
    }
    if ([hexStr isEqualToString:@"a"]) {
        return 10;
    }
    return [hexStr intValue];
}

/**
 *
 *  @description 判断传入字符串是否为手机号码
 *
 */
+ (BOOL)checkNumberIsPhoneNumber:(NSString *)number
{
    NSString *mobileRegex = @"^1(3[0-9]|5[0-35-9]|7[05-8]|8[025-9])d{8}$";
    NSPredicate *mobilePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",mobileRegex];
    return [mobilePredicate evaluateWithObject:number];
}

/**
 *
 *  @decription 根据传入的正则表达式判断字符串是否满足要求
 *
 *
 */
+ (BOOL)checkMatchRegex:(NSString *)regex checkStr:(NSString *)checkStr
{
    NSPredicate *checkPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [checkPredicate evaluateWithObject:checkStr];
}

/**
 *
 *  @description 根据约束条件获取字符串占用的size
 *
 *
 */
+ (CGSize)sizeWithWidth:(float)width height:(float)height font:(UIFont *)font content:(NSString *)content lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = lineBreakMode;
    CGRect contentRect = [content boundingRectWithSize:(CGSize){width,height} options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle} context:nil];
    return contentRect.size;
}

@end
