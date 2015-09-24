//
//  ViewController.m
//  AppleBasketMobile
//
//  Created by Admin on 19.09.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "BasketIterator.h"
#import "Basket.h"

@interface ViewController ()

@property Basket *basket;
@property (weak, nonatomic) IBOutlet UITableView *basketTable;

@end

@implementation ViewController
{
    NSMutableArray *fruits;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    _basket = [appDelegate basket];
    
    BasketIterator *iterator = [_basket iterator];
    fruits = [[NSMutableArray alloc] init];
    while([iterator hasNext]){
        
        [fruits addObject:[iterator next]];
    }
    NSLog(@"<- did load");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [fruits count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [[fruits objectAtIndex:indexPath.row] getName];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSLog(@"%@", [[fruits objectAtIndex:indexPath.row] getName]);
    [self displayAlertMessage:[fruits objectAtIndex:indexPath.row] ];
}

- (void) displayAlertMessage: (Fruit*) fruit {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:[fruit getName] message:[fruit getInformationString] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
