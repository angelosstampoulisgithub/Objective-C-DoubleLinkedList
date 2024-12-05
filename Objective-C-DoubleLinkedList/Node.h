//
//  Node.h
//  Objective-C-DoubleLinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject
@property (nonatomic, strong) id value;
@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) Node *prev;

- (instancetype)initWithValue:(id)value;
@end

NS_ASSUME_NONNULL_END
