//
//  Deck.h
//  myCalculator
//
//  Created by Jusung Kye on 7/23/15.
//  Copyright (c) 2015 Jusung Kye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
