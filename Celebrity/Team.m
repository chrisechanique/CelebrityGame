//
//  Team.m
//  Celebrity
//
//  Created by Chris Echanique on 11/28/14.
//
//

#import "Team.h"

@implementation Team

- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithTeamName:(NSString *)name {
    if (self = [self init]) {
        _teamName = name;
    }
    return self;
}

- (void)setup {
    _celebrityPileDictionary = [NSMutableDictionary new];
    for (NSUInteger i = 0; i < GameRoundTypeCount; ++i) {
        [_celebrityPileDictionary setObject:[NSMutableArray new] forKey:@(i)];
    }
}

- (void)addCelebrity:(Celebrity *)celebrity ForGameType:(GameRoundType)type {
    [[self.celebrityPileDictionary objectForKey:@(type)] addObject:celebrity];
}

- (NSUInteger)scoreForGameType:(GameRoundType)type {
    NSArray *celebrityPile = [self.celebrityPileDictionary objectForKey:@(type)];
    return [celebrityPile count];
}

@end