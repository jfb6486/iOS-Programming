//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Joel Bateman on 4/6/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView
{
    // Create a view
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    // Set it as the view of this controller
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        
        // Set the tabs bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        // Create a UI image from a file
        // This will use Hypno@2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        // Put that image on the tab bar item
        self.tabBarItem.image = i;
    }
    
    return self;
}

- (void)viewDidLoad
{
    // Always call the super implementation of view did load
    [super viewDidLoad];
    
    NSLog(@"BNRHypnosisViewController loaded its view");
}

@end
