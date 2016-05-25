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

- (id)initWithListName:(NSString *)listName;
//                                      a1:(NSString *)possibleAnswer1
//                                      a2:(NSString *)possibleAnswer2
//                                      a3:(NSString *)possibleAnswer3
//                                      a4:(NSString *)possibleAnswer4
//                                  answer:(NSString *)answer;

+ (id)initWithListName:(NSString *)list;

//                                      a1:(NSString *)possibleAnswer1
//                                      a2:(NSString *)possibleAnswer2
//                                      a3:(NSString *)possibleAnswer3
//                                      a4:(NSString *)possibleAnswer4
//                                  answer:(NSString *)answer;

@end
