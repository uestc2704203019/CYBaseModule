//
//  NSString+Hash.m
//  Pods
//
//  Created by chai on 15-6-16.
//
//

#import "NSString+Hash.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (Hash)

/***
 *
 *  @description 字符串的MD5加密
 *
 ***/
- (NSString *)md5Encrypt
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result); // This is the md5 call
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for (int i=0; i<16; i++) {
        [ret appendFormat:@"%02x",result[i]];
    }
    return ret;
}

/**
 *
 *  @description 16位md5加密
 *
 **/
- (NSString *)bitMD5Encrypt
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result); // This is the md5 call
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for (int i=0; i<16; i++) {
        [ret appendFormat:@"%02X",result[i]];
    }
    return ret;
}

@end
