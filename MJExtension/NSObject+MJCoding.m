//
//  NSObject+MJCoding.m
//  MJExtension
//
//  Created by mj on 14-1-15.
//  Copyright (c) 2014年 小码哥. All rights reserved.
//

#import "NSObject+MJCoding.h"
#import "NSObject+MJClass.h"
#import "NSObject+MJProperty.h"
#import "MJProperty.h"

@implementation NSObject (MJCoding)

- (void)encode:(NSCoder *)encoder
{
    Class aClass = [self class];
    
    NSArray *allowedCodingPropertyNames = [aClass totalAllowedCodingPropertyNames];
    NSArray *ignoredCodingPropertyNames = [aClass totalIgnoredCodingPropertyNames];
    
    [aClass enumerateProperties:^(MJProperty *property, BOOL *stop) {rtyNames containsObject:property.name]) return;
        
        id value = [property valueForObject:self];
        if (value == nil) return;
        [encoder encodeObject:value forKey:property.name];
    }];
}

- (void)decode:(NSCodername]) return;
        if ([ignoredCodingPropertyNames containsObject:property.name]) return;
        if (value == nil) return;;
    }];
}
@end
