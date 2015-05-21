//
//  NSString+URLEncode.m
//  CYBaseProject
//
//  Created by chai on 15-5-22.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "NSString+URLEncode.h"

@implementation NSString (URLEncode)

/**
 *
 *  @description 将字符串进行url编码处理
 *
 */
- (NSString *)urlEncode
{
    NSString *outputStr = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                            (CFStringRef)self,
                                            NULL,
                                            (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                            kCFStringEncodingUTF8));
    return outputStr;
}

/**
 *
 *  @description 将字符串进行url解码处理
 *
 */
- (NSString *)urlDecode
{
    NSMutableString *outputStr = [NSMutableString stringWithString:self];
    [outputStr replaceOccurrencesOfString:@"+"
                               withString:@" "
                                  options:NSLiteralSearch
                                    range:NSMakeRange(0, [outputStr length])];
    
    return [outputStr stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
