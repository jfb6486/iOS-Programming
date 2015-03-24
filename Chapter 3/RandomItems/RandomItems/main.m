//
//  main.m
//  RandomItems
//
//  Created by Joel Bateman on 3/12/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // Create a mutable array object
        // store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc]init];
        

        BNRItem *backpack = [[BNRItem alloc]initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc]initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack=nil;
        calculator=nil;
        
        for(BNRItem *item in items){
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting the items to nil...");
        
        // Destroy the mutable array object
        items = nil;
    }
    
    // Exit stage right!
    return 0;
}
