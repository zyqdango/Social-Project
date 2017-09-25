//
//  SCPost.m
//  Social Project
//
//  Created by YONGQING ZHENG on 2017/8/17.
//  Copyright © 2017年 YONGQING ZHENG. All rights reserved.
//

#import "SCPost.h"

@implementation SCPost

-(instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if(self != nil){
        self.message = dictionary[@"message"];        
    }
    return self;
}

@end
