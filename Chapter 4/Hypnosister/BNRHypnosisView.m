//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Joel Bateman on 3/24/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self){
        // All BNRHyponsisViews start with a clear background
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The largest circle will circumscribe the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    
    for(float currentRadius=maxRadius;currentRadius>0;currentRadius-=20){
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];

        
        [path addArcWithCenter:center
                        radius:currentRadius
         // Note this is not the current radius!
                        startAngle:0.0
                        endAngle:M_PI*2.0
                        clockwise:YES];
    }
    
    // Configure the line width to 10 points
    path.lineWidth=10;
    
    // Configure the drawing color to light grey
    [[UIColor lightGrayColor] setStroke];
    
    // Draw the line!
    [path stroke];
}

@end
