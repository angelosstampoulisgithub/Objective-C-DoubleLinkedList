//
//  DoubleLinkedList.h
//  Objective-C-DoubleLinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import <Foundation/Foundation.h>
#import "Node.h"
NS_ASSUME_NONNULL_BEGIN

@interface DoubleLinkedList : NSObject
@property (nonatomic, strong) Node *head;
@property (nonatomic, strong) Node *tail;

- (BOOL)isEmpty;
- (void)append:(id)value;
- (void)printList;
-(NSArray*) createArray;
@end

NS_ASSUME_NONNULL_END
