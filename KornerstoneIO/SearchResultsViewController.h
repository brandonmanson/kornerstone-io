//
//  SearchResultsViewController.h
//  KornerstoneIO
//
//  Created by DetroitLabs on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Category.h"

@interface SearchResultsViewController : UIViewController
@property(strong, nonatomic) NSString *selectedCategory;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

-(void)setCategory:(Category *)category;


@end
