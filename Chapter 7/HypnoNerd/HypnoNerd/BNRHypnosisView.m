//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Joel Bateman on 3/24/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self){
        // All BNRHyponsisViews start with a clear background
        self.backgroundColor = [UIColor clearColor];
        
        self.circleColor = [UIColor lightGrayColor];
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
    [self.circleColor setStroke];
    
    // Draw the line!
    [path stroke];
}

// When a finger touches the screen
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    
    // Get three random numbers between 0 and 1
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red

                                           green:green
                            
                                            blue:blue
                            
                                           alpha:1.0];
    
    self.circleColor = randomColor;
}

//  Accessor to send setNeedsDisplay to the view whenever property is changed
- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor=circleColor;
    [self setNeedsDisplay];
}

@end
