//
//  Category.m
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Category.h"

@implementation Category
- (id)initWithCategoryName:(NSString *)name{
    self = [super init];
    if(self){
        _categoryName = name;
    }
    return self;
}
+ (id)initWithCategoryName:(NSString *)name{
    return [[self alloc]initWithCategoryName:name];
    
}




@end
