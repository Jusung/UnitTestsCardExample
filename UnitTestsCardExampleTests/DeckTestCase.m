//
//  DeckTestCase.m
//  UnitTestsCardExample
//
//  Created by Jusung Kye on 7/23/15.
//  Copyright (c) 2015 Jusung Kye. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Deck.h"

@interface DeckTestCase : XCTestCase

@end

@implementation DeckTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDrawCardFromEmptyDeckAnswersNoCard {
    Deck *deck = [Deck new];
    Card *drawnCard = [deck drawRandomCard];
    XCTAssertNil(drawnCard, @"Shoud not crash just answer a nil object");
}

- (void)testOneCardDeckShouldAnswerThatCard {
    Deck *deck = [Deck new];
    Card *card = [Card new];
    card.contents = @"test";
    [deck addCard:card];
    Card *drawnCard = [deck drawRandomCard];
    XCTAssertEqualObjects(card, drawnCard, @"Should have drawn the same card we added");
}

- (void)testDrawnRandomCardsAreDifferent {
    Deck *deck = [Deck new];
    Card *card1 = [Card new];
    card1.contents = @"one";
    Card *card2 = [Card new];
    card2.contents = @"two";
    [deck addCard:card1];
    [deck addCard:card2];
    Card *drawnCard1 = [deck drawRandomCard];
    Card *drawnCard2 = [deck drawRandomCard];
    XCTAssertNotNil(drawnCard1, @"Should have found a card");
    XCTAssertNotNil(drawnCard2, @"Other card should have been found too");
    XCTAssertNotEqualObjects(drawnCard1, drawnCard2, @"The cards must be different");
}

- (void)testDeckWithMultipleCardsWillRandomlyDrawThemAll {
    Deck *deck = [Deck new];
    int numberOfCards = 16;
    Card *card;
    for (int index = 0; index < numberOfCards; index++) {
        card = [Card new];
        card.contents = [NSString stringWithFormat:@"%d",index];
        [deck addCard:card];
    }
    Card *randomlyDrawnCard;
    for (int index = 0; index < numberOfCards; index++) {
        randomlyDrawnCard = [deck drawRandomCard];
        XCTAssertNotNil(randomlyDrawnCard, @"Should have a found card.");
    }
    randomlyDrawnCard = [deck drawRandomCard];
    XCTAssertNil(randomlyDrawnCard, @"No more cards left.");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
