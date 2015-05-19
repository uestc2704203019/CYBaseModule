//
//  CYMethod.h
//  CYBase
//
//  Created by longyuan on 15/4/24.
//  Copyright (c) 2015年 ly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CYMethod : NSObject
#pragma mark 转化类型方法
//根据十六进制颜色值获取颜色 输入颜色值大于f默认为0，长度大于6位取前六位
+ (UIColor *)hexColor:(NSString *)hexStr alpha:(float)alpha;

#pragma mark 判断类型方法
/**
 *
 *  @description 判断传入字符串是否为手机号码
 *
 */
+ (BOOL)checkNumberIsPhoneNumber:(NSString *)number;

@end
