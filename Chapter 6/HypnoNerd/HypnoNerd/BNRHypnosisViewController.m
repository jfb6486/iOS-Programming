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

@end
