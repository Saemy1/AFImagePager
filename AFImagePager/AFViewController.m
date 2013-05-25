//
//  AFViewController.m
//  AFImagePager
//
//  Created by Marcus Kida on 07.04.13. Supoprt for AFNetworking added by Gaurav Verma
//  Copyright (c) 2013 Marcus Kida. All rights reserved.
//

#import "AFViewController.h"
#import "AFElement.h"

@interface AFViewController () <AFImagePagerDelegate, AFImagePagerDataSource>
{
    IBOutlet AFImagePager *_imagePager;
}
@end

@implementation AFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    _imagePager.pageControl.currentPageIndicatorTintColor = [UIColor lightGrayColor];
    _imagePager.pageControl.pageIndicatorTintColor = [UIColor blackColor];
}

#pragma mark - AFImagePager DataSource
- (NSArray *) arrayWithAFElements
{
    
    AFElement * element1 = [[AFElement alloc] initWithText:@"Test 1" imageUrl:@"https://raw.github.com/kimar/tapebooth/master/Screenshots/Screen1.png"];
    AFElement * element2 = [[AFElement alloc] initWithText:@"Test 2" imageUrl:@"https://raw.github.com/kimar/tapebooth/master/Screenshots/Screen2.png"];
    AFElement * element3 = [[AFElement alloc] initWithText:@"Test 3" imageUrl:@"https://raw.github.com/kimar/tapebooth/master/Screenshots/Screen3.png"];
    
    return [NSArray arrayWithObjects:
           element1, element2, element3,
            nil];
}

- (UIViewContentMode) contentModeForImage:(NSUInteger)image
{
    return UIViewContentModeScaleAspectFill;
}

@end
