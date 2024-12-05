//
//  DoubleLinkedList.m
//  Objective-C-DoubleLinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import "DoubleLinkedList.h"
@implementation DoubleLinkedList
- (BOOL)isEmpty {
    return self.head == nil;
}

- (void)appendRecord:(id)value {
    Node *newNode = [[Node alloc] initWithValue:value];
    if (self.head == nil) {
        self.head = newNode;
        self.tail = newNode;
    } else {
        newNode.prev = self.tail;
        self.tail.next = newNode;
        self.tail = newNode;
    }
}
-(void) deleteRecord{
        if (self.head == NULL) {
           return;
       }
     
       if (self.head == self.tail) {
           self.head = NULL;
           self.tail = NULL;
           return;
       }
     
       Node *temp = self.head;
       self.head = self.head.next;
       self.head.prev = NULL;
       temp.next = NULL;
}
-(NSArray*) createArray{
    NSMutableArray *array = [NSMutableArray array];
    Node *current = self.head;
    while (current != nil) {
        [array addObject:[current value]];
        current = current.next;
    }
    return array;
}
- (void)printList {
    Node *current = self.head;
    while (current != nil) {
        printf("%s <-> ", [[current.value description] UTF8String]);
        current = current.next;
    }
    printf("nil\n");
}

@end
