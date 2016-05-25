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

@interface ViewController() <UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createCategoriesArray];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)createCategoriesArray{
    _categories= [[NSArray alloc]initWithObjects:@"Coffee", @"Beer", nil];
    
    // Connect data
    _categoryDropDown.dataSource = self;
    self.categoryDropDown.delegate = self;
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
    return _categories[row];
}
//- (IBAction)searchButton:(UIButton *)sender {
//    [self performSegueWithIdentifier:@"categoryToSearchResults" sender:sender];
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"categoryToSearchResults"])
    {
        // Get reference to the destination view controller
        SearchResultsViewController *nextViewController = [segue destinationViewController];
        // Pass any objects to the view controller here, like...
        NSString *pickedCategory = [_categories objectAtIndex:[_categoryDropDown selectedRowInComponent:0]];
        
       [nextViewController setCategory:pickedCategory];
        
    }
}
@end
