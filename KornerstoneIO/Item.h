//
//  Item.h
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
@property(strong, nonatomic)NSString *name;
@property(strong, nonatomic)NSNumber *price;
@property(strong, nonatomic)NSString *itemDescription;

- (id)initWithItemName:(NSString *)name
                 price:(NSNumber *)price
       itemDescription:(NSString *)itemDescription;

+ (id)initWithItemName:(NSString *)name
                 price:(NSNumber *)price
       itemDescription:(NSString *)itemDescription;


@end
