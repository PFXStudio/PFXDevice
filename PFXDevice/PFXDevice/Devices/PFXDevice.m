//
//  PFXDevice.m
//  PFXDevice
//
//  Created by succorer on 2016. 1. 8..
//  Copyright © 2016년 succorer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PFXDevice.h"

@implementation PFXDevice

+ (NSDictionary *)deviceInfo
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    NSString *name = [[UIDevice currentDevice] name];
    NSString *model = [[UIDevice currentDevice] model];
    NSString *localizedModel = [[UIDevice currentDevice] localizedModel];
    NSString *systemName = [[UIDevice currentDevice] systemName];
    NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    
    [dict setObject:name forKey:@"name"];
    [dict setObject:model forKey:@"model"];
    [dict setObject:localizedModel forKey:@"localizedModel"];
    [dict setObject:systemName forKey:@"systemName"];
    [dict setObject:systemVersion forKey:@"systemVersion"];
    [dict setObject:uuid forKey:@"uuid"];

    return dict;
}

@end
