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
@property(strong, nonatomic) Category *selectedCategory;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

@property (strong, nonatomic) IBOutlet UITableView *categoryItemsTableView;

@end
