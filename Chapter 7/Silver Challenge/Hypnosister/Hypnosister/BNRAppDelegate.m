//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Joel Bateman on 3/23/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import "BNRAppDelegate.h"
#import "BNRHypnosisView.h"

// BNRAppDelegate set to conform to UIScrollViewDelegate protocol
@interface BNRAppDelegate () <UIScrollViewDelegate>

// Adding the property of HypnosisView
@property (nonatomic, strong) BNRHypnosisView *tempCos1;

@end


@implementation BNRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    // Create CGRets for frames
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    
    bigRect.size.width *= 2.0;
    bigRect.size.height *= 2.0;
    
    // Create a screen sized scroll view and add it to the window
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [self.window addSubview:scrollView];

    // Changed as suggested in the book
    self.tempCos1 = [[BNRHypnosisView alloc] initWithFrame:bigRect];
    [scrollView addSubview:self.tempCos1];

    // Tell the scrollView how big is the content size is, so it's possible to scroll the view
    scrollView.contentSize = bigRect.size;
    
    // // Create a screen-sized hypnosis view and add it to the scroll view
    // BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    // [scrollView addSubview:hypnosisView];
    
    // // Add a second screen-sized hypnosis view just off screen to the right
    // screenRect.origin.x += screenRect.size.width;
    // BNRHypnosisView *anotherView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    // [scrollView addSubview:anotherView];
    
    // Tell the scrollView how big its content area is
    scrollView.contentSize = bigRect.size;

    // SILVER CHALLENGE: Method implemented and inherited from the protocol
    scrollView.minimumZoomScale = 1;
    scrollView.maximumZoomScale = 5;

    // Making a delegate
    scrollView.delegate = self;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

// SILVER CHALLENGE: Method implemented and inherited from the protocol
-(UIView *)wiewFromZoomingInScrollView:(UIScrollView *)zo {

    // Command line test
    NSLog(@"viewForZoomingInScrollView works!");
    return self.tempCos1;
}

// SILVER CHALLENGE: It works without this method, but the documentation suggested to add this one too 
-(void)scrollViewDidEndZooming: (UIScrollView *)scrollView withView: (UIView *)view atScale:(CGFloat)scale {

    NSLog(@"end it");
}

// - (void)applicationWillResignActive:(UIApplication *)application {
//     // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
//     // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
// }

// - (void)applicationDidEnterBackground:(UIApplication *)application {
//     // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
//     // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
// }

// - (void)applicationWillEnterForeground:(UIApplication *)application {
//     // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
// }

// - (void)applicationDidBecomeActive:(UIApplication *)application {
//     // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
// }

// - (void)applicationWillTerminate:(UIApplication *)application {
//     // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
// }

@end
