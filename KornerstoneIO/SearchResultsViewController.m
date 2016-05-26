//
//  SearchResultsViewController.m
//  KornerstoneIO
//
//  Created by DetroitLabs on 5/25/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "SearchResultsViewController.h"
#import <UIKit/UIKit.h>
#import "Category.h"
#import "Item.h"
#import "ShoppingList.h"


@interface SearchResultsViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation SearchResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    _categoryItemsTableView.dataSource = self;
//    _categoryItemsTableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Setting Up Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_selectedCategory.items count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _selectedCategory.categoryName;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"itemInCategory";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    Item *item = [_selectedCategory.items objectAtIndex:indexPath.row];
    cell.textLabel.text = item.name;
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
