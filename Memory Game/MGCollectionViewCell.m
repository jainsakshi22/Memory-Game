//
//  MGCollectionViewCell.m
//  Memory Game
//
//  Created by LetsGoMo Labs on 3/31/15.
//  Copyright (c) 2015 LetsGoMo Labs. All rights reserved.
//

#import "MGCollectionViewCell.h"
#define IMAGEVIEW_BORDER_LENGTH 5

@implementation MGCollectionViewCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setup];
    }
    return self;
}

-(void)setup
{
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0+IMAGEVIEW_BORDER_LENGTH, 0+IMAGEVIEW_BORDER_LENGTH, 100-(2*IMAGEVIEW_BORDER_LENGTH),100-(2*IMAGEVIEW_BORDER_LENGTH))];
    // CGRectInset(self.bounds, IMAGEVIEW_BORDER_LENGTH, IMAGEVIEW_BORDER_LENGTH)];
    [self.contentView addSubview:self.imageView];
}



@end
