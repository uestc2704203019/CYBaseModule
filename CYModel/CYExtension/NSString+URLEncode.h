//
//  NSString+URLEncode.h
//  CYBaseProject
//
//  Created by chai on 15-5-22.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncode)

/**
 *
 *  @description 将字符串进行url编码处理
 *
 */
- (NSString *)urlEncode;

/**
 *
 *  @description 将字符串进行url解码处理
 *
 */
- (NSString *)urlDecode;

@end
