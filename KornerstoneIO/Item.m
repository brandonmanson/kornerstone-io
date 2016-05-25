//
//  Item.m
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Item.h"

@implementation Item

- (id)initWithItemName:(NSString *)name
                 price:(NSNumber *)price
       itemDescription:(NSString *)itemDescription {
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
        _itemDescription = itemDescription;
    }
    return self;
}

+ (id)initWithItemName:(NSString *)name
                 price:(NSNumber *)price
       itemDescription:(NSString *)itemDescription {
    return [[self alloc]initWithItemName:name price:price itemDescription:itemDescription];
}

@end
