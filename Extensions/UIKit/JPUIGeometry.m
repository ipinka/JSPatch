//
//  JPUIGeometry.m
//  JSPatchDemo
//
//  Created by Albert438 on 15/7/6.
//  Copyright (c) 2015年 bang. All rights reserved.
//

#import "JPUIGeometry.h"
#import "JPCGGeometry.h"
#import <UIKit/UIKit.h>


@implementation JPUIGeometry

+ (void)main:(JSContext *)context
{
    [JPEngine defineStruct:@{@"name": @"UIEdgeInsets",
                             @"types": @"dddd",
                             @"keys": @[@"top", @"left", @"bottom", @"right"]
                             }];
    
    context[@"CGRectFromString"]   = ^CGRect(NSString *string) {
        return CGRectFromString(string);
    };
    
    context[@"CGSizeFromString"]   = ^CGSize(NSString *string) {
        return CGSizeFromString(string);
    };
    
    context[@"CGPointFromString"]  = ^CGPoint(NSString *string) {
        return CGPointFromString(string);
    };
    
    context[@"CGVectorFromString"] = ^NSDictionary *(NSString *string) {
        CGVector vector =  CGVectorFromString(string);
        return [JPCGGeometry vectorDictOfStruct:&vector];
    };
}

@end
