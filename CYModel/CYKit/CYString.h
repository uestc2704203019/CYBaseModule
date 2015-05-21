//
//  CYString.h
//  CYBaseProject
//
//  Created by chai on 15-5-22.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYString : NSString

/**
 *
 *  @description 对字符串进行url encode 编码处理
 *
 *
 */
- (NSString *)urlEncode;

/**
 *
 *  @description 对字符串进行url decode 解码处理
 *
 *
 */
- (NSString *)urlDecode;

@end
