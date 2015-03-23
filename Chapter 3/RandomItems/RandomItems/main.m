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
        
        // Send the message addObject: to the NSMutableArray
        // pointed to by the by the variable items, passing
        // a string each time
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex, to that
        // same array object
//        [items insertObject:@"Zero" atIndex:0];
        
        /*
        // FOR LOOP APPROACH
        for(int i=0;i<[items count];i++){
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@", item);
        }*/
        
        // FAST ENUMERATION APPROACH
        // For every item in the items array
//        for(NSString *item in items){
//            // Log the description of the item
//            NSLog(@"%@", item);
//        }
        
//        BNRItem *item = [[BNRItem alloc]init];
        
        // This creates an NSString, "Red Sofa" and gives it to BNRItem
//        [item setItemName:@"Red Sofa"];
        // Changed to Dot Syntax
//        item.itemName=@"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to BNRItem
//        [item setSerialNumber:@"A1B2C"];
       
        // Changed to Dot Syntax
//        item.serialNumber=@"A1B2C";
        
        // This sends the value of 100 to be used at the valueInDollars
        // of this BNRItem
//        [item setValueInDollars:100];
        
        // Changed to Dot Syntax
//        item.valueInDollars=100;
        
//        BNRItem *item = [[BNRItem alloc]
//                         initWithItemName:@"Red Sofa"
//                         valueInDollars:100
//                         serialNumber:@"A1B2C"];
        
//        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
//              [item serialNumber], [item valueInDollars]);
       
        // Changed to Dot Syntax
//        NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber
//              , item.valueInDollars);
        
        // The %@ token is replaced with the result of sending the description method
        // to the corresponding argument
//        NSLog(@"%@", item);
//        
//        BNRItem *itemWithName = [[BNRItem alloc]
//                                 initWithItemName:@"Blue Sofa"];
//       
//        NSLog(@"%@", itemWithName);
//        
//        BNRItem *itemWithNoName = [[BNRItem alloc]init];
//        NSLog(@"%@", itemWithNoName);

        for(int i = 0; i < 10; i++){
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        // Runtime exception code example
//        id lastObj = [items lastObject];
//        // lastObj is an instance of BNRItem and will not understand the
//        // count message
//        [lastObj count];
        
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
