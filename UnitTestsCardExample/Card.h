//
//  Card.h
//  myCalculator
//
//  Created by Jusung Kye on 7/23/15.
//  Copyright (c) 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;
@end
