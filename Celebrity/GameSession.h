//
//  GameSession.h
//  Celebrity
//
//  Created by Christopher Echanique on 11/24/14.
//
//

#import <Foundation/Foundation.h>

#define kSprintDuration     60

@class CelebrityPile, Celebrity, Team;

typedef NS_ENUM(NSUInteger, GameRoundType) {
    GameRoundTypeExplanation = 0,
    GameRoundTypeActing,
    GameRoundTypeOneWord,
    GameRoundTypeCount
};

@protocol GameSessionDelegate <NSObject>

- (void)gameTimer:(NSTimer *)timer didFireWithSecondsLeft:(NSUInteger)secondsLeft;
- (void)didFinishSprint;
- (void)didFinishRound;

@end

@interface GameSession : NSObject

@property (nonatomic, strong) CelebrityPile *celebrityPile;
@property (nonatomic, weak) id <GameSessionDelegate> delegate;
@property (nonatomic, strong, readonly) Team *currentTeam;
@property (nonatomic, assign) GameRoundType currentRound;
@property (nonatomic, strong) Celebrity *celebrity;

- (instancetype)initWithPile:(CelebrityPile *)pile numberOfTeams:(NSUInteger)numberOfTeams;
- (void)beginSprint;
- (void)endSprint;
- (BOOL)nextRound;
- (BOOL)nextCelebrity;
- (NSString *)currentCelebrityName;

- (void)teamScored;
- (void)pauseTimer;
- (void)resumeTimer;

@end
