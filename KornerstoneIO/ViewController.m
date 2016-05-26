//
//  ViewController.m
//  KornerstoneIO
//
//  Created by DetroitLabs on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "SearchResultsViewController.h"
#import "Category.h"
#import "Item.h"

@interface ViewController() <UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createCategoriesArray];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)createCategoriesArray{
    NSArray *itemsArray = [self createItems];
    NSMutableArray *coffeeArray = [[NSMutableArray alloc]initWithObjects:itemsArray[0], nil];
    NSMutableArray *beerArray = [[NSMutableArray alloc]initWithObjects:itemsArray[1], nil];
    NSMutableArray *wineArray = [[NSMutableArray alloc]initWithObjects:itemsArray[2], nil];
    
    Category *coffee = [[Category alloc]initWithCategoryName:@"Coffee" itemsArray:coffeeArray];
    Category *beer = [[Category alloc]initWithCategoryName:@"Beer" itemsArray:beerArray];
    Category *wine = [[Category alloc]initWithCategoryName:@"Wine" itemsArray:wineArray];
    
    _categories= [[NSArray alloc]initWithObjects:coffee, beer, wine, nil];
}

- (NSArray*)createItems {
    Item *coffeeItemOne = [[Item alloc]initWithItemName:@"Maxwell House" price:[NSNumber numberWithFloat:2.99] itemDescription:@"12 oz. bag of ground Maxwell House coffee for when you literally can't even anymore."];
    Item *beerItem = [[Item alloc]initWithItemName:@"Bell's Oberon" price:[NSNumber numberWithFloat:9.99] itemDescription:@"Refreshing wheat ale perfect for warm summer days. Best enjoyed outdoors with friends."];
    Item *wineItem = [[Item alloc]initWithItemName:@"Leelenau Cellars Pinot Grigio" price:[NSNumber numberWithFloat:20.00] itemDescription:@"Delightful Michigan-made wine from the famous Leelenau Peninsula"];
    NSArray *items = [[NSArray alloc]initWithObjects:coffeeItemOne, beerItem, wineItem, nil];
    return items;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _categories.count;
}


// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    Category *category = [_categories objectAtIndex:row];
    return category.categoryName;

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"categoryToSearchResults"])
    {
        // Get reference to the destination view controller
        SearchResultsViewController *nextViewController = [segue destinationViewController];
        // Pass any objects to the view controller here, like...
        Category *pickedCategory = [_categories objectAtIndex:[_categoryDropDown selectedRowInComponent:0]];
        NSLog(@"pickedCategory is %@", pickedCategory);
        
       nextViewController.selectedCategory = pickedCategory;
    }
}
@end
