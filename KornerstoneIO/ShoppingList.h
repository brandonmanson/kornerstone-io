//
//  ShoppingList.h
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoppingList : NSObject
@property(strong,nonatomic)NSString *listName;
@property(strong,nonatomic)NSMutableArray *list;
@end
