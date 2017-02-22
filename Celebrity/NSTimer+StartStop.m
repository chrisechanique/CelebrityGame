//
//  NSTimer+StartStop.m
//  Celebrity
//
//  Created by Chris Echanique on 11/28/14.
//
//

#import "NSTimer+StartStop.h"

@implementation NSTimer (StartStop)

@dynamic pauseStart, previousFireDate;

- (void)pause {
    self.pauseStart = [NSDate date];
    self.previousFireDate = [self fireDate];
    [self setFireDate:[NSDate distantFuture]];
}

- (void)resume {
    float pauseTime = -1*[self.pauseStart timeIntervalSinceNow];
    [self setFireDate:[self.previousFireDate initWithTimeInterval:pauseTime sinceDate:self.previousFireDate]];
}

@end
