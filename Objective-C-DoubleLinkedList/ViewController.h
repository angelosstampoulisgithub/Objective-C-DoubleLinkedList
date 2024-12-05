//
//  ViewController.h
//  Objective-C-DoubleLinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import <UIKit/UIKit.h>
#import "DoubleLinkedList.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property DoubleLinkedList *list;
@property NSMutableArray *array;
@end

