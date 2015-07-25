//
//  Card.m
//  myCalculator
//
//  Created by Jusung Kye on 7/23/15.
//  Copyright (c) 2015 Jusung Kye. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match:(NSArray *)otherCards{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
