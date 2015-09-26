//
//  Apple.m
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

{
    int number;
}

static int appleCount = 0;

- (id) init {
    self = [super init];
    self.isOnTree = YES;
    self.color = arc4random_uniform(3);
    _boneCount = arc4random_uniform(10);
    appleCount++;
    number = appleCount;
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
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendString:@"Apple #"];
    [result appendFormat:@"%d", number];
    return result;
}

- (NSString *) getInformationString{
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendString:@"Color: "];
    [result appendString:[self getColor]];
    [result appendString:@". Count of bones: "];
    [result appendFormat:@"%d",_boneCount];
    return result;
}

@end
