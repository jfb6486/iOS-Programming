//
//  BNRItem.h
//  RandomItems
//
//  Created by Joel Bateman on 3/13/15.
//  Copyright (c) 2015 Alpha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

+ (instancetype)randomItem;

// Designated initializer for BNRItem
- (instancetype) initWithItemName:(NSString *)name
                   valueInDollars:(int)value
                     serialNumber:(NSString *)sNumber;

- (instancetype) initWithItemName:(NSString *)name;

// Changed multi-threading attribute to nonatomic from
// the atomic default setting.
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
@end
