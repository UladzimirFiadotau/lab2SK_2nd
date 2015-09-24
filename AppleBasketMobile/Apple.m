//
//  Apple.m
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id) init {
    self = [super init];
    self.isOnTree = YES;
    self.color = arc4random_uniform(3);
    _boneCount = arc4random_uniform(1000);
    return self;
}

+ (Apple*) createApple {
    return [[Apple alloc] init];
}

- (void) mature {
    _boneCount++;
    if (self.color != RED) {
      self.color++;
    }
    //NSLog(@"Apple has matered: bones - %d , new color = %@", _boneCount , [self getColor]);
}

- (NSString *) getName{
    return @"Apple";
}

- (NSString *) getInformationString{
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendString:@"Color: "];
    [result appendString:[self getColor]];
    [result appendString:@"\nCount of bones: "];
    [result appendFormat:@"%d",_boneCount];
    return result;
}

@end
