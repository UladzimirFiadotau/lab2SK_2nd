//
//  FruitViewController.m
//  AppleBasketMobile
//
//  Created by fpmi on 24.09.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import "FruitViewController.h"

@interface FruitViewController ()


@end

@implementation FruitViewController{
    Fruit* _fruit;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateInformationLabels];    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)setFruit:(Fruit*)fruit{
    _fruit = fruit;
    NSLog(@"setFruit");
}

- (void)updateInformationLabels {
    NSLog(@"1 %@", [_infoFruitNameLabel text]);
    NSLog(@"%@", [_fruit getName]);
    [_infoFruitNameLabel setText:[_fruit getName]];
    NSLog(@"2 %@", [_infoFruitNameLabel text]);
}
@end
