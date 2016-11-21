//
//  StackTests.m
//  StackTests
//
//  Created by Randy McLain on 11/19/16.
//  Copyright © 2016 Randy McLain. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"

@interface StackTests : XCTestCase
@property (strong, nonatomic) Stack *myTestStack;
@end

@implementation StackTests

- (void)setUp {
    [super setUp];
  self.myTestStack = [[Stack alloc] init];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  self.myTestStack = nil;
    [super tearDown];
}


-(void) testStackInit_ShouldNotBeNil {
  
  Stack *testStack = [[Stack alloc] init];
  
  XCTAssertNotNil(testStack);
  
}

-(void) testStackPush_AddObjectToData_ShouldBeGreater {
  NSArray * testObject = [[NSArray alloc] init];
  NSLog(@"The count before push is :%lu", self.myTestStack.myCount);
  [self.myTestStack push:testObject];
    NSLog(@"The count after push is :%lu", self.myTestStack.myCount);
  XCTAssertGreaterThan(self.myTestStack.myCount, 0);
  
}

-(void) testStackPop_RemoveObject_ShouldBeTrue {
  
  NSString * testString = @"Test";
  NSString * testString2 = @"Another Test";
  [self.myTestStack push:testString];
  [self.myTestStack push:testString2];
  XCTAssertEqual(self.myTestStack.myCount, 2);
  
  [self.myTestStack pop];
 NSString * resultString = [self.myTestStack lastObject];
  
  XCTAssertTrue([testString isEqualToString:resultString]);

}

-(void) testStackClear_ShouldBeZero {
  NSString * testString = @"Test";
  NSString * testString2 = @"Another Test";
  [self.myTestStack push:testString];
  [self.myTestStack push:testString2];
  
  [self.myTestStack clear];
    XCTAssertEqual(self.myTestStack.myCount, 0);
  id remainingObject = [self.myTestStack lastObject];
  XCTAssertNil(remainingObject);
  
}

@end
