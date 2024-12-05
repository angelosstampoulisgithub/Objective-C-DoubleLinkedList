//
//  ViewController.m
//  Objective-C-DoubleLinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeViewController];
}
-(void) initializeViewController{
    _array = [NSMutableArray array];
    [self createDoubleLinkedList];
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"cell"];
}
-(void) createDoubleLinkedList{
    _list = [[DoubleLinkedList alloc] init];
    [_list append:@1009];
    [_list append:@2000];
    [_list append:@3000];
    [_list append:@4000];
    [_list append:@5000];
    [_array addObjectsFromArray:[_list createArray]];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.row < _array.count) {
           NSString *cellText = [NSString stringWithFormat:@"%@",[_array objectAtIndex:indexPath.row]];
           [cell setText:cellText];
    }
    return cell;
}





@end