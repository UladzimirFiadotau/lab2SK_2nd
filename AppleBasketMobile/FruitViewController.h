//
//  FruitViewController.h
//  AppleBasketMobile
//
//  Created by fpmi on 24.09.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fruit.h"
@interface FruitViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *infoFruitNameLabel;
- (void)setFruit:(Fruit*)fruit;

@end
