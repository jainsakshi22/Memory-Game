//
//  LoadGameViewController.m
//  Memory Game
//
//  Created by LetsGoMo Labs on 3/31/15.
//  Copyright (c) 2015 LetsGoMo Labs. All rights reserved.
//

#import "LoadGameViewController.h"
#import "MGCollectionViewCell.h"

@interface LoadGameViewController ()
{
    NSMutableArray *myObject;
    // A dictionary object
    NSDictionary *dictionary;
    // Define keys
    NSString *imagePath;
}
@end

@implementation LoadGameViewController

static NSString * const reuseIdentifier = @"Photo Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.collectionView registerClass:[MGCollectionViewCell class] forCellWithReuseIdentifier:@"Photo Cell"];    

    imagePath = @"image_path";
    
    myObject = [[NSMutableArray alloc] init];
    
    NSData *jsonSource = [NSData dataWithContentsOfURL:
                          [NSURL URLWithString:@"http://shopclues.com/api/v3/category?key=d12121c70dda5edfgd1df6633fdb36c0"]];
    
    id jsonObjects = [NSJSONSerialization JSONObjectWithData:
                      jsonSource options:NSJSONReadingMutableContainers error:nil];
    
    for (NSDictionary *dataDict in jsonObjects) {
        NSString *image_data = [dataDict objectForKey:@"image_path"];
        

        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                      image_data,imagePath,
                      nil];
        [myObject addObject:dictionary];
}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource delegate methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MGCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    //cell.imageView.image = [UIImage imageNamed:@"memory.jpg"];
    
     NSDictionary *tmpDict = [myObject objectAtIndex:indexPath.row];
    
    NSURL *url = [NSURL URLWithString:[tmpDict objectForKey:imagePath]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc]initWithData:data];

    cell.imageView.image = img;

    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)exitButtonPressed:(UIBarButtonItem *)sender
{
    NSLog(@"exit pressed");
}
@end
