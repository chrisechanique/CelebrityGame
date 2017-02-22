//
//  GameSession.m
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import "GameSession.h"
#import "CelebrityPile.h"
#import "Team.h"
#import "NSTimer+StartStop.h"

@interface GameSession()

@property (nonatomic, strong) NSMutableSet *celebrities;
@property (nonatomic, strong) NSArray *teams;
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSInteger secondsLeft;

@property (nonatomic, assign) NSInteger teamIndex;

@end

@implementation GameSession

- (instancetype)initWithPile:(CelebrityPile *)pile numberOfTeams:(NSUInteger)numberOfTeams {
    if (self = [super init]) {
        NSAssert(numberOfTeams > 0, @"Number of teams must be greater than zero");
        NSMutableArray *mutableTeams = [NSMutableArray new];
        for (int i = 0; i < numberOfTeams; ++i) {
            [mutableTeams addObject:[Team new]];
        }
        _teams = [NSArray arrayWithArray:mutableTeams];
        _teamIndex = -1;
        _currentRound = 0;
        _celebrityPile = pile;
        _celebrities = [_celebrityPile randomPile];
        _celebrity = [_celebrities anyObject];
    }
    return self;
}

- (Team *)currentTeam {
    if (_teamIndex >= _teams.count) return nil;
    return _teams[_teamIndex];
}

- (void)beginSprint {
    [self nextTeam];
    [self startTimer];
}

- (void)endSprint {
    [self resetTimer];
}

- (BOOL)nextRound {
    self.celebrities = [self.celebrityPile randomPile];
    ++self.currentRound;
    return self.currentRound >= GameRoundTypeCount;
}

- (void)nextTeam {
    self.teamIndex = (self.teamIndex + 1)%self.teams.count;
}

- (void)teamScored {
    if (self.celebrity) {
        [self.currentTeam addCelebrity:self.celebrity ForGameType:self.currentRound];
        [self.celebrities removeObject:self.celebrity];
        [self nextCelebrity];
    }
}

- (BOOL)nextCelebrity {
    self.celebrity = [self.celebrities anyObject];
    if (!self.celebrity) {
        if ([self.delegate respondsToSelector:@selector(didFinishRound)]) {
            [self.delegate didFinishRound];
        }
    }
    return self.celebrity !=nil;
}

- (void)actionTimerCountDown:(id)sender {
    --self.secondsLeft;
    if (self.secondsLeft < 0) {
        if ([self.delegate respondsToSelector:@selector(didFinishSprint)]) {
            [self.delegate didFinishSprint];
        }
        [self endSprint];
    }
    else {
        if ([self.delegate respondsToSelector:@selector(gameTimer:didFireWithSecondsLeft:)]) {
            [self.delegate gameTimer:self.timer didFireWithSecondsLeft:self.secondsLeft];
        }
    }
}

- (NSString *)currentCelebrityName {
    return self.celebrity.name;
}


#pragma mark - Timer Methods
- (void)pauseTimer {
    [self.timer pause];
}

- (void)resumeTimer {
    [self.timer resume];
}

- (void)resetTimer {
    [self.timer invalidate];
    self.timer = nil;
}

- (void)startTimer {
    self.secondsLeft = kSprintDuration;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(actionTimerCountDown:) userInfo:nil repeats:YES];
}

@end
