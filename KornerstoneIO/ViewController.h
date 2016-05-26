//
//  ViewController.h
//  KornerstoneIO
//
//  Created by DetroitLabs on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) NSArray *categories;
@property (weak, nonatomic) IBOutlet UIPickerView *categoryDropDown;

-(void)createCategoriesArray;
- (NSArray *)createItems;

@end

