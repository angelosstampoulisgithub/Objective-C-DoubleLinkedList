//
//  Node.m
//  Objective-C-DoubleLinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import "Node.h"

@implementation Node
- (instancetype)initWithValue:(id)value {
    self = [super init];
    if (self) {
        _value = value;
        _next = nil;
        _prev = nil;
    }
    return self;
}

@end
