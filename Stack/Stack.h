//
//  Stack.h
//  Stack
//
//  Created by Randy McLain on 11/19/16.
//  Copyright © 2016 Randy McLain. All rights reserved.


#import <Foundation/Foundation.h>

@interface Stack : NSObject

@property (assign, nonatomic) long myCount;

-(void) push:(id)theObject;
-(id) pop;
-(void) clear;
-(id) lastObject; 
@end
