//
//  Stack.m
//  Stack
//
//  Created by Randy McLain on 11/19/16.
//  Copyright © 2016 Randy McLain. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (strong, nonatomic) NSMutableArray *myData; 

@end


@implementation Stack


-(instancetype) init {
  if (self == nil) {
  self = [super init];
  }
  
  [self setMyCount:0];
  [self setMyData:[[NSMutableArray alloc] init]];
  
  return self; 
}

-(void) push:(id)theObject {
  
  [self.myData addObject:theObject];
  self.myCount++; 
  
}

-(id) pop {
  id obj = nil;
  
  if (self.myCount > 0) {
    obj = [self.myData lastObject];
    [self.myData removeLastObject];
    self.myCount --;
  }
  return obj;
}


-(id) lastObject {
  id obj = nil;
  
  if (self.myCount > 0) {
    obj = [self.myData lastObject];
  }
  return obj;
}

-(void) clear {
  
  [self.myData removeAllObjects];
  [self setMyCount:0];
}

@end
