//
//  Category.h
//  KornerstoneIO
//
//  Created by Sarmila on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Category : NSObject
@property(strong, nonatomic)NSString *categoryName;
@property(strong, nonatomic)NSArray *itemsInCategory;
@end