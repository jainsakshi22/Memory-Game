//
//  ViewController.m
//  Memory Game
//
//  Created by LetsGoMo Labs on 3/31/15.
//  Copyright (c) 2015 LetsGoMo Labs. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"toPhotosCollectionViewController" sender:self];
}
@end
