//
//  CYString.m
//  CYBaseProject
//
//  Created by chai on 15-5-22.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "CYString.h"

@implementation CYString

/**
 *
 *  @description 对字符串进行url encode 编码处理
 *
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
 *  @description 对字符串进行url decode 解码处理
 *
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
