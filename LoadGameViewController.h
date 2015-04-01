//
//  LoadGameViewController.h
//  Memory Game
//
//  Created by LetsGoMo Labs on 3/31/15.
//  Copyright (c) 2015 LetsGoMo Labs. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface LoadGameViewController : ViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>


@property (strong,nonatomic) NSMutableDictionary *photosCollection;

@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;
- (IBAction)exitButtonPressed:(UIBarButtonItem *)sender;


@end
