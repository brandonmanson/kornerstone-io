//
//  Category.m
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Category.h"

@implementation Category
- (id)initWithCategoryName:(NSString *)name itemsArray:(NSMutableArray *)itemsArray {
    self = [super init];
    if(self){
        _categoryName = name;
        _items = itemsArray;
    }
    return self;
}
+ (id)initWithCategoryName:(NSString *)name itemsArray:(NSMutableArray *)itemsArray{
    return [[self alloc]initWithCategoryName:name itemsArray:itemsArray];
    
}




@end
