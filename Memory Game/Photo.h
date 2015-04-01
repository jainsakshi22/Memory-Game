//
//  Photo.h
//  Memory Game
//
//  Created by LetsGoMo Labs on 4/1/15.
//  Copyright (c) 2015 LetsGoMo Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property(nonatomic,strong) UIImage *thumbnail;
@property(nonatomic,strong) UIImage *largeImage;

// Lookup info
@property(nonatomic) long long photoID;


@end
