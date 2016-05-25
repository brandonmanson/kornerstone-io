//
//  ShoppingList.m
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ShoppingList.h"

@implementation ShoppingList

-(id)initWithListName:(NSString *)listName {
    self = [super init];
    if (self) {
        _listName = listName;
        
    }
    return self;
}

+(id)initWithListName:(NSString *)listName {
    return [[self alloc] initWithListName: listName];
}

@end
