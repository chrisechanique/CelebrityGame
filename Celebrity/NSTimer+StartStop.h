//
//  NSTimer+StartStop.h
//  Celebrity
//
//  Created by Chris Echanique on 11/28/14.
//
//

#import <Foundation/Foundation.h>

@interface NSTimer (StartStop)

@property (nonatomic, strong) NSDate *pauseStart, *previousFireDate;

- (void)pause;
- (void)resume;

@end
