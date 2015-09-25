//
//  Banana.m
//  AppleBasketMobile
//
//  Created by Admin on 25.09.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import "Banana.h"
#include "stdlib.h"

@implementation Banana

{
    int number;
}

static int bananaCount = 0;


- (id) init {
    self = [super init];
    self.isOnTree = YES;
    self.color = arc4random_uniform(2);
    bananaCount++;
    number = bananaCount;
    return self;
}

+ (Banana*) createBanana {
    return [[Banana alloc] init];
}

- (void) mature {
    if (self.color != YELLOW) {
        self.color++;
    }
}

- (NSString *) getName{
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendString:@"Banana #"];
    [result appendFormat:@"%d", number];
    return result;
}

- (NSString *) getInformationString{
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendString:@"Color: "];
    [result appendString:[self getColor]];
    return result;
}
@end
