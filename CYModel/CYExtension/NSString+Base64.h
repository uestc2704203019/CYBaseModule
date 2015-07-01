//
//  NSString+Base64.h
//  Pods
//
//  Created by chai on 15-7-1.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Base64)

/**
 *
 *  @!brief base64编码
 *
 **/
- (NSString *)base64Encode;

/**
 *
 *  @!brief base64解码
 *
 **/
- (NSString *)base64Decode;

@end
