//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Onvolo iOS on 6/27/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//
#import "WowUtilsTests.h"

@implementation WowUtilsTests

// 1
-(void)testCharacterClassNameLookup {
    // 2
    XCTAssertEqualObjects(@"Warrior",
    [WoWUtils classFromCharacterType:1],
    @"ClassType should be Warrior");

//    STAssertEqualObjects(@"Warrior",
//                         [WoWUtils classFromCharacterType:1],
//                         @"ClassType should be Warrior");
    
    // 3
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], @"Should not be equal");
    
    
//    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
//                  nil);
    
    // 4
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], @"Should be equal");
    
//    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
//                 nil);
    // add the rest as an exercise
}
- (void)testRaceTypeLookup {
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"race should be human");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"race should be orc");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],@"Should not be equal");

//    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
//    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
//    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],nil);
    // add the rest as an exercise
}
- (void)testQualityLookup {
    XCTAssertEqual(@"Grey", [WoWUtils qualityFromQualityType:1], @"Should be equal");
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], @"Should not be equal");
//    STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
//    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],nil);
    // add the rest as an exercise
}

@end
