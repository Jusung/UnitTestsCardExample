//
//  PlayingCardTestCase.m
//  UnitTestsCardExample
//
//  Created by Jusung Kye on 7/23/15.
//  Copyright (c) 2015 Jusung Kye. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PlayingCard.h"

@interface PlayingCardTestCase : XCTestCase

@end

@implementation PlayingCardTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTheValidSuits {
    NSArray *theSuits = [PlayingCard validSuits];
    NSUInteger howMany  = [theSuits count];
    XCTAssertEqual(howMany, 4, @"Should be only 4");
    XCTAssertTrue([theSuits containsObject:@"♥︎"], @"Must have a Heart");
    XCTAssertTrue([theSuits containsObject:@"♦︎"], @"Must have a Diamond");
    XCTAssertTrue([theSuits containsObject:@"♠︎"], @"Must have a Spade");
    XCTAssertTrue([theSuits containsObject:@"♣︎"], @"Must have a Club");
}

- (void)testSetSuitAnyValidAccepted {
    PlayingCard *card = [PlayingCard new];
    [card setSuit:@"♥︎"];
    XCTAssertEqualObjects(card.suit, @"♥︎", "Should be a Heart");
    [card setSuit:@"♦︎"];
    XCTAssertEqualObjects(card.suit, @"♦︎", "Should be a Diamond");
    [card setSuit:@"♠︎"];
    XCTAssertEqualObjects(card.suit, @"♠︎", "Should be a Spade");
    [card setSuit:@"♣︎"];
    XCTAssertEqualObjects(card.suit, @"♣︎", "Should be a Club");
}

- (void)testSetSuitInvalidRejected {
    PlayingCard *card = [PlayingCard new];
    [card setSuit:@"A"];
    XCTAssertEqualObjects(card.suit, @"?", "Should not have been recognized");
    XCTAssertNotEqualObjects(card.suit, @"A", "Shoud not have matched");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
